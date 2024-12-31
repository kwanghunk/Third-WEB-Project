import React from 'react';
import { Routes, Route } from 'react-router-dom';
import './App.css';

/* 컴포넌트 IMPORT */
import Header from './TEC/Header'; //Header항상 상단에 고정
import TranslateComponent from './TEC/TranslateComponent';
import CodeManagement from './TEC/Admin/CodeManagement';
import Faq from './TEC/Admin/Faq';
import Login from './TEC/User/Login';
import SignUp from './TEC/User/SignUp';

function App() {
  return (
    <div className="App">
      <Header /> {/* 모든 페이지 상단에 고정될 헤더 */}
      <div className="pages">
        <Routes>
          <Route path='/' element={<TranslateComponent />} /> {/* Main 컴포넌트를 렌더링 */}
          <Route path="/Admin/CodeManagement" element={<CodeManagement />} />
          <Route path="/Admin/Faq" element={<Faq />} />
          <Route path="/User/Login" element={<Login />} />
          <Route path="/User/SignUp" element={<SignUp />} />
        </Routes>
      </div>
    </div>
  );
}

export default App;