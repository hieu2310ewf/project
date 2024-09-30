package com.example.sd18307.Respository;

import com.example.sd18307.entity.MauSac;
import com.example.sd18307.entity.SanPham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MauSacRP  extends JpaRepository<MauSac,Integer> {
    Page<MauSac> findByTenContaining(String ten, Pageable pageable);

}
