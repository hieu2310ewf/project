package com.example.sd18307.controller;

import com.example.sd18307.Respository.KhachHangRP;
import com.example.sd18307.Respository.LoginRP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class Login {
    @GetMapping("/layout/login")
    public String login(){
        return "/layout/login";
    }


}
