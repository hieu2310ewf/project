package com.example.sd18307.controller;

import com.example.sd18307.Respository.KhachHangRP;
import com.example.sd18307.entity.KhachHang;
import org.springframework.beans.factory.annotation.Autowired;
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
public class KhachHangController {
    @Autowired
    KhachHangRP khachhangRP ;
    @GetMapping("/khach-hang/hien-thi")
    public String mausac(@RequestParam("page") Optional<Integer>page, Model model){
        Pageable pageable = PageRequest.of(page.orElse(0) ,5);
        model.addAttribute("pages",khachhangRP.findAll(pageable));
        return "khach-hang/hien-thi";
    }
    @PostMapping("/khach-hang/save")
    public String addkhachhang(@ModelAttribute KhachHang khachhang){
        khachhang.setNgaytao(new Date());
        khachhang.setNgaysua(new Date());
        khachhangRP.save(khachhang);
        return "redirect:/khach-hang/hien-thi";
    }
    @GetMapping("/khach-hang/hien-thi/delete")
    public String deletekhachhang(@RequestParam("id") Integer id){
        khachhangRP.deleteById(id);
        return "redirect:/khach-hang/hien-thi";
    }
    @GetMapping("/khach-hang/update")
    public String update(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("objInput", khachhangRP.findById(id).orElse(new KhachHang()));
        return "khach-hang/detail";
    }


    @PostMapping("/khach-hang/edit")
    public String edit(@ModelAttribute("KhachHang") KhachHang objInput) {

        objInput.setNgaysua(new Date());
        khachhangRP.save(objInput);
        return "redirect:/khach-hang/hien-thi";
    }



}