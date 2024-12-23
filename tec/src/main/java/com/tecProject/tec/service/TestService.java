package com.tecProject.tec.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.tecProject.tec.domain.Code;
import com.tecProject.tec.repository.TestRepository;

@Service
public class TestService {

	private final TestRepository testRepository;
	
	//리포지토리 사용 준비
	public TestService(TestRepository testRepository) {
        this.testRepository = testRepository;
    }
	
	// 자동완성 키워드 검색
	public List<String> getSuggestions(String query) {
		
		return testRepository.findByOriginCodeStartingWith(query)
				.stream()
				.map(Code::getOriginCode)
				.collect(Collectors.toList());
	}
	
	// 특정 키워드의 상세 정보 조회
	public Optional<Code> getCodeDetails(String keyword) {
		return testRepository.findByOriginCode(keyword);
	}

	// 번역 데이터 저장 또는 수정 기능
	public Code saveCode(Code code) {
		return testRepository.save(code);
	}
}