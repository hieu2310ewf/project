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
@Table(name = "size")
public class Size {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Integer id;
    @Column(name = "ten_size")
    private String ten;
    @Column(name = "trang_thai")
    private boolean trangthai;

    @Override
    public String toString() {
        return "Size{" +
                "id=" + id +
                ", ten='" + ten + '\'' +
                ", trangthai='" + trangthai + '\'' +
                '}';
    }
    //asssss
    // Nhieu
}