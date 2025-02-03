import React, { useState, useEffect, useCallback } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { jwtDecode } from "jwt-decode";
import "./UserStyles/Login.css";

const Login = ({ setUser }) => {
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  });
  const [message, setMessage] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [setHistorys] = useState([]);

  // 입력값 변경 처리
  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  // 로그인 처리
  const handleSubmit = async (e) => {    
    e.preventDefault();
    setMessage("");
    
    // 유효성 검사
    if (!formData.username.trim() || !formData.password.trim()) {
      setMessage("아이디와 비밀번호를 입력해 주세요.");
      return;
    }
    
    try {
      setIsLoading(true); // 로딩 상태 시작
       
      // 서버에 로그인 요청
      const response = await axios.post("/user/login", formData, {
        headers: { "Content-Type": "application/json" },
      });
      
      console.log("응답 데이터:", response.data);

      // 토큰 저장
      const accesstoken = response.data.accesstoken || response.data.accessToken;
      const refreshtoken = response.data.refreshtoken || response.data.refreshToken;
      
      console.log("accessToken:", accesstoken);
      console.log("refreshToken:", refreshtoken);

      if (!accesstoken || !refreshtoken) {
        console.error("🚨 토큰이 응답에서 누락됨!");
        setMessage("로그인 중 오류가 발생했습니다.");
        return;
      }

      // 액세스 토큰과 리프레시 토큰 각각 디코딩
      const decodedAccessToken = jwtDecode(accesstoken);
      const decodedRefreshToken = jwtDecode(refreshtoken);

      console.log("디코딩된 액세스 토큰:", decodedAccessToken);
      console.log("디코딩된 리프레시 토큰:", decodedRefreshToken);

      // 액세스 토큰에서 사용자 정보 추출
      const { username, userType, role, exp } = decodedAccessToken;

      // 리프레시 토큰에서도 동일한 정보 확인
      const refreshUsername = decodedRefreshToken.username;
      const refreshUserType = decodedRefreshToken.userType;

      // 액세스 토큰과 리프레시 토큰 정보가 일치하는지 확인
      if (username !== refreshUsername || userType !== refreshUserType) {
        setMessage("로그인 실패: 액세스 토큰과 리프레시 토큰 불일치.");
        return;
      }

      // 로컬 스토리지에 토큰 저장
      localStorage.setItem("accessToken", accesstoken); // Access Token 저장
      localStorage.setItem("refreshToken", refreshtoken); // Refresh Token 저장
      localStorage.setItem("username", username);
      localStorage.setItem("role", role);
      localStorage.setItem("userType", userType);
      localStorage.setItem("tokenExpiry", exp * 1000); // 만료 시간 저장

      sessionStorage.removeItem("translationHistory");

      setUser({ username, userType, tokenExpiry: exp * 1000 }); // 사용자 정보 업데이트
      alert(`Access Token 생성됨: ${accesstoken}`);
      alert(`Refresh Token 생성됨: ${refreshtoken}`);
      setMessage("로그인에 성공했습니다!");
      setTimeout(() => navigate("/"), 2000); // 메인 페이지로 이동
    } catch (error) {
      setMessage(error.response?.data || "로그인 중 오류가 발생했습니다.");
      console.error("🚨 서버 응답:", error.response?.data);
      console.error("🚨 로그인 오류:", error);
    } finally {
      setIsLoading(false);
    }
  };

  // 토큰 갱신 함수 (리프레시 토큰을 사용하여 새 어쎄쓰토큰 갱신)
  const refreshAccessToken = useCallback (async () => {
    try {
      const refreshToken = localStorage.getItem("refreshToken");

      if (!refreshToken) {
        alert("로그인이 만료되었습니다. 다시 로그인해주세요.");
        localStorage.clear();
        navigate("/User/Login");
        return;
      }

      const response = await axios.post("/user/refresh", {
        refreshToken: `Bearer ${refreshToken}`,
      });

      console.log("🔍 토큰 갱신 응답 데이터:", response.data);

      const newAccessToken = response.data.accesstoken || response.data.accessToken;

      if (!newAccessToken) {
        console.error("🚨 서버에서 새로운 액세스 토큰을 받지 못했습니다.");
        alert("토큰 갱신 실패. 다시 로그인해주세요.");
        localStorage.clear();
        navigate("/User/Login");
        return;
      }

      console.log("새로운 Access Token:", newAccessToken);

      // 새 액세스 토큰 저장
      localStorage.setItem("accessToken", newAccessToken);
      localStorage.setItem("tokenExpiry", jwtDecode(newAccessToken).exp * 1000); // 만료 시간 갱신

      alert("세션이 연장되었습니다."); // 연장 성공 알림
      
    } catch (error) {
      alert("토큰 갱신 실패. 다시 로그인해주세요.");
      localStorage.clear();
      navigate("/User/Login");
    }
  }, [navigate]);

  // 10초마다 토큰 만료 체크 및 "로그인 연장" 알림 처리
  useEffect(() => {
    const interval = setInterval(() => {
      const tokenExpiry = localStorage.getItem("tokenExpiry");
      const refreshToken = localStorage.getItem("refreshToken");

      console.log("현재 시간:", Date.now());
      console.log("저장된 tokenExpiry:", tokenExpiry);

      if (!tokenExpiry || !refreshToken) {
        console.log("토큰이 존재하지 않음, 다시 로그인 필요");
        return;
      }

      if (Date.now() > Number(tokenExpiry)) { // 🔥 tokenExpiry가 문자열이라 숫자로 변환 필요
        console.log("액세스 토큰 만료됨! 로그인 연장 여부 확인");
        // 액세스 토큰이 만료된 경우 로그인 연장 여부 확인
        const extendSession = window.confirm("로그인 연장하시겠습니까?");
        if (extendSession) {
          refreshAccessToken();
        } else {
          localStorage.clear();
          navigate("/User/Login");
        }
      }
    }, 10000); // 🔥 10초마다 실행

    return () => clearInterval(interval); // 컴포넌트 언마운트 시 정리
  }, [navigate, refreshAccessToken]);

  // 회원가입 페이지 이동
  const handleSignUp = () => {
    navigate("/User/SignUp");
  };

  return (
    <div className="login-container">
      <form onSubmit={handleSubmit} className="login-form">
        <h2 className="login-title">로그인</h2>

        <div className="input-group">
          <label htmlFor="username">아이디</label>
          <input
            type="text"
            name="username"
            value={formData.username}
            onChange={handleChange}
            required
          />
        </div>

        <div className="input-group">
          <label htmlFor="password">비밀번호</label>
          <input
            type="password"
            name="password"
            value={formData.password}
            onChange={handleChange}
            required
          />
        </div>

        {message && (
          <p className={`message ${message.includes("성공") ? "success-message" : ""}`}> 
          {message} 
          </p> 
        )}
        <button type="submit" className="login-button" disabled={isLoading}>
          {isLoading ? "로딩중..." : "로그인"}
        </button>
        <button type="button" onClick={handleSignUp} className="signup-button"> 회원가입 </button>
      </form>
    </div>
  );
};

export default Login;