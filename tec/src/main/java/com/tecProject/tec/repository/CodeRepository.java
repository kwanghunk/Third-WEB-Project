package com.tecProject.tec.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tecProject.tec.domain.Code;

@Repository
public interface CodeRepository extends JpaRepository<Code, Long> {
    Code findByOriginCode(String originCode);
}

