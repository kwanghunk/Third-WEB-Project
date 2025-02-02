import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import { jwtDecode } from "jwt-decode";

const Login = ({ setUser }) => {
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  });
  const [message, setMessage] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [hisotorys, setHistorys] = useState([]);

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
        headers: {
          "Content-Type": "application/json",
        },
      });

      console.log("응답 데이터:", response.data);

      // 토큰 저장
      const { accesstoken, refreshtoken } = response.data || {};
      
      console.log("accessToken:", accesstoken);
      console.log("refreshToken:", refreshtoken);

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

      localStorage.setItem("accessToken", accesstoken); // Access Token 저장
      localStorage.setItem("refreshToken", refreshtoken); // Refresh Token 저장
      localStorage.setItem("username", username);
      localStorage.setItem("role", role);
      localStorage.setItem("userType", userType);
      localStorage.setItem("tokenExpiry", exp * 1000); // 만료 시간 저장

      sessionStorage.removeItem("translationHistory");

      setUser({ username, userType }); // 사용자 정보 업데이트

      // 임시 토큰 확인
      setHistorys([]);
      alert(`Access Token 생성됨: ${accesstoken}`);
      alert(`Refresh Token 생성됨: ${refreshtoken}`);
      setMessage("로그인에 성공했습니다!");
      setTimeout(() => navigate("/"), 2000); // 메인 페이지로 이동
    } catch (error) {
      setMessage(error.response?.data || "로그인 중 오류가 발생했습니다.");
    } finally {
      setIsLoading(false);
    }
  };

  // 액세스 토큰 갱신 함수
  const refreshAccessToken = async () => {
    try {
      const refreshToken = localStorage.getItem("refreshToken");

      if (!refreshToken) {
        setMessage("리프레시 토큰이 없습니다. 다시 로그인해주세요.");
        return;
      }

      const response = await axios.post("/user/refresh", {
        refreshToken: `Bearer ${refreshToken}`,
      });

      const { accesstoken } = response.data;

      console.log("새로운 Access Token:", accesstoken);

      localStorage.setItem("accessToken", accesstoken);
      setMessage("새로운 액세스 토큰이 발급되었습니다.");
    } catch (error) {
      setMessage("토큰 갱신 중 오류가 발생했습니다. 다시 로그인해주세요.");
      console.error("리프레시 토큰 처리 오류:", error);
    }
  };
  
  // Axios 요청 인터셉터 추가 (자동 토큰 갱신)
  useEffect(() => {
    const axiosInstance = axios.create();

    axiosInstance.interceptors.request.use(
      async (config) => {
        let accessToken = localStorage.getItem("accessToken");
        const tokenExpiry = localStorage.getItem("tokenExpiry");

        if (tokenExpiry && Date.now() > tokenExpiry) {
          console.log("액세스 토큰 만료됨, 새로운 토큰 요청...");
          await refreshAccessToken();
          accessToken = localStorage.getItem("accessToken");
        }

        config.headers["Authorization"] = `Bearer ${accessToken}`;
        return config;
      },
      (error) => {
        return Promise.reject(error);
      }
    );
  }, []);

  const handleSignUp = () => {
    navigate("/User/SignUp");
  };

  return (
    <div style={{ display: "flex", justifyContent: "center", alignItems: "center", height: "100vh", backgroundColor: "#f0f0f0" }}>
      <form
        onSubmit={handleSubmit}
        style={{
          width: "300px",
          padding: "20px",
          backgroundColor: "#fff",
          border: "1px solid #ccc",
          borderRadius: "5px",
          boxShadow: "0 4px 8px rgba(0, 0, 0, 0.1)",
        }}
      >
        <h2 style={{ textAlign: "center", marginBottom: "20px" }}>로그인</h2>

        <div style={{ marginBottom: "10px" }}>
          <label htmlFor="username" style={{ display: "block", marginBottom: "5px" }}>아이디</label>
          <input
            type="text"
            name="username"
            value={formData.username}
            onChange={handleChange}
            required
            style={{
              width: "100%",
              padding: "8px",
              border: "1px solid #ccc",
              borderRadius: "4px",
            }}
          />
        </div>

        <div style={{ marginBottom: "20px" }}>
          <label htmlFor="password" style={{ display: "block", marginBottom: "5px" }}>비밀번호</label>
          <input
            type="password"
            name="password"
            value={formData.password}
            onChange={handleChange}
            required
            style={{
              width: "100%",
              padding: "8px",
              border: "1px solid #ccc",
              borderRadius: "4px",
            }}
          />
        </div>

        {message && <p style={{ color: message.includes("성공") ? "green" : "red" }}>{message}</p>}

        <button
          type="submit"
          disabled={isLoading}
          style={{
            width: "100%",
            padding: "10px",
            backgroundColor: "#007bff",
            color: "#fff",
            border: "none",
            borderRadius: "4px",
            cursor: isLoading ? "not-allowed" : "pointer",
          }}
        >
          {isLoading ? "로딩중..." : "로그인"}
        </button>

        <button
          type="button"
          onClick={handleSignUp}
          style={{
            width: "100%",
            padding: "10px",
            marginTop: "10px",
            backgroundColor: "#6c757d",
            color: "#fff",
            border: "none",
            borderRadius: "4px",
            cursor: "pointer",
          }}
        >
          회원가입
        </button>
      </form>
    </div>
  );
};

export default Login;