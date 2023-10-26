package com.example.demo.service;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Servico {

    @RequestMapping("/hello")
    public String hello() {
        return "Hello World!!!";
    }

}
