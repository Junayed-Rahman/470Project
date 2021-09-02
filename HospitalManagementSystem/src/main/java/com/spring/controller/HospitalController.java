package com.spring.controller;

import com.spring.dao.HospitalDao;
import com.spring.model.Hospital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class HospitalController {
    @Autowired
    private HospitalDao hospitalDao;

    @RequestMapping(path ="/getHospitals",method = RequestMethod.GET)
    public String getAllHospitals(Model model){
        List<Hospital> hospitals = this.hospitalDao.getAllHospitals();
        model.addAttribute("hospitals",hospitals);
        return "hospitalsList";
    }

}
