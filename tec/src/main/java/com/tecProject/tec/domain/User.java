package com.tecProject.tec.domain;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@EntityListeners(AuditingEntityListener.class)
public class User {

	@Id
	@SequenceGenerator(
			name = "user_no",
			sequenceName = "user_no_seq",
			allocationSize = 1,
			initialValue = 1
			)
	@GeneratedValue(generator = "user_no")
	@Column(name = "user_no")
	private int userNo;
	
	@Column(name = "user_type")
	private int userType;
	
	@Column()
	
}
