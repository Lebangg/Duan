package com.example.demo.Repository;

import com.example.demo.Model.DanhMuc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DanhMucRepo extends JpaRepository<DanhMuc, Integer> {

}
