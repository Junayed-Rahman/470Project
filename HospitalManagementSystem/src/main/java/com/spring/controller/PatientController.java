package com.spring.controller;

import com.spring.dao.HospitalDao;
import com.spring.dao.PatientDao;
import com.spring.model.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "patient")
public class PatientController {
    @Autowired
    private PatientDao patientDao;

    @RequestMapping(path = "/addPatient",method = RequestMethod.GET)
    public String addPatient(){
        return "addPatientForm";
    }

    @RequestMapping(path = "/success",method = RequestMethod.POST)
    public String patientAdded(@ModelAttribute("patient") Patient patient){
        this.patientDao.savePatient(patient);
        return "patientsuccess";
    }
}
