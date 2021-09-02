package com.spring.controller;

import com.spring.dao.AmbulanceDriverDao;
import com.spring.model.AmbulanceDriver;
import com.spring.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/ambulanceDriver")
public class AmbulanceDriverController {
    @Autowired
    private AmbulanceDriverDao ambulanceDriverDao;

    @RequestMapping(value = "/addAmbulanceDriver")
    public String addAmbulanceDriver(){
        return "addAmbulanceDriver";
    }

    @RequestMapping(path = "/success",method = RequestMethod.POST)
    private String success(@ModelAttribute("ambulanceDriver")AmbulanceDriver ambulanceDriver){
        this.ambulanceDriverDao.saveAmbulanceDriver(ambulanceDriver);
        return "driverSuccess";
    }
}
