package com.tecProject.tec.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tecProject.tec.domain.Code;
import com.tecProject.tec.service.TranslationService;

@RestController
@RequestMapping("/api/code") // 번역 API 주소
public class TranslationController {
	
	private final TranslationService translationService;
	
    // 서비스 사용 준비
    public TranslationController(TranslationService transltionService) {
        this.translationService = transltionService;
    }
    
    // 문장 번역 API
    @GetMapping
    public ResponseEntity<String> getTranslation(
    		@RequestParam("origin") String originSentence,
    		@RequestParam("language") String language
	) {
        String translatedSentence = translationService.translateSentence(originSentence, language);
        return ResponseEntity.ok(translatedSentence);
    }

/*
    // 모든 번역 데이터 가져옴
    @GetMapping("/all")
    public ResponseEntity<List<Code>> getAllCodes() {
    	return ResponseEntity.ok(translationService.getAllCodes());
    }
    
    // 특정 번역 데이터를 가져옴 (id로 찾음)
    @GetMapping("/{id}")
    public ResponseEntity<Code> getCodeById(@PathVariable Integer id) {
    	return ResponseEntity.ok(translationService.getCodeById(id));
    }
    
    // 새로운 번역 데이터 추가
    @PostMapping
    public ResponseEntity<Code> createCode(@RequestBody Code code) {
    	return ResponseEntity.ok(translationService.createCode(code));
    }
    
    // 기존 번역 데이터 수정
    @PutMapping("/{id}")
    public ResponseEntity<Code> updateCode(@PathVariable Integer id, @RequestBody Code updatedCode) {
    	return ResponseEntity.ok(translationService.updateCode(id, updatedCode));
    }
    
    // 번역 데이터 삭제 (id로 삭제)
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteCode(@PathVariable Integer id) {
    	translationService.deleteCode(id); // id로 데이터를 삭제
        return ResponseEntity.ok("번역 데이터가 삭제되었습니다.");
    }

*/
}