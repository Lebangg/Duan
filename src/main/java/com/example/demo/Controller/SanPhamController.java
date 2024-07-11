package com.example.demo.Controller;

import com.example.demo.Model.DanhMuc;
import com.example.demo.Model.SanPham;
import com.example.demo.Repository.DanhMucRepo;
import com.example.demo.Repository.SanPhamRepo;
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
public class SanPhamController {
    @Autowired
    SanPhamRepo sanPhamRepo;

    @Autowired
    DanhMucRepo danhMucRepo;

    @GetMapping("/sanpham/hienthi")
    public String sanpham(Model model) {
        List<SanPham> listSP = sanPhamRepo.findAllByOrderByNgayTaoDesc();
        model.addAttribute("listSP", listSP);
        return "SanPham";
    }

    @GetMapping("/sanpham/delete")
    public String delete(@RequestParam("id") Integer id){
       sanPhamRepo.deleteById(id);
        return "redirect:/sanpham/hienthi";
    }

    @GetMapping("/sanpham/edit")
    public String edit(@RequestParam("id") Integer id ,Model model) {
        model.addAttribute("sp", sanPhamRepo.getReferenceById(id));
        return "SanPhamUpdate";
    }

    @PostMapping("/sanpham/add")
    public String add(SanPham sp){
        sp.setNgaySua(new Date());
        sp.setNgayTao(new Date());
        sanPhamRepo.save(sp);
        return "redirect:/sanpham/hienthi";
    }

    @PostMapping("/sanpham/update")
    public String update(SanPham sp, @RequestParam("id") Integer id){
        if(sp.getId()!= null) {
            sp.setId(id);
            sp.setNgaySua(new Date());
            sanPhamRepo.save(sp);
        }
        return "redirect:/sanpham/hienthi";
    }

    //lay danh muc ra de goi tung thanh phan
    @ModelAttribute("listDM")
    public List<DanhMuc> getDanhMucList(){
        return danhMucRepo.findAll();
    }

}
