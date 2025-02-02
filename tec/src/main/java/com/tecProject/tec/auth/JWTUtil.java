package com.tecProject.tec.auth;

import java.nio.charset.StandardCharsets;
import java.util.Date;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;

@Component
public class JWTUtil {

	private SecretKey secretKey;
	
	public JWTUtil(@Value("${spring.jwt.secret}")String secret) {
		this.secretKey = new SecretKeySpec(secret.getBytes(StandardCharsets.UTF_8), "HmacSHA256");
	}
	
	public String getUsername(String accestoken) {
		return Jwts.parser()
				.verifyWith(secretKey)
				.build()
				.parseSignedClaims(accestoken)
				.getPayload()
				.get("username", String.class);
	}
	
	public String getRole(String accestoken) {
		return Jwts.parser()
				.verifyWith(secretKey)
				.build()
				.parseSignedClaims(accestoken)
				.getPayload()
				.get("userType", String.class);
	}
	
	public Boolean isTokenExpired(String accestoken) {
		return Jwts.parser()
				.verifyWith(secretKey)
				.build()
				.parseSignedClaims(accestoken)
				.getPayload()
				.getExpiration()
				.before(new Date());
	}
	
	public String createAccessToken(String username, String userType) {
		long accessTokenExpiration = 10 * 1000; //1분
		return Jwts.builder()
				.claim("username", username)
				.claim("userType", userType)
				.issuedAt(new Date(System.currentTimeMillis())) //현재발행시간
				.expiration(new Date(System.currentTimeMillis() + accessTokenExpiration)) //남은시간
				.signWith(secretKey)
				.compact();
	}
	
	public String createRefreshToken(String username, String userType) {
		long refreshTokenExpiration = 60 * 60 * 1000; //1시간
		return Jwts.builder()
				.claim("username", username)
				.claim("userType", userType)
				.issuedAt(new Date(System.currentTimeMillis())) //현재발행시간
				.expiration(new Date(System.currentTimeMillis() + refreshTokenExpiration)) //남은시간
				.signWith(secretKey)
				.compact();
	}
	
	public Claims getClaims(String token) {
	    return Jwts.parser()
	               .verifyWith(secretKey)
	               .build()
	               .parseSignedClaims(token)
	               .getPayload();
	}
	
    public String refreshAccessToken(String refreshToken) {
        //리프레시 토큰이 유효한지 확인
        if (isTokenExpired(refreshToken)) {
            throw new RuntimeException("리프레시 토큰이 만료되었습니다.");
        }

        //리프레시 토큰에서 사용자 정보 추출
        String username = getUsername(refreshToken);
        String userType = getRole(refreshToken);

        //새 액세스 토큰 발급
        return createAccessToken(username, userType);
    }
}