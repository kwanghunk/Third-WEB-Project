package com.tecProject.tec.controller;

import java.util.Map;

import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tecProject.tec.domain.Code;
import com.tecProject.tec.repository.CodeRepository;

@RestController
@RequestMapping("/api")
public class TranslateController {

    private final CodeRepository codeRepository;

    public TranslateController(CodeRepository codeRepository) {
        this.codeRepository = codeRepository;
    }

    @GetMapping("/translate")
    public ResponseEntity<?> translateKeyword(@RequestParam String keyword) {
        Code code = codeRepository.findByOriginCode(keyword);
        if (code != null) {
            return ResponseEntity.ok(Map.of("translation", code.getTranslateCode()));
        } else {
            return ResponseEntity.status(HttpStatusCode.valueOf(404))
                                 .body(Map.of("error", "Keyword not found"));
        }
    }
}

