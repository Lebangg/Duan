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
@Table(name = "khach_hang")
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    Integer id;

    @Column(name = "ho_ten")
    String hoTen;

    @Column(name = "dia_chi")
    String diaChi;

    @Column(name = "sdt")
    String soDT;

    @Column(name = "trang_thai")
    String trangThai;

    @Column(name = "ngay_tao")
    LocalDateTime ngayTao;

    @Column(name = "ngay_sua")
    LocalDateTime ngaySua;
}
