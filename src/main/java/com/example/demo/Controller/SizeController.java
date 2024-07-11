package com.example.demo.Controller;

import com.example.demo.Model.Size;
import com.example.demo.Repository.SizeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;

@Controller
public class SizeController {
    @Autowired
    SizeRepo sizeRepo;

    @GetMapping("/size/hienthi")
    public String hienthi(Model model) {
        model.addAttribute("listSize", sizeRepo.findAll());
        return "Size";
    }

    @GetMapping("/size/delete")
    public String delete(@RequestParam("id") Integer id) {
        sizeRepo.deleteById(id);
        return "redirect:/size/hienthi";
    }

    @GetMapping("/size/edit")
    public String edit(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("s", sizeRepo.getReferenceById(id));
        return "SizeUpdate";
    }

    @PostMapping("/size/add")
    public String add(Size size) {
        LocalDateTime date = LocalDateTime.now();
        size.setNgaySua(date);
        size.setNgayTao(date);
        sizeRepo.save(size);
        return "redirect:/size/hienthi";
    }

    @PostMapping("/size/update")
    public String update(Size size, @RequestParam("id") Integer id) {
        LocalDateTime date = LocalDateTime.now();
        size.setId(id);
        size.setNgaySua(date);
        size.setNgayTao(date);
        sizeRepo.save(size);
        return "redirect:/size/hienthi";
    }

}
