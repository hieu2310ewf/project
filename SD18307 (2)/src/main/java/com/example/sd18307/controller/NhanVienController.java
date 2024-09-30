package com.example.sd18307.controller;

import com.example.sd18307.entity.NhanVien;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
@Controller
public class NhanVienController {
    ArrayList<NhanVien> list = new ArrayList<>();
    public NhanVienController(){
        list.add(new NhanVien("1",1,"hieu","2000","nam","phong1","hoatdong"));
        list.add(new NhanVien("1",2,"hieu","2000","nam","phong1","hoatdong"));
    }

    @GetMapping("/nhan-vien")
    public String nhanvien(Model model){
        model.addAttribute("ds",list);
        return "nhan-vien";
    }
    @PostMapping("/nhan-vien")
    public String add(HttpServletRequest request,
                      @ModelAttribute("nhanvien") NhanVien nhanvien){
        list.add(nhanvien);
        return "redirect:/nhan-vien";
    }

    @GetMapping("/nhan-vien/delete")
    public String delete(@RequestParam("id") Integer id){
        for (int i = 0;i<list.size();i++){
            if (list.get(i).getId().equals(id)){
                list.remove(list.get(i));
            }
        }
        return "redirect:/nhan-vien";
    }

}
