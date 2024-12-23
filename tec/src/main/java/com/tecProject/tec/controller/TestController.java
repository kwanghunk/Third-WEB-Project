package com.tecProject.tec.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tecProject.tec.domain.Code;
import com.tecProject.tec.service.TestService;

@RestController
@RequestMapping("/test/code")
public class TestController {

	private final TestService testService;
	
    // 서비스 사용 준비
    public TestController(TestService testService) {
        this.testService = testService;
    }
    
    // 자동완성 키워드 검색 기능
    @GetMapping("/suggestions")
    public ResponseEntity<List<String>> getSeggestions(@RequestParam("value") String query) {
    	List<String> suggestions = testService.getSuggestions(query);
    	return ResponseEntity.ok(suggestions);
    }
    
    // 특정 키워드의 상세 번역 정보 조회
    @GetMapping("/details")
    public ResponseEntity<Code> getDetails(@RequestParam("keyword") String keyword) {
    	return testService.getCodeDetails(keyword)
    			.map(ResponseEntity::ok)
    			.orElse(ResponseEntity.notFound().build());
    }

    // 번역데이터 저장 또는 수정 기능
    @PostMapping
    public ResponseEntity<Code> saveCode(@RequestBody Code code) {
    	Code savedCode = testService.saveCode(code);
    	return ResponseEntity.ok(savedCode);
    }
    
}