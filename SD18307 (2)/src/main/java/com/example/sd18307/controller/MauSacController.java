package com.example.sd18307.controller;


import com.example.sd18307.Respository.MauSacRP;
import com.example.sd18307.entity.MauSac;
import com.example.sd18307.entity.SanPham;
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
import java.util.List;
import java.util.Optional;
@Controller
public class MauSacController {
    @Autowired
    MauSacRP mauSacRP;


    @GetMapping("/mau-sac/hien-thi")
    public String hienThi(@RequestParam("page") Optional<Integer> page,
                          @RequestParam(value = "ten", required = false) String ten,
                          Model model) {
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<MauSac> pages;

        // Tìm kiếm theo tên nếu có tham số tìm kiếm
        if (ten != null && !ten.isEmpty()) {
            pages = mauSacRP.findByTenContaining(ten, pageable);
        } else {
            pages = mauSacRP.findAll(pageable); // Lấy tất cả nếu không tìm kiếm
        }

        model.addAttribute("pages", pages);
        model.addAttribute("pageContent", "/WEB-INF/views/mau-sac/hien-thi.jsp"); // Gán trang con vào layout
        return "index"; // Layout chung
    }
    @PostMapping("/mau-sac/save")
    public String addsanpham(@ModelAttribute MauSac mauSac) {
        mauSacRP.save(mauSac);

        return "redirect:/mau-sac/hien-thi";
    }
    @GetMapping("/mau-sac/hien-thi/delete")
    public String deletesanpham(@RequestParam("id") Integer id) {
        mauSacRP.deleteById(id);
        return "redirect:/mau-sac/hien-thi";
    }

    @GetMapping("/mau-sac/update")
    public String update(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("objInput", mauSacRP.findById(id).orElse(new MauSac()));
        return "mau-sac/detail";
    }


    @PostMapping("/mau-sac/edit")
    public String edit(@ModelAttribute("MauSac") MauSac objInput) {
        mauSacRP.save(objInput);
        return "redirect:/mau-sac/hien-thi";
    }




}

