package com.example.sd18307.entity;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "phieu_muon")
public class PhieuMuon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_phieu_muon")
    private Integer ma;

    @ManyToOne
    @JoinColumn(name = "ma_khach_hang")
    private KhachHang khachhang;

    @Column(name = "ngay_muon")
    private Date ngaymuon;

    @Column(name = "ngay_tra")
    private Date ngaytra;
}