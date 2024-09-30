package com.example.sd18307.entity;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@ToString
@Table(name = "san_pham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "ma_san_pham")
    private String ma;
    @Column(name = "ten_san_pham")
    private String ten;
    @Column(name = "trang_thai")
    private String trangthai;
    @Column(name = "ngay_sua ")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaysua;
    @Column(name = "ngay_tao")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaytao;
    @ManyToOne
    @JoinColumn(name = "id_danh_muc")
    private DanhMuc danhmuc;

    @Override
    public String toString() {
        return "SanPham{" +
                "id=" + id +
                ", ma='" + ma + '\'' +
                ", ten='" + ten + '\'' +
                ", trangthai='" + trangthai + '\'' +
                ", ngaysua=" + ngaysua +
                ", ngaytao=" + ngaytao +
                ", danhmuc=" + danhmuc +
                '}';
    }
}
