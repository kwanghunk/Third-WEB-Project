import React, { useState, useEffect } from "react";
import axios from "axios";
import Editor from "@monaco-editor/react"
;
import './Styles/TranslateComponent.css';

import { fetchHistory, updateHistory, saveTranslation, downloadTranslation } from "./MainParts/HistoryManager";

function TranslateComponent() {
  const [keyword, setKeyword] = useState(""); // 입력창 입력값
  const [translation, setTranslation] = useState(""); // 번역결과
  const [language, setLanguage] = useState("Java"); // 기본값 "JAVA"
  const [historys, setHistorys] = useState([]); // 번역 히스토리
  const [isModalOpen, setIsModalOpen] = useState(false); // 기록 모달 활성/비활성 상태
  const [isHistoryDivOpen, setIsHistoryDivOpen] = useState(false); // HistoryDiv 활성/비활성 상태
  
  const [selectedItem, setSelectedItem] = useState(null); // 선택된 히스토리 항목
  const [historyKeyword, setHistoryKeyword] = useState("");
  const [historyTranslation, setHistoryTranslation] = useState("");
  const [ipInfo, setIpInfo] = useState({ ip: "로딩 중...", userType: "로딩 중..." }); // 클라이언트 IP 정보 초기값
  const [loading, setLoading] = useState(true); // Ip로딩 상태 관리
  const [activeDiv, setActiveDiv] = useState(null); // 클릭된 번역 영역

  // 서버로부터 IP와 회원 여부 정보 가져오기
  const fetchIpInfo = async () => {
    try {
      setLoading(true); // 로딩 시작
      const response = await axios.get("/ip/check-ip", {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("accesstoken") || ""}`, // JWT 토큰
        },
      });

      // 서버에서 반환된 데이터를 상태에 저장
      const data = response.data.split(", ");
      setIpInfo({
        ip: data[0].split(": ")[1], // 클라이언트 IP
        userType: data[2].split(": ")[1], // 회원/비회원 여부
      });
    } catch (error) {
      console.error("IP 정보 가져오기 실패: ", error.response?.data || error.message);
      setIpInfo({ ip: "오류 발생", userType: "비회원" }); // 실패 시 기본값 설정
    } finally {
      setLoading(false); // 로딩 종료
    }
  };

  // 파일 업로드 처리 함수
  const handleFileUpload = (e) => {
    const file = e.target.files[0];
    if (!file) return;

    const validExtensions = ['java', 'js', 'txt', 'py']; // 업로드 허용한 파일 확장자
    const fileExtension = file.name.split('.').pop().toLowerCase();

    if (!validExtensions.includes(fileExtension)) {
      alert("첨부할 수 있는 확장자 파일이 아닙니다.");
      return;
    }
    // 파일 내용을 읽어와 'keyword' 상태에 저장
    const reader = new FileReader();
    reader.onload = (e) => {
      setKeyword(e.target.result); // 파일 내용을 상태 저장
    };
    reader.onerror = () => {
      alert("파일 읽기에 실패했습니다.");
    };
    reader.readAsText(file);
  }  

  // Monaco Editor의 내용을 상태로 저장
  const handleEditorChange = (value) => { setKeyword(value); }

  // 번역 요청
  const handleTranslate = async () => {
    if (!keyword.trim()) return alert("번역할 텍스트를 입력해주세요.");
    try {
      const response = await axios.get("/api/code", {
        params: { origin: keyword.trim(), language }, // 서버에 보낼 쿼리 파라미터
      }); // 서버에 보낼 쿼리 파라미터
      const newTranslation = { original: keyword, translated: response.data, language };

      setTranslation(response.data); // 서버에서 반환된 번역 결과 저장
      setHistorys(updateHistory(newTranslation, historys)); // 히스토리 업데이트
    } catch (error) {
      console.error("번역 오류: ", error.response?.data || error.message);
      setTranslation("번역에 실패했습니다."); // 오류 메시지 처리
    }
  };

  // 선택된 기록을 기록에디터에 반영
  const applySelectedHistory = () => {
    if (selectedItem) {
      setHistoryKeyword(selectedItem.original);
      setHistoryTranslation(selectedItem.translated);
      setIsModalOpen(false);
      setIsHistoryDivOpen(true); // 기록 선택 시 HistoryDiv 활성화
    } else { alert("기록을 선택해주세요!"); }
  };  
  
  const saveTranslation = async () => {
    if (!selectedItem) {
      alert("저장할 기록을 먼저 선택하세요.");
      return;
    }
    const confirmed = window.confirm("선택한 기록을 저장하시겠습니까?");
    if (!confirmed) return;

    try {
      const token = localStorage.getItem("token");
      if (!token) {
        alert("로그인이 필요합니다.");
        return;
      }

      let historyTitle = window.prompt("(선택) 제목을 입력하세요.");
      if (!historyTitle) {
        historyTitle = (historyKeyword || keyword).slice(0,30) + "..."; // 기본 제목 설정값
      }

      const dataToSave = {
        requestCode: historyKeyword || keyword, // 원본 코드
        responseCode: historyTranslation || translation, // 번역 결과
        typeCode: language, // 번역 언어
        historyTitle: historyTitle // 저장할 번역 기록 제목
      };
      if (!dataToSave.requestCode || !dataToSave.responseCode) {
        alert("저장할 번역 데이터가 없습니다.");
        return;
      }

      // 저장 요청
      await axios.post("/api/history", dataToSave,
        { headers: { Authorization: `Bearer ${token}` }} // JWT 토큰 포함
      );
      alert("기록이 저장되었습니다.");
    } catch (e) {
      alert("저장 실패");
      console.error("기록 저장 실패: ", e);
    }
  }  

  // 클릭된 번역 이벤트
  useEffect(() => {
    fetchIpInfo(); // 컴포넌트 마운트 시 IP 정보 가져오기
    const savedHistory = JSON.parse(sessionStorage.getItem("translationHistory")) || [];// sessionStorage에서 히스토리 불러오기
    setHistorys(savedHistory);
    const handleOutsideClick = (event) => {
      if (!event.target.closest('.content-mid-translateDiv-left') && 
      !event.target.closest('.content-mid-translateDiv-right')) {
        setActiveDiv(null);
      }
  };
    document.addEventListener('click', handleOutsideClick);
  // 컴포넌트 언마운트 시 이벤트 제거
      return () => {
        document.removeEventListener('click', handleOutsideClick);
  };
}, []);

  // 히스토리 업데이트 및 저장소 동기화
  const updateHistory = (newItem) => {
    const updatedHistory = [newItem, ...historys].slice(0, 10); // 최근 10개까지만 유지
    setHistorys(updatedHistory);
    sessionStorage.setItem("translationHistory", JSON.stringify(updatedHistory));
  };

  // 기록 모달 열기/닫기
  const openModal = () => {
    const savedHistory = JSON.parse(sessionStorage.getItem("translationHistory")) || [];
    setHistorys(savedHistory);
    setIsModalOpen(true);
  }
  const closeModal = () => setIsModalOpen(false);
  
  // 기록 선택 시 원본 및 번역 결과 복원
  const handleSelectHistory = (item) => {
    setSelectedItem(item); // 선택된 항목 저장
  };




  // 초기 설정: IP 정보 및 히스토리 로드 && 클릭 외부 이벤트 핸들링
  useEffect(() => {
    fetchIpInfo(); // 컴포넌트 마운트 시 IP 정보 가져오기
    setHistorys(fetchHistory);
    const handleOutsideClick = (event) => {
      if (
        !event.target.closest('.content-mid-translateDiv-left') && 
        !event.target.closest('.content-mid-translateDiv-right')
      ) {
        setActiveDiv(null);
      }
    };
    document.addEventListener('click', handleOutsideClick);
    return () => {
      document.removeEventListener('click', handleOutsideClick); // 컴포넌트 언마운트 시 이벤트 제거
    };
  }, []);

  const downloadTranslation = async () => {
    const confirmed = window.confirm("현재 번역 기록을 다운로드 하시겠습니까?");
    if (!confirmed) return;
    if (!historyKeyword || !historyTranslation) {
      alert("다운로드할 기록을 선택하세요.");
      return;
    }
    const fileName = prompt("(선택)파일 이름을 입력하세요: ", "")|| "DECOBET";
    const dataToDownload = {
      requestCode: historyKeyword, // 원본 코드
      responseCode: historyTranslation, // 번역 결과
      typeCode: language, // 번역 언어
      fileName // 저장할 이름름
    };
    try {
      const response = await axios.post("/api/history/sessionDownload", dataToDownload,
        { responseType: "blob", } // 파일 다운로드 
      );
      // 파일 다운로드 처리
      const url = window.URL.createObjectURL(new Blob([response.data]));
      const link = document.createElement("a");
      link.href = url;
      link.setAttribute("download", `${fileName}.txt`);
      document.body.appendChild(link);
      link.click();
    } catch (e) {
        console.error("다운로드 실패: ", e);
        alert("다운로드에 실패했습니다.");
    }
  }



  return (
    <div className="content-all">
      <div className="content-top-buttonDiv">
        {loading ? (
          <p>클라이언트 IP 정보 로딩 중...</p>
        ) : (
          <p>
            클라이언트 IP: {ipInfo.ip} / 사용자: {ipInfo.userType}
          </p>
        )}
        <select 
          className="select-language"
          value={language}
          onChange={(e) => setLanguage(e.target.value)}
        >
          <option value="Java">Java</option>
          <option value="Python">Python</option>
          <option value="JavaScript">JavaScript</option>
          <option value="CSharp">C#</option>
          <option value="CPlusPlus">C++</option>
          <option value="C">C</option>
          <option value="TypeScript">TypeScript</option>
          <option value="Kotlin">Kotlin</option>
          <option value="Ruby">Ruby</option>
          <option value="PHP">PHP</option>
        </select>
        <button className="content-top-btn" onClick={openModal}>기록</button>
        <button className="content-top-btn" onClick={downloadTranslation}>다운로드</button>
        <button className="content-top-btn" onClick={saveTranslation}>저장</button>
        <input
          type="file"
          accept=".java,.js,.txt,.py"
          style={{ display: "none" }}
          id="fileUpload"
          onChange={handleFileUpload}
        />
        <label htmlFor="fileUpload" className="content-top-btn">
          업로드
        </label>
      </div>

      {/* 모달 */}
      {isModalOpen && (
        <div className="modal-backdrop" onClick={closeModal}>
          <div
            className="modal"
            onClick={(e) => e.stopPropagation()} // 모달 내부 클릭 시 닫히지 않음
          >
            <h4>번역 요청 기록</h4>
            <ul className="history-list">
              {historys.map((item, index) => (
                <li 
                key={index}
                className={`historys-item ${selectedItem === item ? 'active' : ''}`}
                onClick={() => handleSelectHistory(item)}
                >
                  <p className="historys-item">
                    <strong>원본:</strong>{" "}
                    {item.original.length > 50 ? `${item.original.slice(0, 50)}...` : item.original}
                  </p>
                </li>
              ))}
            </ul>
            <div className="modal-buttons">
              <button onClick={applySelectedHistory}>선택</button>
              <button onClick={saveTranslation}>저장</button>
              <button onClick={closeModal}>닫기</button>
            </div>
          </div>
        </div>
      )}

      <div className="content-mid-translateDiv"> 
        <div className="dcontent-translateDiv-left"> {/* 왼쪽 영역 */}
          <p className="content-title">Original text</p>
            <div
              className={`content-mid-translateDiv-left ${activeDiv === 'left' ? 'active' : ''}`}
              onClick={() => setActiveDiv('left')}
            >
              <Editor 
                defaultLanguage="java" // 기본언어 설정
                value={keyword} // Monaco Editor에 표시될 값
                onChange={handleEditorChange} // 값이 변경될 때 마다 상태값 변경
                options ={{
                  minimap: { enabled: false } // 미니맵 비활성화
                }}
              />
            </div>
        </div>
        <div className="content-translateDiv-right">{/* 오른쪽 영역 */}
          <p className="content-title">Changed text</p>
            <div
              className={`content-mid-translateDiv-right ${activeDiv === 'right' ? 'active' : ''}`}
              onClick={() => setActiveDiv('right')}
            >
              <Editor 
                defaultLanguage="java" // 기본언어 설정
                value={translation} // Monaco Editor에 표시될 값            
                options ={{
                readOnly: true,
                  minimap: { enabled: false } // 미니맵 비활성화
                }}
              />
            </div>
        </div>
      </div>

      <div className="content-buttom-translateBtn">
        <button className="translate-Btn" onClick={handleTranslate}>
          COMPARE
        </button>
      </div>

      <div className="content-bottom-historyDiv">
        <div className="content-historyDiv-title">
          <p className="content-bottom-historyDiv-title">History</p> 
        </div>
        <div className="content-historyDiv-left"> {/* 왼쪽 영역 */}
          <p className="content-title">Original text</p>
            <div
              className={`content-bottom-historyDiv-left ${activeDiv === 'left' ? 'active' : ''}`}
              onClick={() => setActiveDiv('left')}
            >
              <Editor 
                defaultLanguage="java" // 기본언어 설정
                value={historyKeyword} // Monaco Editor에 표시될 값
                onChange={handleEditorChange} // 값이 변경될 때 마다 상태값 변경
                options ={{
                  readOnly: true,
                  minimap: { enabled: false } // 미니맵 비활성화
                }}
              />
            </div>
        </div>
        <div className="content-historyDiv-right">{/* 오른쪽 영역 */}
          <p className="content-title">Changed text</p>
            <div
              className={`content-bottom-historyDiv-right ${activeDiv === 'right' ? 'active' : ''}`}
              onClick={() => setActiveDiv('right')}
            >
              <Editor 
                defaultLanguage="java" // 기본언어 설정
                value={historyTranslation} // Monaco Editor에 표시될 값            
                options ={{
                readOnly: true,
                  minimap: { enabled: false } // 미니맵 비활성화
                }}
              />
            </div>
        </div>
      </div>

    </div>
  )
}

export default TranslateComponent;