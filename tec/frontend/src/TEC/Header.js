import { useState, useEffect, useCallback } from "react";
import { useNavigate } from "react-router-dom";
import { FaSearch } from "react-icons/fa";
import React from "react";
import axios from "axios";
import {jwtDecode} from "jwt-decode";

import './Styles/Header.css';

function Header({ user, setUser }) {
  const [searchQuery, setSearchQuery] = useState('');
  const navigate = useNavigate();
  const [isModalOpen, setModalOpen] = useState(false); // 검색 모달 추가

  const handleLogout = () => {
    localStorage.clear(); // localStorage 데이터 삭제
    setUser(null); // 상태 초기화
    alert("로그아웃 되었습니다!");
    navigate('/');
  };

  // 엑세스 토큰 갱신 함수
  const refreshAccessToken = useCallback(async () => {
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

      localStorage.setItem("accessToken", newAccessToken);
      localStorage.setItem("tokenExpiry", jwtDecode(newAccessToken).exp * 1000);

      alert("세션이 연장되었습니다.");
    } catch (error) {
      alert("토큰 갱신 실패. 다시 로그인해주세요.");
      localStorage.clear();
      navigate("/User/Login");
    }
  }, [navigate]);

  // 로그인 상태 복구 및 토큰 만료 체크
  useEffect(() => {
    const accesstoken = localStorage.getItem("accessToken");

    if (accesstoken) {
      try {
        const decodedToken = jwtDecode(accesstoken);
        setUser({
          username: decodedToken.username,
          userType: decodedToken.userType,
        });

        const tokenExpiry = decodedToken.exp * 1000; // 🔥 만료 시간 설정

        const interval = setInterval(() => {
          console.log("현재 시간:", Date.now());
          console.log("토큰 만료 시간:", tokenExpiry);

          if (Date.now() > tokenExpiry) {
            console.log("액세스 토큰 만료됨! 로그인 연장 여부 확인");
            const extendSession = window.confirm("로그인 연장하시겠습니까?");
            if (extendSession) {
              refreshAccessToken();
            } else {
              localStorage.clear();
              setUser(null);  // 🔥 헤더에서도 즉시 반영
              navigate("/User/Login");
            }
          }
        }, 10000); // 🔥 10초마다 실행

        return () => clearInterval(interval);
      } catch (error) {
        console.error("JWT 디코딩 실패:", error);
      }
    }
  }, [setUser, navigate, refreshAccessToken]);

  return (
    <header className="header-all">
      <img 
       src="/imgs/logo1.png" 
       alt="logoimg" 
       className="logo-image"
       style={{ cursor: "pointer" }}
       onClick={() =>  navigate('/')}
       />
       
       {/* 네비게이션 메뉴 */}
       <div className="header-nav-menu">
        <div className="nav-menu-container">
          <div className="nav-menu-content" onClick={() => { navigate('/Admin/CodeManagement') }} style={{ cursor: "pointer" }}>코드 API</div>
          <div className="nav-menu-content" onClick={() => { navigate('/Admin/Faq') }} style={{ cursor: "pointer" }}>자주 묻는 질문</div>
          <div className="nav-menu-content" onClick={() => { navigate('/UserSupportList') }} style={{ cursor: "pointer" }}>1:1 문의</div>
          
          <FaSearch
            className="search-icon"
            onClick={() => setModalOpen(true)}
            style={{ cursor: "pointer" }}
          />
          
          </div>
          {isModalOpen && (
          <div className="modal-overlay" onClick={() => setModalOpen(false)}> 
            <div className="modal-box" onClick={(e) => e.stopPropagation()}> 
              <span className="nav-menu-search-content">
                <span className="nav-menu-search">
                  <input 
                    className="nav-menu-search-text"
                    onChange={(e) => {setSearchQuery(e.target.value)}}
                    value={searchQuery}
                    placeholder="SEARCH KEYWORD"
                  />
                  <FaSearch
                    alt="Search" 
                    className="search-button"
                    style={{cursor: "pointer"}}
                  />

                </span>
              </span>
            </div>
          </div>
        )}
        
        {user ? (
					<span className={"header-login"}>
            <span className="login-content">{user.username}님</span>
              
              {user.userType === "ROLE_ADMIN" ? (
                <span className="login-content" onClick={() => navigate('/Admin/AdminPage')}>관리자 페이지</span>
              ) : (
                <span className="login-content" onClick={() => navigate('/User/MyPage')}>마이페이지</span>
              )}

              <span className="login-content" onClick={handleLogout}>로그아웃</span>
           </span>
        ) : (
        <span className="header-login" onClick={() => navigate('/User/Login')}>로그인</span>
        )}
      </div>
    </header>
  );
}

export default Header;