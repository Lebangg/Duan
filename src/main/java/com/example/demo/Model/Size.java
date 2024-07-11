package com.example.demo.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "size")
public class Size {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    Integer id;

    @Column(name = "ma_size")
    String maSize;

    @Column(name = "ten_size")
    String tenSize;

    @Column(name = "trang_thai")
    String trangThai;

    @Column(name = "ngay_sua")
    LocalDateTime ngaySua;

    @Column(name = "ngay_tao")
    LocalDateTime ngayTao;
}
