package com.example.sd18307.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NhanVien {
    private String stt;
    private Integer id;
    private String hoten;
    private String luong;
    private String gioitinh;
    private String phongban;
    private String trangthai;

}
