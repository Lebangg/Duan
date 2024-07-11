package com.example.demo.Repository;

import com.example.demo.Model.GioHang;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GioHangRepo extends JpaRepository<GioHang, Integer> {
}
