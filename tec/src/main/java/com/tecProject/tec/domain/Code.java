package com.tecProject.tec.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EntityListeners(AuditingEntityListener.class)
@Table (name = "CODE")

public class Code {
	
	//번역코드의 고유식별자_Primary Key
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CODE_ID", nullable = false)
    private Integer codeId;
		
		//번역요청 ID
		@Column(name = "USER_ID", length = 30)
		private String userId;
		
		//원본코드
		@Column(name = "ORIGIN_CODE", length = 100, nullable = false)
		private String originCode;
		
		//번역결과 JSON
		@Column(name = "TRANSLATE_CODE", length = 255, nullable = false, columnDefinition = "JSON")
		private String translateCode;
}