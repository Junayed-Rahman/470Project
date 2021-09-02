package com.spring.controller;

import com.spring.dao.AmbulanceDao;
import com.spring.model.Ambulance;
import com.spring.model.AmbulanceDriver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/ambulance")
public class AmbulanceController {
    @Autowired
    private AmbulanceDao ambulanceDao;

    @RequestMapping(value = "/addAmbulance")
    public String addAmbulance(){
        return "addAmbulance";
    }

    @RequestMapping(path = "/success",method = RequestMethod.POST)
    private String success(@ModelAttribute("ambulance") Ambulance ambulance){
        this.ambulanceDao.saveAmbulance(ambulance);
        return "ambulanceSuccess";
    }
}
