package com.example.sd18307.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "hoa_don")
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "id_khach_hang")
    private KhachHang khachhang;
    @Column(name = "trang_thai")
    private String trangthai;
    @Column(name = "ngay_sua ")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaysua;
    @Column(name = "ngay_tao")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaytao;
    @Column(name = "dia_chi")
    private String diachi;
    @Column(name = "so_dien_thoai")
    private String sdt;

    @Override
    public String toString() {
        return "HoaDon{" +
                "id=" + id +
                ", khachhang=" + khachhang +
                ", trangthai='" + trangthai + '\'' +
                ", ngaysua=" + ngaysua +
                ", ngaytao=" + ngaytao +
                ", diachi='" + diachi + '\'' +
                ", sdt='" + sdt + '\'' +
                '}';
    }
}
