package com.example.sd18307.Respository;

import com.example.sd18307.entity.DanhMuc;
import com.example.sd18307.entity.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KhachHangRP extends JpaRepository<KhachHang, Integer> {
}
