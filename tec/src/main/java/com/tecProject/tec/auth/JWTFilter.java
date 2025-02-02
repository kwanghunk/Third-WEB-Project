package com.tecProject.tec.auth;

import java.io.IOException;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import com.tecProject.tec.domain.User;
import com.tecProject.tec.dto.CustomUserDetails;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class JWTFilter extends OncePerRequestFilter{

	private final JWTUtil jwtUtil;
	
	public JWTFilter(JWTUtil jwtUtil) {
		this.jwtUtil = jwtUtil;
	}
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
	        throws ServletException, IOException {
		
		//Access Token 처리
		String accessTokenHeader = request.getHeader("AccesToken");
		String refreshTokenHeader = request.getHeader("refreshToken");
		
		// Access Token이 없거나 만료된 경우 Refresh Token 사용하여 갱신
		if (accessTokenHeader == null || !accessTokenHeader.startsWith("Bearer ")) {
			System.out.println("AccesToken이 존재하지 않거나 잘못된 형식입니다.");
			handleRefreshToken(request, response, filterChain, refreshTokenHeader);
			return;
		}
		
		String accessToken = accessTokenHeader.substring(7); // "Bearer " 제거
		
		try {
			//Access Token 만료 확인
			if (jwtUtil.isTokenExpired(accessToken)) {
				System.out.println("Access Token이 만료되었습니다. Refresh Token을 확인합니다.");
				handleRefreshToken(request, response, filterChain, refreshTokenHeader);
				return;
			}

			//Access Token이 유효하면 인증 처리
			authenticateUser(accessToken);

		} catch (Exception e) {
			System.out.println("Access Token 검증 중 오류 발생: " + e.getMessage());
		}

		filterChain.doFilter(request, response);
	}
	
	protected void handleAccessToken(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain, 
			String accessTokenHeader) throws ServletException, IOException {
		//request에서 Authorization 헤더를 찾음
		//String accessTokenHeader = request.getHeader("AccesToken");
		
		//Authorization 헤더 검증
		if (accessTokenHeader == null || !accessTokenHeader.startsWith("Bearer ")) {
			System.out.println("accestoken null");
			filterChain.doFilter(request, response);
			return; //조건이 해당되면 메소드 종료 (필수)
		}
		
		String accessToken = accessTokenHeader.substring(7); // "Bearer " 제거

	    try {
	    	// 토큰 소멸 시간 검증
	        if (jwtUtil.isTokenExpired(accessToken)) {
	            System.out.println("Token expired");
	            filterChain.doFilter(request, response);
	            return; //조건이 해당되면 메소드 종료 (필수)
	        }
		
			//토큰에서 username과 role 획득
			String username = jwtUtil.getUsername(accessToken);
			String role = jwtUtil.getRole(accessToken);
			
			//user를 생성하여 값 set
			User user = new User();
			user.setUsername(username);
			user.setPassword("temppassword");// 매번 db 조회할 필요 없게 임의값 넣어둠
			user.setUserType(role);
			
			//UserDetails에 회원 정보 객체 담기
			CustomUserDetails customUserDetails = new CustomUserDetails(user);
			
			//스프링 시큐리티 인증 토큰 생성
			Authentication authToken = new UsernamePasswordAuthenticationToken(customUserDetails, null, customUserDetails.getAuthorities());
			
			//세션에 사용자 등록
			SecurityContextHolder.getContext().setAuthentication(authToken);
	    
	    } catch (Exception e) {
	    	System.out.println("jwt parsing failed: " + e.getMessage());
	    } 
 		filterChain.doFilter(request, response);
	}

	protected void handleRefreshToken(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain, 
			String refreshTokenHeader) throws ServletException, IOException {
		//request에서 Authorization 헤더를 찾음
		//String refreshTokenHeader = request.getHeader("refreshToken");
		
		//Authorization 헤더 검증
		if (refreshTokenHeader == null || !refreshTokenHeader.startsWith("Bearer ")) {
			System.out.println("Refresh Token이 존재하지 않거나 잘못된 형식입니다.");
			filterChain.doFilter(request, response);
			return; //조건이 해당되면 메소드 종료 (필수)
		}
		
		//Bearer 부분 제거 후 순수 토큰만 획득
		String refreshToken = refreshTokenHeader.substring(7); //"Bearer " 제거

	    try {
	    	//Refresh Token이 만료되었는지 확인
	        if (jwtUtil.isTokenExpired(refreshToken)) {
	            System.out.println("Refresh Token이 만료되었습니다. 재로그인이 필요합니다.");
	            filterChain.doFilter(request, response);
	            return; //조건이 해당되면 메소드 종료 (필수)
	        }
		
			//Refresh Token 토큰에서 username과 role 획득
			String username = jwtUtil.getUsername(refreshToken);
			String role = jwtUtil.getRole(refreshToken);
			
			//user를 생성하여 값 set
			User user = new User();
			user.setUsername(username);
			user.setPassword("temppassword"); //매번 db 조회할 필요 없게 임의값 넣어둠
			user.setUserType(role);
			
			//UserDetails에 회원 정보 객체 담기
			CustomUserDetails customUserDetails = new CustomUserDetails(user);
			
			//스프링 시큐리티 인증 토큰 생성
			Authentication authToken = new UsernamePasswordAuthenticationToken(customUserDetails, null, customUserDetails.getAuthorities());
			
			//세션에 사용자 등록
			SecurityContextHolder.getContext().setAuthentication(authToken);
	    
			//새로운 Access Token 생성
			String newAccessToken = jwtUtil.createAccessToken(username, role);
			System.out.println("새로운 Access Token 발급: " + newAccessToken);
			
			//새로운 Access Token을 응답 헤더에 추가
			response.setHeader("AccesToken", "Bearer " + newAccessToken);
			
			//새로운 Access Token으로 인증 처리
			authenticateUser(newAccessToken);
			
	    } catch (Exception e) {
	    	System.out.println("jwt parsing failed: " + e.getMessage());
	    }
 		filterChain.doFilter(request, response);
	}
	
	//Access Token을 이용하여 사용자 인증을 처리하는 메서드
	private void authenticateUser(String token) {
		String username = jwtUtil.getUsername(token);
		String role = jwtUtil.getRole(token);

		//user 객체 생성하여 설정
		User user = new User();
		user.setUsername(username);
		user.setPassword("temppassword"); //매번 DB 조회할 필요 없게 임의값 설정
		user.setUserType(role);

		//UserDetails에 회원 정보 객체 담기
		CustomUserDetails customUserDetails = new CustomUserDetails(user);

		//Spring Security 인증 토큰 생성
		Authentication authToken = new UsernamePasswordAuthenticationToken(customUserDetails, null,
				customUserDetails.getAuthorities());

		//세션에 사용자 등록
		SecurityContextHolder.getContext().setAuthentication(authToken);
	}
}