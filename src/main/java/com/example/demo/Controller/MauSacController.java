package com.example.demo.Controller;

import com.example.demo.Model.MauSac;
import com.example.demo.Repository.MauSacRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.Date;

@Controller
public class MauSacController {
    @Autowired
    MauSacRepo mauSacRepo;

    @GetMapping("/mausac/hienthi")
    public String hienthi(Model model) {
        model.addAttribute("listMS", mauSacRepo.findAll());
        return "MauSac";
    }

    @GetMapping("/mausac/delete")
    public String delete(@RequestParam("id") Integer id) {
        mauSacRepo.deleteById(id);
        return "redirect:/mausac/hienthi";
    }

    @GetMapping("/mausac/edit")
    public String detail(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("ms", mauSacRepo.getReferenceById(id));
        return "MauSacUpdate";
    }

    @PostMapping("/mausac/add")
    public String add(MauSac mauSac) {
        LocalDateTime date  = LocalDateTime.now();
        mauSac.setNgayTao(date);
        mauSac.setNgaySua(date);
        mauSacRepo.save(mauSac);
        return "redirect:/mausac/hienthi";
    }

    @PostMapping("/mausac/update")
    public String update(MauSac mauSac , @RequestParam("id") Integer id) {
        LocalDateTime date  = LocalDateTime.now();
        mauSac.setId(id);
        mauSac.setNgaySua(date);
        mauSacRepo.save(mauSac);
        return "redirect:/mausac/hienthi";
    }

}
