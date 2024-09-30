package com.example.sd18307.controller;

import com.example.sd18307.Respository.HoaDonRP;
import com.example.sd18307.entity.HoaDon;
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
public class HoaDonController {
    @Autowired
    HoaDonRP hoadonRP ;
    @GetMapping("/hoa-don/hien-thi")
    public String hoadon(@RequestParam("page") Optional<Integer> page, Model model){
        Pageable pageable = PageRequest.of(page.orElse(0),5);
        model.addAttribute("pages",hoadonRP.findAll(pageable));
        return "hoa-don/hien-thi";
    }
    @PostMapping("/hoa-don")
    public String addhoadon(@ModelAttribute HoaDon hoadon){
        hoadon.setNgaytao(new Date());
        hoadon.setNgaysua(new Date());
        hoadonRP.save(hoadon);

        return "redirect:/hoa-don/hien-thi";
    }
    @GetMapping("/hoa-don/hien-thi/delete")
    public String deletehoadon(@RequestParam("id") Integer id){
        hoadonRP.deleteById(id);
        return "redirect:/hoa-don/hien-thi";
    }
    @GetMapping("/hoa-don/update")
    public String update(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("objInput", hoadonRP.findById(id).orElse(new HoaDon()));
        return "hoa-don/detail";
    }


    @PostMapping("/hoa-don/edit")
    public String edit(@ModelAttribute("HoaDon") HoaDon objInput) {

        objInput.setNgaysua(new Date());
        hoadonRP.save(objInput);
        return "redirect:/hoa-don/hien-thi";
    }

}
