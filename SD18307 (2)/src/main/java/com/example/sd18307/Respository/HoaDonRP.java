package com.example.sd18307.Respository;

import com.example.sd18307.entity.HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HoaDonRP extends JpaRepository<HoaDon, Integer> {
}
