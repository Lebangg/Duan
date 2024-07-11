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
@Table(name = "ctsp")
public class CTSP {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    Integer id;

    @ManyToOne
    @JoinColumn(name = "id_sp")
    SanPham idSP;

    @ManyToOne
    @JoinColumn(name = "id_mau_sac")
    MauSac idMauSac;

    @ManyToOne
    @JoinColumn(name = "id_size")
    Size idSize;

    @Column(name = "gia_ban")
    Double giaBan;

    @Column(name = "so_luong_ton")
    Integer soLuongTon;

    @Column(name = "trang_thai")
    String trangThai;

    @Column(name = "ngay_tao")
    LocalDateTime ngayTao;

    @Column(name = "ngay_sua")
    LocalDateTime ngaySua;
}
