package com.example.demo.Controller;

import com.example.demo.Model.CTSP;
import com.example.demo.Model.MauSac;
import com.example.demo.Model.SanPham;
import com.example.demo.Model.Size;
import com.example.demo.Repository.CTSPRepo;
import com.example.demo.Repository.MauSacRepo;
import com.example.demo.Repository.SanPhamRepo;
import com.example.demo.Repository.SizeRepo;
import org.hibernate.grammars.hql.HqlParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Controller
public class CTSPController {
    @Autowired
    SanPhamRepo sanPhamRepo;

    @Autowired
    SizeRepo sizeRepo;

    @Autowired
    MauSacRepo mauSacRepo;

    @Autowired
    CTSPRepo ctspRepo;

    @GetMapping("/ctsp/hienthi")
    public String hienthi(Model model) {
        model.addAttribute("listCTSP", ctspRepo.findAll());
        return "CTSP";
    }

    @GetMapping("/ctsp/delete")
    public String delete(@RequestParam("id") Integer id) {
        ctspRepo.deleteById(id);
        return "redirect:/ctsp/hienthi";
    }

    @GetMapping("/ctsp/edit")
    public String edit(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("ctsp", ctspRepo.getReferenceById(id));
        return "CTSPUpdate";
    }

    @PostMapping("/ctsp/add")
    public String add( CTSP ctsp) {
        LocalDateTime dateTime = LocalDateTime.now();
        ctsp.setNgayTao(dateTime);
        ctsp.setNgaySua(dateTime);
        ctspRepo.save(ctsp);
        return "redirect:/ctsp/hienthi";
    }

    @PostMapping("/ctsp/update")
    public String update(CTSP ctsp, @RequestParam("id") Integer id) {
        LocalDateTime dateTime = LocalDateTime.now();
        if(ctsp.getId() != null){
            ctsp.setId(id);
            ctsp.setNgayTao(dateTime);
            ctsp.setNgaySua(dateTime);
            ctspRepo.save(ctsp);
        }
        return "redirect:/ctsp/hienthi";
    }

    @ModelAttribute("listMS")
    public List<MauSac> getlistMS() {
        return mauSacRepo.findAll();
    }

    @ModelAttribute("listSP")
    public List<SanPham> getlistSP() {
        return sanPhamRepo.findAll();
    }

    @ModelAttribute("listSize")
    public List<Size> getlistSize() {
        return sizeRepo.findAll();
    }
}
