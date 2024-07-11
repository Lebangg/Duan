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
@Table(name = "hdct")
public class HDCT {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    Integer id;

    @ManyToOne
    @JoinColumn(name = "id_hoa_don")
    HoaDon idHD;

    @ManyToOne
    @JoinColumn(name = "id_ctsp")
    CTSP idCTSP;

    @Column(name = "so_luong_mua")
    Integer soLuongMua;

    @Column(name = "gia_ban")
    Double giaBan;

    @Column(name = "tong_tien")
    Double tongTien;

    @Column(name = "trang_thai")
    String trangThai;

    @Column(name = "ngay_tao")
    LocalDateTime ngayTao;

    @Column(name = "ngay_sua")
    LocalDateTime ngaySua;
}
