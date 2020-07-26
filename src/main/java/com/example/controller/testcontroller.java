package com.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testcontroller {
    
    @GetMapping(value = "/hello")
    public String helle(){
        return "hello word!";
    }

}
