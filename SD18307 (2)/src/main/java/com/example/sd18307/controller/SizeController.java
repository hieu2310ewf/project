package com.example.sd18307.controller;

import com.example.sd18307.Respository.KhachHangRP;
import com.example.sd18307.Respository.MauSacRP;
import com.example.sd18307.Respository.SizeRP;
import com.example.sd18307.entity.MauSac;
import com.example.sd18307.entity.SanPham;
import com.example.sd18307.entity.Size;
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
public class SizeController {
    @Autowired
    SizeRP sizeRP;


    @GetMapping("/size/hien-thi")
    public String hienThi(@RequestParam("page") Optional<Integer> page,
                          @RequestParam(value = "ten", required = false) String ten,
                          Model model) {
        Pageable pageable = PageRequest.of(page.orElse(0), 5);
        Page<Size> pages;

        // Tìm kiếm theo tên nếu có tham số tìm kiếm
        if (ten != null && !ten.isEmpty()) {
            pages = sizeRP.findByTenContaining(ten, pageable);
        } else {
            pages = sizeRP.findAll(pageable); // Lấy tất cả nếu không tìm kiếm
        }

        model.addAttribute("pages", pages);
        model.addAttribute("pageContent", "/WEB-INF/views/size/hien-thi.jsp"); // Gán trang con vào layout
        return "index"; // Layout chung
    }
    @PostMapping("/size/save")
    public String addsanpham(@ModelAttribute Size size) {
        sizeRP.save(size);

        return "redirect:/size/hien-thi";
    }
    @GetMapping("/size/hien-thi/delete")
    public String deletesanpham(@RequestParam("id") Integer id) {
        sizeRP.deleteById(id);
        return "redirect:/size/hien-thi";
    }

    @GetMapping("/size/update")
    public String update(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("objInput", sizeRP.findById(id).orElse(new Size()));
        return "size/detail";
    }


    @PostMapping("/size/edit")
    public String edit(@ModelAttribute("Size") Size objInput) {
        sizeRP.save(objInput);
        return "redirect:/size/hien-thi";
    }



}
