package com.example.demo.Repository;

import com.example.demo.Model.HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface HoaDonRepo extends JpaRepository<HoaDon, Integer> {
}
