package com.example.sd18307.Respository;

import com.example.sd18307.entity.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SanPhamRP  extends JpaRepository<SanPham ,Integer> {

}
