import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { FaSearch } from "react-icons/fa";
import React from "react";
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

  // JWT를 통해 상태 복구
  useEffect(() => {
    const accesstoken = localStorage.getItem("accessToken"); // JWT 토큰 가져오기
    if (accesstoken) {
      try {
        const decodedToken = jwtDecode(accesstoken); // JWT 디코딩
        setUser({
          username: decodedToken.username,
          userType: decodedToken.userType,
        });
      } catch (error) {
        console.error("JWT 디코딩 실패:", error);
      }
    }
  }, [setUser]);

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