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
@Table(name = "khach_hang")
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "ho_ten")
    private String ten;
    @Column(name = "dia_chi")
    private String diachi;
    @Column(name = "sdt")
    private String sdt;
    @Column(name = "trang_thai")
    private String trangthai;
    @Column(name = "ngay_tao")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaytao;
    @Column(name = "ngay_sua")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaysua;

    @Override
    public String toString() {
        return "KhachHang{" +
                "id=" + id +
                ", ten='" + ten + '\'' +
                ", diachi='" + diachi + '\'' +
                ", sdt='" + sdt + '\'' +
                ", trangthai='" + trangthai + '\'' +
                ", ngaytao=" + ngaytao +
                ", ngaysua=" + ngaysua +
                '}';
    }
}
