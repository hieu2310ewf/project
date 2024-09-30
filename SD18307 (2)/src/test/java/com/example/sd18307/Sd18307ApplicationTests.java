package com.example.sd18307;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Sd18307ApplicationTests {

    @Test
    void contextLoads() {
    }

}

//@Controller
//public class NhanVienControler {
    //ArrayList<NhanVien> list = new ArrayList<>();
   // public NhanVienControler(){
     //   list.add(new NhanVien(1,"hieu","hieu@gmai","hoatdong"));
   // }
   // @GetMapping("/nhan-vien")
    //public String nhanvien(Model model){
      //  model.addAttribute("ds",list);
      //  return "nhan-vien";
    //}

   // @PostMapping("/nhan-vien")
   // public String add(HttpServletRequest request,
       //               @ModelAttribute("nhanvien") NhanVien nhanvien){
       // list.add(nhanvien);
       // return "redirect:/nhan-vien";
   // }


   // @GetMapping("/nhan-vien/delete")
   // public String delete(@RequestParam("id") Integer id){
   //     for (int i = 0;i<list.size();i++){
     //       if (list.get(i).getId().equals(id)){
     //           list.remove(list.get(i));
     //       }
    //    }
     //   return "redirect:/nhan-vien";
    //}
