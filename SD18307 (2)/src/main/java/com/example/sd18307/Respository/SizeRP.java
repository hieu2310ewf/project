package com.example.sd18307.Respository;

import com.example.sd18307.entity.MauSac;
import com.example.sd18307.entity.Size;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SizeRP extends JpaRepository<Size, Integer> {
    Page<Size> findByTenContaining(String ten, Pageable pageable);
}
