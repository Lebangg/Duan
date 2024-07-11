package com.example.demo.Controller;

import com.example.demo.Model.KhachHang;
import com.example.demo.Repository.KhachHangRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;

@Controller
public class KhachHangController {
    @Autowired
    KhachHangRepo khachHangRepo;

    @GetMapping("/khachHang/hienthi")
    public String hienthi(Model model) {
        model.addAttribute("listKH", khachHangRepo.findAll());
        return "KhachHang";
    }

    @GetMapping("/khachhang/delete")
    public String delete(@RequestParam("id") Integer id) {
        khachHangRepo.deleteById(id);
        return "redirect:/khachHang/hienthi";
    }

    @GetMapping("/khachHang/edit")
    public String edit(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("kh", khachHangRepo.getReferenceById(id));
        return "KhachHangUpdate";
    }

    @PostMapping("/khachHang/add")
    public String add(KhachHang kh) {
        LocalDateTime date = LocalDateTime.now();
        kh.setNgayTao(date);
        kh.setNgaySua(date);
        khachHangRepo.save(kh);
        return "redirect:/khachHang/hienthi";
    }

    @PostMapping("/khachHang/update")
    public String update(KhachHang kh,@RequestParam("id") Integer id) {
        LocalDateTime date = LocalDateTime.now();
        kh.setId(id);
        kh.setNgayTao(date);
        kh.setNgaySua(date);
        khachHangRepo.save(kh);
        return "redirect:/khachHang/hienthi";
    }
}
