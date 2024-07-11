package com.example.demo.Repository;

import com.example.demo.Model.HDCT;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface HDCTRepo extends JpaRepository<HDCT,Integer> {
}
