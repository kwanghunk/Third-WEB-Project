package com.tecProject.tec.controller;

import java.nio.charset.StandardCharsets;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriUtils;

import com.tecProject.tec.domain.SaveHistory;
import com.tecProject.tec.dto.SaveHistoryDTO;
import com.tecProject.tec.service.SaveHistoryService;

import io.jsonwebtoken.io.IOException;

@RestController
@RequestMapping("/api/history")
public class SaveHistoryController {

	private final SaveHistoryService saveHistoryService;
	
	public SaveHistoryController(SaveHistoryService saveHistoryService) {
		this.saveHistoryService = saveHistoryService;
	}
	
	// 히스토리 저장(사용자)
	@PostMapping
	public ResponseEntity<?> saveTranslationHistory(@RequestBody SaveHistoryDTO saveDTO) {
		// 인증 정보 가져오기    
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인 후 이용 가능합니다.");
        }
        String username = authentication.getName(); // JWT에서 username 추출
		try {
			saveHistoryService.createHistory(saveDTO, username);
			return ResponseEntity.ok("기록이 저장되었습니다.");
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body("기록 저장 실패: " + e.getMessage());
		}
	}
	
	// 히스토리 조회(사용자)
	@GetMapping("/load")
	public ResponseEntity<?> loadSavedHistory(@RequestParam("page") int page, @RequestParam("size") int size) {
		//인증 정보 가져오기    
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인 후 이용 가능합니다.");
        }
        String username = authentication.getName(); // JWT에서 username 추출
        PageRequest pageRequest = PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "saveTime"));
        Page<SaveHistory> savedHistories = saveHistoryService.getSavedHistories(username, pageRequest);
        
        Page<SaveHistoryDTO> result = savedHistories.map(history -> new SaveHistoryDTO(
        		history.getSaveHistoryNo(),
        		history.getUsername(),
        		history.getHistoryTitle(),
        		history.getSaveTime()
        		));
        return ResponseEntity.ok(result);
	}
	
	// 히스토리 상세조회(사용자)
	@GetMapping("/detail/{saveHistoryNo}")
	public ResponseEntity<?> loadDetailSaveHistory(@PathVariable("saveHistoryNo") int saveHistoryNo) {
		//인증 정보 가져오기    
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인 후 이용 가능합니다.");
        }
        String username = authentication.getName(); // JWT에서 username 추출
        try {
        	SaveHistoryDTO history = saveHistoryService.getHistoryById(saveHistoryNo, username);
        	return ResponseEntity.ok(history);
        } catch (IllegalArgumentException e) {
        	return ResponseEntity.status(HttpStatus.FORBIDDEN).body("저장된 번역 기록을 조회할 수 없습니다.");
        } catch (Exception e) {
        	return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("알 수 없는 오류가 발생했습니다.");
        }
	}
	
	// 히스토리 삭제(사용자)
	@DeleteMapping("/detail/{saveHistoryNo}")
	public ResponseEntity<?> deleteHistory(@PathVariable("saveHistoryNo") int saveHistoryNo) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인 후 이용 가능합니다.");
        }

        String username = authentication.getName(); // JWT에서 username 추출
        boolean isDeleted = saveHistoryService.deleteHistory(saveHistoryNo, username);
        
        if (isDeleted) {
        	return ResponseEntity.ok("히스토리가 성공적으로 삭제되었습니다.");
        } else {
        	return ResponseEntity.status(HttpStatus.FORBIDDEN).body("히스토리 삭제 권한이 없습니다.");
        }
	}

	// DB 히스토리 다운로드(사용자)
	@GetMapping("/detail/{saveHistoryNo}/download")
	public ResponseEntity<?> downloadTranslation(
			@PathVariable(value= "saveHistoryNo") int saveHistoryNo, 
			@RequestParam(value= "fileName") String fileName) throws IOException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인 후 이용 가능합니다.");
        }
        
        try {
	        String username = authentication.getName(); // JWT에서 username 추출
			// DB 데이터 조회 + 파일 내용 생성
			String fileContent = saveHistoryService.generateFileContentFromDB(saveHistoryNo, username);
			String encodedFileName = UriUtils.encode(fileName, StandardCharsets.UTF_8);
			return ResponseEntity.ok()
					.header("Content-Disposition", "attachment; filename*=UTF-8''" + encodedFileName + ".txt")
					.contentType(MediaType.TEXT_PLAIN)
					.body(fileContent);
        } catch (IllegalArgumentException e) {
        	return ResponseEntity.status(HttpStatus.FORBIDDEN).body("다운로드 권한이 없습니다.");
        } catch (Exception e) {
        	return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("파일 생성 중 오류가 발생했습니다.");
        }
	}
	
	// 세션 히스토리 다운로드(사용자)
	@PostMapping("/sessionDownload")
	public ResponseEntity<?> downloadSessionHistory(@RequestBody Map<String, String> dataToDownload) {
		try {
			// 파일 내용 생성
			String fileContent = saveHistoryService.generateFileContentFromSession(dataToDownload);
			// 파일 이름 추출
			String fileName = dataToDownload.get("fileName") != null ? dataToDownload.get("fileName") : "DECOBET"; 
			String encodedFileName = UriUtils.encode(fileName, StandardCharsets.UTF_8);
			return ResponseEntity.ok()
					.header("Content-Disposition", "attachment; filename*=UTF-8''" + encodedFileName + ".txt")
					.contentType(MediaType.TEXT_PLAIN)
					.body(fileContent);
		}catch (Exception e) {
			e.printStackTrace();
        	return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("파일 생성 중 오류가 발생했습니다.");
        }
	}
}
