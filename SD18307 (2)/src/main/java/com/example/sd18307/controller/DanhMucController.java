package com.example.sd18307.controller;

import com.example.sd18307.Respository.DanhMucRP;
import com.example.sd18307.entity.DanhMuc;
import com.example.sd18307.entity.MauSac;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.Optional;

@Controller
public class DanhMucController {
    @Autowired
    DanhMucRP danhMucRP;

    @GetMapping("/danh-muc/hien-thi")
    public String hienThi(@RequestParam("page") Optional<Integer> page,Model model) {
        Pageable pageable = PageRequest.of(page.orElse(0),5);
        model.addAttribute("pages", danhMucRP.findAll(pageable));
        model.addAttribute("pageContent", "/WEB-INF/views/danh-muc/hien-thi.jsp"); // Gán trang con vào layout
        return "index"; // Layout chung
    }






}
