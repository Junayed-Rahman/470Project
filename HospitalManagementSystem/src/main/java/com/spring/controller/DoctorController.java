package com.spring.controller;

import com.spring.dao.DoctorDao;
import com.spring.dao.HospitalDao;
import com.spring.model.Doctor;
import com.spring.model.Hospital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(path = "doctor")
public class DoctorController {
    @Autowired
    private DoctorDao doctorDao;
    @Autowired
    private HospitalDao hospitalDao;

    @RequestMapping(path = "/addDoctor")
    private String AddInfo(Model model){
        List<Hospital> hospitalList = this.hospitalDao.getAllHospitals();
        model.addAttribute("hospitals",hospitalList);
        return "addDoctorForm";
    }

    @RequestMapping(path = "/success",method = RequestMethod.POST)
    private String success(@ModelAttribute("doctor")Doctor doctor){
        this.doctorDao.saveDoctor(doctor);
        return "doctorsuccess";
    }
}
