package com.example.sd18307.controller;

import com.example.sd18307.Respository.SanPhamRP;
import com.example.sd18307.entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Optional;

@Controller
public class SanPhamController {

    @Autowired
    SanPhamRP sanphamRP;

    @GetMapping("/san-pham/hien-thi")
    public String sanpham(@RequestParam("page") Optional<Integer> page,Model model) {
        Pageable pageable = PageRequest.of(page.orElse(0),5);
        model.addAttribute("pages", sanphamRP.findAll(pageable));

        return "san-pham/hien-thi";
    }

    @PostMapping("/san-pham")
    public String addsanpham(@ModelAttribute SanPham sanpham) {
        sanpham.setNgaytao(new Date());
        sanphamRP.save(sanpham);

        return "redirect:/san-pham/hien-thi";
    }

    @GetMapping("/san-pham/hien-thi/delete")
    public String deletesanpham(@RequestParam("id") Integer id) {
        sanphamRP.deleteById(id);
        return "redirect:/san-pham/hien-thi";
    }


    @GetMapping("/san-pham/update")
    public String update(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("objInput", sanphamRP.findById(id).orElse(new SanPham()));
        return "san-pham/detail";
    }


    @PostMapping("/san-pham/edit")
    public String edit(@ModelAttribute("SanPham") SanPham objInput) {

        objInput.setNgaysua(new Date());
        sanphamRP.save(objInput);
        return "redirect:/san-pham/hien-thi";
    }

}


