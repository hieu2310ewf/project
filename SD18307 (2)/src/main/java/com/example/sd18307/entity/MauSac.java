package com.example.sd18307.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "mau_sac")

public class MauSac {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "ten_mau_sac")
    private String ten;
    @Column(name = "trang_thai")
    private boolean trangthai;

    @Override
    public String toString() {
        return "MauSac{" +
                "id=" + id +
                ", ten=" + ten +
                ", trangthai=" + trangthai +
                '}';
    }
}
