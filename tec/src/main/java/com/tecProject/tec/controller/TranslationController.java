package com.tecProject.tec.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tecProject.tec.service.IpService;
import com.tecProject.tec.service.TranslationService;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/code")
public class TranslationController {
	
	private final TranslationService translationService;
	private final IpService ipService;
	
    //서비스 사용 준비
    public TranslationController(TranslationService transltionService, IpService ipService) {
    	this.translationService = transltionService;
    	this.ipService = ipService;

    }
    //문장 번역 API
    @GetMapping
    public ResponseEntity<String> getTranslation(
    		@RequestParam("origin") String originSentence,
    		@RequestParam("language") String language
	) {
        String translatedSentence = translationService.translateSentence(originSentence, language);
        return ResponseEntity.ok(translatedSentence);
    }
    
    //회원/비회원 요청 조회 API
    @GetMapping("/clicks")
    public ResponseEntity<Map<String, Integer>> getRequestCount(
            @RequestHeader(value = "Authorization", required = false) String accessToken,
            HttpServletRequest request
    ) {
        try {
            //회원 여부 확인
            boolean isMember = (accessToken != null && accessToken.startsWith("Bearer "));

            //요청 횟수 조회
            int clickCount = ipService.getRequestCount(request, accessToken, isMember);

            Map<String, Integer> response = new HashMap<>();
            response.put("clickCount", clickCount);

            return ResponseEntity.ok(response);
        } catch (Exception e) {
            System.err.println("요청 횟수 조회 실패: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    
    //회원/비회원 요청 증가 API
    @PostMapping("/increment-clicks")
    public ResponseEntity<String> incrementClicks(
            @RequestHeader(value = "Authorization", required = false) String accessToken,
            HttpServletRequest request
    ) {
        try {
            //회원 여부 확인
            boolean isMember = (accessToken != null && accessToken.startsWith("Bearer "));

            //요청 가능 여부 확인 및 증가
            boolean allowed = ipService.isRequestAllowed(request, accessToken, isMember);
            if (!allowed) {
                return ResponseEntity.status(HttpStatus.FORBIDDEN).body("요청 제한 초과");
            }

            return ResponseEntity.ok("요청 가능: 요청 횟수가 증가했습니다.");
        } catch (Exception e) {
            System.err.println("요청 횟수 증가 실패: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("오류 발생: " + e.getMessage());
        }
    }
}