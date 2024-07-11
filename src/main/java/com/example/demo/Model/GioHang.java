package com.example.demo.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "gio_hang")
public class GioHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "id_nguoi_dung")
    private KhachHang khachHang;

    @ManyToOne
    @JoinColumn(name = "id_ctsp")
    private CTSP ctsp;

    @Column(name = "so_luong")
    private Integer soLuong;

    @Column(name = "trang_thai")
    private String trangThai;

    @Temporal(TemporalType.DATE)
    @Column(name = "ngay_tao")
    Date ngayTao;

    @Temporal(TemporalType.DATE)
    @Column(name = "ngay_sua")
    Date ngaySua;
}
