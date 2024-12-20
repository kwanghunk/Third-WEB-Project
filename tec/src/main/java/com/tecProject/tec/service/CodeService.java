package com.tecProject.tec.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tecProject.tec.domain.Code;
import com.tecProject.tec.repository.CodeRepository;
import org.springframework.stereotype.Service;

@Service
public class CodeService {
	
	private final CodeRepository codeRepository;
	private final ObjectMapper objectMapper; // JSON 파싱용
	
	//리포지토리 사용 준비
	public CodeService(CodeRepository codeRepository, ObjectMapper objectMapper) {
        this.codeRepository = codeRepository;
        this.objectMapper = objectMapper;
    }
/*	
    // 원본 코드를 받아서 번역된 결과를 가져오는 함수
    public String getTranslatedCode(String originCode) {
    	// 데이터베이스에서 origin_code를 찾고, translate_code를 가져옴
        return codeRepository.findByOriginCode(originCode)
                .map(Code::getTranslateCode) // 번역된 코드가 있다면 가져옴
                .orElse("번역된 결과가 없습니다."); //데이터 베이스가 없을 시 반환 값
    }
*/
    
    // 문장을 번역하면서 특수문자를 유지
    public String translateSentence(String originSentence, String language) {
        // 특수문자와 단어를 구분하는 정규식
        String[] parts = originSentence.split("(?<=[^a-zA-Z0-9])|(?=[^a-zA-Z0-9])");
        
        // 결과를 담을 StringBuilder
        StringBuilder translatedSentence = new StringBuilder();

        // 각 부분을 번역 또는 그대로 둠
        for (String part : parts) {
            if (part.matches("[a-zA-Z0-9]+")) { // 영어 단어라면
                String translatedWord = codeRepository.findByOriginCode(part)
                        .map(Code::getTranslateCode) // 번역 결과 가져오기
                        .map(translateCode -> getTranslationForLanguage(translateCode, language, part)) // 언어별 번역 처리
                        .orElse(part); // 번역 결과가 없으면 원본 사용
                translatedSentence.append(translatedWord);
            } else {
                translatedSentence.append(part); // 특수문자는 그대로 유지
            }
        }
        // 번역된 문장을 반환
        return translatedSentence.toString();
    }
    // JSON 데이터를 언어별로 처리하는 헬퍼 메서드
    private String getTranslationForLanguage(String translateCode, String language, String defaultValue) {
        try {
            var jsonNode = objectMapper.readTree(translateCode);
            return jsonNode.has(language) ? jsonNode.get(language).asText() : defaultValue;
        } catch (Exception e) {
            // JSON 파싱 실패 시 기본값 반환
            return defaultValue;
        }
    }
}

