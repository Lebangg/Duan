package com.example.demo.Repository;

import com.example.demo.Model.CTSP;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CTSPRepo extends JpaRepository<CTSP, Integer> {
}
