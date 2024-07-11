package com.example.demo.Repository;

import com.example.demo.Model.DTO.DanhMucDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface DanhMucDTORepo extends JpaRepository<DanhMucDTO,String> {

        @Query(value ="SELECT danh_muc.ten_danh_muc, COUNT(san_pham.id) as soluong " +
                "FROM san_pham join danh_muc on san_pham.id_danh_muc = danh_muc.id\n" +
                "group by danh_muc.ten_danh_muc", nativeQuery = true)
        List<DanhMucDTO> getDanhMucDTO();
}