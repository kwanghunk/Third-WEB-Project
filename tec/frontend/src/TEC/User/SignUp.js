import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const Signup = () => {
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    username: "",
    name: "",
    phone: "",
    email: "",
    password: "",
    confirmPassword: "",
    ssnFirst: "",
    ssnSecond: "",
  });

  const [message, setMessage] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [idCheckMessage, setIdCheckMessage] = useState("");
  const [emailCheckMessage, setEmailCheckMessage] = useState("");
  const [passwordMatchMessage, setPasswordMatchMessage] = useState("");

  const handleChange = (e) => {
    const { name, value } = e.target;

    setFormData((prev) => ({
      ...prev,
      [name]: name === "phone"
        ? value
            .replace(/[^0-9]/g, "")
            .slice(0, 11)
            .replace(/^(\d{3})(\d{0,4})?(\d{0,4})?$/, (match, p1, p2, p3) =>
              [p1, p2, p3].filter(Boolean).join("-")
            )
        : value,
    }));

    if (name === "username") {
      setIdCheckMessage("");
    }

    if (name === "email") {
      setEmailCheckMessage("");
    }

    if (name === "confirmPassword" || name === "password") {
      // 비밀번호 확인 메시지 업데이트
      if (formData.password !== value && name === "confirmPassword") {
        setPasswordMatchMessage("비밀번호가 일치하지 않습니다.");
      } else if (name === "password" && value !== formData.confirmPassword) {
        setPasswordMatchMessage("비밀번호가 일치하지 않습니다.");
      } else {
        setPasswordMatchMessage("비밀번호가 일치합니다.");
      }
    }
  };

  const handleIdCheck = async () => {
    if (!formData.username.trim()) {
      setIdCheckMessage("아이디를 입력해 주세요.");
      return;
    }

    try {
      setIsLoading(true);
      const { data } = await axios.post("/user/check-id", {
        username: formData.username,
      });

      if (data === "사용 가능한 아이디입니다.") {
        setIdCheckMessage("사용 가능한 아이디입니다.");
      } else {
        setIdCheckMessage("이미 사용 중인 아이디입니다.");
      }
    } catch (error) {
      setIdCheckMessage("아이디 중복 확인 중 오류가 발생했습니다.");
    } finally {
      setIsLoading(false);
    }
  };

  const handleEmailCheck = async () => {
    if (!formData.email.trim()) {
      setEmailCheckMessage("이메일을 입력해 주세요.");
      return;
    }

    try {
      setIsLoading(true);
      const { data } = await axios.post("/user/check-email", {
        email: formData.email,
      });

      if (data === "사용 가능한 이메일입니다.") {
        setEmailCheckMessage("사용 가능한 이메일입니다.");
      } else {
        setEmailCheckMessage("이미 사용 중인 이메일입니다.");
      }
    } catch (error) {
      setEmailCheckMessage("이메일 중복 확인 중 오류가 발생했습니다.");
    } finally {
      setIsLoading(false);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setMessage("");

    if (idCheckMessage !== "사용 가능한 아이디입니다.") {
      setMessage("아이디 중복확인을 해주세요.");
      return;
    }

    if (emailCheckMessage !== "사용 가능한 이메일입니다.") {
      setMessage("이메일 중복확인을 해주세요.");
      return;
    }

    if (passwordMatchMessage !== "비밀번호가 일치합니다.") {
      setMessage("비밀번호를 확인해 주세요.");
      return;
    }

    if (!/^\d{6}$/.test(formData.ssnFirst) || !/^\d{7}$/.test(formData.ssnSecond)) {
      setMessage("유효한 주민등록번호를 입력하세요.");
      return;
    }

    try {
      setIsLoading(true);
      await axios.post("/user/signup", {
        username: formData.username,
        name: formData.name,
        phone: formData.phone,
        email: formData.email,
        password: formData.password,
        ssnFirst: formData.ssnFirst,
        ssnSecond: formData.ssnSecond,
      });

      setMessage("회원가입이 성공적으로 완료되었습니다.");
      setTimeout(() => navigate("/login"), 2000); // 2초 후 로그인 페이지로 이동
    } catch (error) {
      setMessage(
        error.response?.data?.message || "회원가입 중 오류가 발생했습니다. 다시 시도해주세요."
      );
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <h2>회원가입</h2>
      
      <div>
        <label>이름:</label>
        <input
          type="text"
          name="name"
          value={formData.name}
          onChange={handleChange}
          required
        />
      </div>
      {message && <p style={{ color: message.includes("성공") ? "green" : "red" }}>{message}</p>}
      
      <div>
        <label>아이디:</label>
        <input
          type="text"
          name="username"
          value={formData.username}
          onChange={handleChange}
          required
        />
        <button type="button" onClick={handleIdCheck} disabled={isLoading}>
          {isLoading ? "확인 중..." : "중복 확인"}
        </button>
        {idCheckMessage && <p style={{ color: idCheckMessage.includes("가능") ? "green" : "red" }}>{idCheckMessage}</p>}
      </div>

      <div>
        <label>이메일:</label>
        <input
          type="email"
          name="email"
          value={formData.email}
          onChange={handleChange}
          required
        />
        <button type="button" onClick={handleEmailCheck} disabled={isLoading}>
          {isLoading ? "확인 중..." : "중복 확인"}
        </button>
        {emailCheckMessage && <p style={{ color: emailCheckMessage.includes("가능") ? "green" : "red" }}>{emailCheckMessage}</p>}
      </div>

      <div>
        <label>비밀번호:</label>
        <input
          type="password"
          name="password"
          value={formData.password}
          onChange={handleChange}
          required
        />
      </div>

      <div>
        <label>비밀번호 확인:</label>
        <input
          type="password"
          name="confirmPassword"
          value={formData.confirmPassword}
          onChange={handleChange}
          required
        />
        {passwordMatchMessage && (
          <p style={{ color: passwordMatchMessage.includes("일치합니다") ? "green" : "red" }}>
            {passwordMatchMessage}
          </p>
        )}
      </div>
      
      <div>
        <label>주민등록번호:</label>
        <input
          type="text"
          name="ssnFirst"
          placeholder="앞자리 (6자리)"
          value={formData.ssnFirst}
          onChange={handleChange}
          maxLength="6"
          required
        />
        -
        <input
          type="password"
          name="ssnSecond"
          placeholder="뒷자리 (7자리)"
          value={formData.ssnSecond}
          onChange={handleChange}
          maxLength="7"
          required
        />
      </div>

      <div>
        <label>휴대폰 번호:</label>
        <input
          type="tel"
          name="phone"
          placeholder="010-1234-5678"
          value={formData.phone}
          onChange={handleChange}
          required
        />
      </div>

      <button type="submit" disabled={isLoading}>
        {isLoading ? "처리 중..." : "회원가입"}
      </button>
    </form>
  );
};

export default Signup;