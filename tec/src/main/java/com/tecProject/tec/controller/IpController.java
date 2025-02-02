package com.tecProject.tec.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tecProject.tec.service.IpService;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/ip")
@RequiredArgsConstructor
public class IpController {
	
	private final IpService ipService;
	
	//회원/비회원 확인 후 Ip반환
    @GetMapping("/check-ip")
    public ResponseEntity<String> checkIpAndMembership(
            @RequestHeader(value = "Authorization", required = false) String token,
            HttpServletRequest request
    ) {
        try {
            // 서비스 계층에 로직 위임
            String result = ipService.checkMembershipAndIp(token, request);
            return ResponseEntity.ok(result);

        } catch (Exception e) {
            //오류 처리
            System.err.println("서버 처리 오류: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("오류 발생: " + e.getMessage());
        }
    }
}