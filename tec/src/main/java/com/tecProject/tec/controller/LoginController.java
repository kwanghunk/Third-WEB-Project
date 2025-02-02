package com.tecProject.tec.controller;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tecProject.tec.auth.JWTUtil;
import com.tecProject.tec.dto.LoginDTO;
import com.tecProject.tec.service.LoginService;

@RestController
@RequestMapping("/user")
public class LoginController {

	private final LoginService loginService;
	private final JWTUtil jwtUtil;

	public LoginController(LoginService loginService, JWTUtil jwtUtil) {
		this.loginService = loginService;
		this.jwtUtil = jwtUtil;
	}
	
	@PostMapping("/login")
	public ResponseEntity<?> login(@RequestBody LoginDTO loginDTO) {
		try {
			Map<String, String> loginResponse = loginService.authenticateUser(loginDTO);
			return ResponseEntity.ok(loginResponse);
		} catch (BadCredentialsException e) {
			return ResponseEntity.status(401).body("아이디 또는 비밀번호가 잘못되었습니다.");
		} catch (Exception e) {
			return ResponseEntity.status(500).body("서버 오류가 발생했습니다.");
		}
	}
	
	@PostMapping("/refresh")
	public ResponseEntity<?> refresh(@RequestBody Map<String, String> requestBody) {
	    try {
	        String refreshTokenHeader = requestBody.get("refreshToken");

	        if (refreshTokenHeader == null || !refreshTokenHeader.startsWith("Bearer ")) {
	            return ResponseEntity.status(400).body("유효하지 않은 리프레시 토큰입니다.");
	        }

	        //Bearer 제거 후 순수 토큰만 추출
	        String refreshToken = refreshTokenHeader.substring(7);

	        //리프레시 토큰이 만료되었는지 확인
	        if (jwtUtil.isTokenExpired(refreshToken)) {
	            return ResponseEntity.status(401).body("리프레시 토큰이 만료되었습니다. 다시 로그인해주세요.");
	        }

	        //토큰에서 사용자 정보 추출
			String username = jwtUtil.getUsername(refreshToken);
			String role = jwtUtil.getRole(refreshToken);

	        //새로운 액세스 토큰 생성
	        String newAccessToken = jwtUtil.createAccessToken(username, role);

	        return ResponseEntity.ok(Map.of("accessToken", newAccessToken));
        } catch (Exception e) {
            return ResponseEntity.status(500).body("리프레시 토큰 처리 중 오류가 발생했습니다.");
        }
	}
}

