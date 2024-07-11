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
@Table(name = "hoa_don")
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    Integer id;

    @ManyToOne
    @JoinColumn(name = "id_khach_hang")
    KhachHang idKH;

    @Column(name = "trang_thai")
    String trangThai;

    @Column(name = "ngay_tao")
    LocalDateTime ngayTao;

    @Column(name = "ngay_sua")
    LocalDateTime ngaySua;

    @Column(name = "dia_chi")
    String diaChi;

    @Column(name = "so_dien_thoai")
    String soDT;
}
