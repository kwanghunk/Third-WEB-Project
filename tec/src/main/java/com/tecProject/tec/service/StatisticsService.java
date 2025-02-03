package com.tecProject.tec.service;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;


import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.tecProject.tec.auth.IpUtil;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class StatisticsService {

    private final RedisTemplate<String, Integer> redisTemplate;
    private final IpUtil ipUtil;
    private static final String VISITOR_COUNT_KEY = "VISITOR_COUNT";
    private static final long EXPIRATION_TIME = 24 * 60 * 60; //24시간 동안 유지

    private static final String DATE_FORMAT = "yyyy-MM-dd"; //날짜 형식
    private static final String VISITOR_KEY_PREFIX = "VISITOR_COUNT:"; //날짜별 방문자 키

    public StatisticsService(RedisTemplate<String, Integer> redisTemplate, IpUtil ipUtil) {
        this.redisTemplate = redisTemplate;
        this.ipUtil = ipUtil;
    }
    
    //방문자를 숫자로 기록하는 메서드
    public void recordVisitor(HttpServletRequest request) {
        //클라이언트의 IP 주소 가져오기
        String ipAddress = ipUtil.getClientIp(request);
        
        // 날짜별 방문자 기록
        recordVisitor(ipAddress);
        
        //Redis 키 생성
        String key = "RATE_LIMIT:" + ipAddress;

        //현재 요청 횟수 가져오기
        Integer currentCount = redisTemplate.opsForValue().get(key);

        //키가 없으면 초기화
        if (currentCount == null) {
            redisTemplate.opsForValue().set(key, 1, EXPIRATION_TIME, TimeUnit.SECONDS);
        } else {
            //요청 횟수 증가
            redisTemplate.opsForValue().increment(key);
        }

        //방문자 총 카운트 증가
        redisTemplate.opsForValue().increment(VISITOR_COUNT_KEY, 1);

        //만약 키가 만료되어 있다면 다시 설정
        redisTemplate.expire(VISITOR_COUNT_KEY, EXPIRATION_TIME, TimeUnit.SECONDS);
    }

    //총 방문자 수 조회 메서드
    public Integer getTotalVisitorCount() {
        Integer totalCount = redisTemplate.opsForValue().get(VISITOR_COUNT_KEY);
        return totalCount == null ? 0 : totalCount;
    }

    //방문자 통계 데이터를 반환하는 메서드
    public Map<String, Integer> getVisitorStatistics() {
        Map<String, Integer> visitorStatistics = new HashMap<>();

        //Redis에 저장된 모든 방문자 데이터 조회
        Set<String> keys = redisTemplate.keys("RATE_LIMIT:*");
        if (keys != null) {
            for (String key : keys) {
                Integer count = redisTemplate.opsForValue().get(key);
                if (count != null) {
                    visitorStatistics.put(key, count);
                }
            }
        }
        return visitorStatistics;
    }

    //특정 클라이언트 IP의 통계 데이터를 반환하는 메서드
    public Integer getStatisticsByIp(HttpServletRequest request) {
        String ipAddress = ipUtil.getClientIp(request); //IPUtil을 사용해 클라이언트 IP 가져오기
        String key = "RATE_LIMIT:*:" + ipAddress;

        // Redis에서 해당 IP의 요청 횟수 조회
        Integer count = redisTemplate.opsForValue().get(key);
        return count == null ? 0 : count;
    }
    
    //방문자 데이터를 기록 (날짜별로)
    public void recordVisitor(String ipAddress) {
        //오늘 날짜 가져오기
    	String today = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
        String dailyKey = "VISITOR_COUNT:" + today;

        //해당 날짜의 방문자 수 증가
        redisTemplate.opsForValue().increment(dailyKey, 1);

        //키가 만료되어 있으면 다시 설정
        if (redisTemplate.getExpire(dailyKey) <= 0) {
            redisTemplate.expire(dailyKey, 7, TimeUnit.DAYS);
        }
    }

    //날짜별 방문자 통계 조회
    public Map<String, Integer> getDailyVisitorStatistics() {
        Map<String, Integer> dailyStatistics = new LinkedHashMap<>();

        //최근 7일 데이터 가져오기
        for (int i = 0; i < 7; i++) {
            Calendar calendar = Calendar.getInstance();
            calendar.add(Calendar.DATE, -i);
            String date = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
            String key = "VISITOR_COUNT:" + date;

            //Redis에서 키 조회
            Integer count = redisTemplate.opsForValue().get(key);
            dailyStatistics.put(date, count == null ? 0 : count);

            //값이 없으면 기본값 0
            if (count == null) {
                System.out.println("Redis 키 없음: " + key);
            }
            dailyStatistics.put(date, count == null ? 0 : count);
        }
        return dailyStatistics;
    }
}