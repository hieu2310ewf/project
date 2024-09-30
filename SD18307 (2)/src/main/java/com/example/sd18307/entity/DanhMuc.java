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
@Table(name = "danh_muc")
public class DanhMuc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Integer id;
    @Column(name = "ten_danh_muc")
    private String ten;
    @Column(name = "trang_thai")
    private  boolean trangthai;

    @Override
    public String toString() {
        return "DanhMuc{" +
                "id=" + id +
                ", ten='" + ten + '\'' +
                ", trangthai=" + trangthai +
                '}';
    }
}
