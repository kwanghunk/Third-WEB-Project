package com.tecProject.tec.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tecProject.tec.service.StatisticsService;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/statistics")
public class StatisticsController {
	
	private final StatisticsService statisticsService;
	
	public StatisticsController(StatisticsService statisticsService) {
		this.statisticsService = statisticsService;
	}

    //전체 방문자 통계 데이터를 반환하는 API
//    @GetMapping("/all")
//    public ResponseEntity<Map<String, Integer>> getAllVisitorStatistics() {
//        return ResponseEntity.ok(statisticsService.getVisitorStatistics());
//    }
	
	//날짜별 전체 방문자 통계를 반환하는 API
	@GetMapping("/all")
	public ResponseEntity<Map<String, Object>> getAllVisitorStatisticsWithDates() {
	    try {
	        // 날짜별 통계 가져오기
	        Map<String, Integer> dailyVisitorStatistics = statisticsService.getDailyVisitorStatistics();

	        // IP별 통계 가져오기
	        Map<String, Integer> ipVisitorStatistics = statisticsService.getVisitorStatistics();

	        // 통합 데이터 구성
	        Map<String, Object> combinedStatistics = new LinkedHashMap<>();
	        combinedStatistics.put("dailyStatistics", dailyVisitorStatistics);
	        combinedStatistics.put("ipStatistics", ipVisitorStatistics);

	        return ResponseEntity.ok(combinedStatistics);
	    } catch (Exception e) {
	        return ResponseEntity.status(500).body(null);
	    }
	}

    
	//특정 Ip의 요청 횟수 반환 API
	@GetMapping("/ip")
	public ResponseEntity<Integer> getVisitorStatisticsByIp(HttpServletRequest request) {
		return ResponseEntity.ok(statisticsService.getStatisticsByIp(request));
	}
	
	//총 방문자 수 반환 API
	@GetMapping("/total")
	public ResponseEntity<Integer> getTotalVisitorCount(){
		return ResponseEntity.ok(statisticsService.getTotalVisitorCount());
	}
	
    //날짜별 방문자 통계 API
    @GetMapping("/daily")
    public ResponseEntity<?> getDailyVisitorStatistics() {
        try {
            // 날짜별 통계 반환
            return ResponseEntity.ok(statisticsService.getDailyVisitorStatistics());
        } catch (Exception e) {
            return ResponseEntity.status(500).body("날짜별 통계 조회 중 오류 발생: " + e.getMessage());
        }
    }
    
    //방문자를 기록하는 API
    @GetMapping("/record")
    public ResponseEntity<String> recordVisitor(HttpServletRequest request) {
        try {
            // 방문자 기록
            statisticsService.recordVisitor(request);

            // 성공 메시지 반환
            return ResponseEntity.ok("방문자 기록 성공");
        } catch (Exception e) {
            // 에러 발생 시 메시지 반환
            return ResponseEntity.status(500).body("방문자 기록 중 오류 발생: " + e.getMessage());
        }
    }
}