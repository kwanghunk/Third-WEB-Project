package com.tecProject.tec.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tecProject.tec.domain.Code;
import com.tecProject.tec.repository.TranslationRepository;

@Service
public class AdminService {

	private final TranslationRepository translationRepository;
	private final ObjectMapper objectMapper; // JSON 파싱용
	
	//리포지토리 사용 준비
	public AdminService(TranslationRepository translationRepository, ObjectMapper objectMapper) {
        this.translationRepository = translationRepository;
        this.objectMapper = objectMapper;
	}
	
    // 데이터베이스에서 모든 데이터 가져옴
    public List<Code> getAllCodes() {
        return translationRepository.findAll();
    }
    
    // 특정 번역 데이터를 id로 가져옴
    public Code getCodeById(Integer id) {
        return translationRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("번역 데이터를 찾을 수 없습니다."));
    }
    // 새로운 번역 데이터 추가
    public Code createCode(Code code) {
        return translationRepository.save(code); // 새로운 데이터를 저장
    }
    
    // 번역 데이터를 수정
    public Code updateCode(Integer id, Code updatedCode) {
        Code existingCode = getCodeById(id); // 기존 데이터 가져옴
        existingCode.setOriginCode(updatedCode.getOriginCode()); // 새로운 데이터 덮어씌움
        existingCode.setTranslateCode(updatedCode.getTranslateCode());
        return translationRepository.save(existingCode); // 수정된 데이터 저장
    }
    
    // 번역 데이터 삭제
    public void deleteCode(Integer id) {
    	translationRepository.deleteById(id); // 데이터베이스에서 데이터 삭제
    }
}
