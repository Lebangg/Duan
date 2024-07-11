package com.example.demo.Controller;

import com.example.demo.Model.CTSP;
import com.example.demo.Model.HDCT;
import com.example.demo.Repository.CTSPRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class TrangChuController {

    @Autowired
    CTSPRepo ctspRepo;

    @GetMapping("/TrangChu/hienthi")
    public String trangChu(Model model){
        model.addAttribute("listCTSP", ctspRepo.findAll());
        return "TrangChu";
    }

    @GetMapping("/TrangChu/User/Login")
    public String Login(){
        return "DangNhap";
    }

    @PostMapping("/hdct/add")
    public String giohang(CTSP ctsp,@RequestParam("id") Integer id, Model model){
        HDCT hdct = new HDCT();
        ctsp.setId(id);
        hdct.setIdCTSP(ctsp);

        model.addAttribute("listGH", hdct);
        return "GioHang";
    }




}
