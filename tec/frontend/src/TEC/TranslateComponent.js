import React, { useState } from "react";


const translations = {
  function: "함수",
  if: "조건문",
  for: "반복문",
  public: "공용",
  private: "비공용",
  int: "정수형",
  String: "문자열",
};

function TranslateComponent() {
  const [keyword, setKeyword] = useState(""); // 입력창 입력값
  const [translation, setTranslation] = useState(""); // 번역결과

  const parseAndTranslate = (input) => {
    const tokens = input.match(/\w+[^\s\w]+/g) || [];
    
    const translatedTokens = tokens.map((token) => 
      translations[token] || token
    );
  return translatedTokens.join(" ");
  };

  const handleTranslate = () => {
    const trimmedKeyword = keyword.trim();
    console.log("handleTranslate Keyword: ", keyword);

    const result = parseAndTranslate(trimmedKeyword);
    setTranslation(result);
  };

  return (
    <div style = {{ padding: "20px" }}>
      <h1>글자번역 테스트</h1>
      <textarea
        rows="4" cols="50" placeholder="번역할 문장을 입력하시오." value={keyword}
        onChange={(e) => setKeyword(e.target.value.trim())}
        style={{ marginBottom: "10px", padding: "5px" }}
      />

      <br />
      <button onClick={handleTranslate} style={{ padding: "5px 10px"}}>
        번역하기기
      </button>
      <div style={{ marginTop: "20px", border: "1px black solid", height: "50px"}}>
        {translation && <p><strong>번역결과:</strong> {translation}</p>}
      </div>
    </div>
  )
}

export default TranslateComponent;
