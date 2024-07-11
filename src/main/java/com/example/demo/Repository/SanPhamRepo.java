package com.example.demo.Repository;

import com.example.demo.Model.DanhMuc;
import com.example.demo.Model.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SanPhamRepo extends JpaRepository<SanPham, Integer> {
    List<SanPham> findAllByOrderByNgayTaoDesc();
}
