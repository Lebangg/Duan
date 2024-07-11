package com.example.demo.Controller;

import com.example.demo.Model.DanhMuc;
import com.example.demo.Repository.DanhMucRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.time.LocalDateTime;
import java.util.List;

@Controller
public class DanhMucController {
    @Autowired
    DanhMucRepo danhMucRepo;

    @GetMapping("/danh-muc/hienthi")
    public String hienthi(Model model) {
        List<DanhMuc> listDM = danhMucRepo.findAll();
        model.addAttribute("listDM", listDM);
     return "DanhMuc";
    }

    @GetMapping("/danh-muc/delete")
    public String delete(@RequestParam("id") Integer id){
        danhMucRepo.deleteById(id);
        return "redirect:/danh-muc/hienthi";
    }

    @GetMapping("/danh-muc/edit")
    public String edit(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("dm", danhMucRepo.getReferenceById(id));
        return "DanhMucUpdate";
    }

    @PostMapping("/danh-muc/add")
    public String add(DanhMuc dm){
        LocalDateTime date = LocalDateTime.now();
        dm.setNgayTao(date);
        dm.setNgaySua(date);
        danhMucRepo.save(dm);
        return "redirect:/danh-muc/hienthi";
    }

    @PostMapping("/danh-muc/update")
    public String update(DanhMuc dm, @RequestParam("id") Integer id){
        LocalDateTime date = LocalDateTime.now();
        dm.setId(id);
        dm.setNgaySua(date);
        danhMucRepo.save(dm);
        return "redirect:/danh-muc/hienthi";
    }

}
