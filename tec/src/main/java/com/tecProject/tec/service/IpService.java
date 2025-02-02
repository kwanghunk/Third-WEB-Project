package com.tecProject.tec.service;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.tecProject.tec.auth.IpUtil;
import com.tecProject.tec.auth.JWTUtil;
import com.tecProject.tec.domain.Ip;
import com.tecProject.tec.domain.User;
import com.tecProject.tec.repository.IpRepository;
import com.tecProject.tec.repository.UserRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class IpService {
	
	private final IpUtil ipUtil;
	private final JWTUtil jwtUtil;
	private final RedisTemplate<String, Integer> redisTemplate; //Redis 작업을 처리하기 위한 템플릿
	 
    private static final int MEMBER_REQUEST_LIMIT = 50; //회원 요청 제한
    private static final int GUEST_REQUEST_LIMIT = 30;  //비회원 요청 제한
    private static final long RATE_LIMIT_TIME_WINDOW = 30L * 24 * 60 * 60; // 한 달(초 단위)
	
    //회원/비회원/관리자 확인 후 Ip 반환
    public String checkMembershipAndIp(String token, HttpServletRequest request) {
		String username = "비회원"; //기본값: 비회원
		String userType = "ROLE_GUEST"; //기본값: 비회원 역할
		boolean isMember = false; //기본값: 비회원
		boolean isAdmin = false; // 기본값: 관리자 아님
		
		//1. JWT 토큰 검증 및 사용자 정보 추출
		if (token != null && token.startsWith("Bearer ")) {
			try {
				token = token.replace("Bearer ", "");
				username = jwtUtil.getUsername(token); //사용자 이름 추출
	            userType = jwtUtil.getRole(token); //사용자 역할 추출
	            isAdmin = "ROLE_ADMIN".equals(userType); // 관리자 여부 확인
	            isMember = isAdmin || "ROLE_USER".equals(userType); // 회원 여부 확인 (관리자 포함)
	            } catch (Exception e) {
	            	//JWT 검증 실패 시 비회원으로 처리
	            	System.err.println("JWT 처리 오류: " + e.getMessage());
	            }
			}
		
		//2. 클라이언트 IP 가져오기
		String ipAddress = ipUtil.getClientIp(request);
        
	    //3. 회원 여부와 IP 정보 설정
		System.out.println("감지된 모든 클라이언트 IP: " + ipAddress);
		
        //4. 결과 메시지 반환
        return String.format("클라이언트 IP: %s, 사용자: %s, 회원 여부: %s",
        		ipAddress, username, userType);
	}
    
    //Redis 키 생성 메서드
    private String generateKey(String ipAddress, boolean isMember) {
        String userType = isMember ? "MEMBER" : "GUEST";
        return "RATE_LIMIT:" + userType + ":" + ipAddress;
    }
    
    //회원/비회원만 요청 제한 확인(관리자는 무제한)
    public boolean isRequestAllowed(HttpServletRequest request, boolean isMember) {
        // 회원 여부에 따라 식별자 결정
        String ipAddress = isMember
                ? jwtUtil.getUsername(request.getHeader("Authorization").replace("Bearer ", ""))
                : ipUtil.getClientIp(request);

        //Redis에서 사용할 키 생성
        String key = generateKey(ipAddress, isMember);

        //Redis에서 현재 요청 횟수 가져오기
        Integer currentCount = redisTemplate.opsForValue().get(key);
        
        // 디버깅용 로그 추가
        System.out.println("Redis 키: " + key);
        System.out.println("현재 요청 횟수: " + (currentCount != null ? currentCount : 0));

        //회원 여부에 따라 최대 요청 제한 설정
        int maxLimit = isMember ? MEMBER_REQUEST_LIMIT : GUEST_REQUEST_LIMIT;

        //요청 기록이 없으면 Redis에 초기화하고 요청 가능 처리
        if (currentCount == null) {
            redisTemplate.opsForValue().set(key, 1, RATE_LIMIT_TIME_WINDOW, TimeUnit.SECONDS);
            System.out.println("Redis 데이터 초기화: 1");
            return true;
        }
        
        //요청 제한 초과 여부 확인
        if (currentCount >= maxLimit) {
            return false; // 요청 제한 초과
        }

        //요청 횟수 증가
        redisTemplate.opsForValue().increment(key);
        return true; // 요청 가능
    }

    //요청 횟수 조회 메서드
    public int getRequestCount(HttpServletRequest request, String token, boolean isMember) {
        String ipAddress;

        //회원 여부에 따라 식별자 결정
        if (isMember) {
            //JWT 토큰에서 사용자 이름 추출
        	ipAddress = jwtUtil.getUsername(token.replace("Bearer ", ""));
        } else {
            //클라이언트 IP 주소 추출
        	ipAddress = ipUtil.getClientIp(request);
        }

        //요청 횟수 조회
        String key = generateKey(ipAddress, isMember);
        Integer currentCount = redisTemplate.opsForValue().get(key);
        return currentCount == null ? 0 : currentCount;
    }
}