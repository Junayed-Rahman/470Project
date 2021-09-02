package com.spring.controller;

import com.spring.dao.HospitalDao;
import com.spring.dao.TransactionDao;
import com.spring.model.Hospital;
import com.spring.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private HospitalDao hospitalDao;

    @Autowired
    private TransactionDao transactionDao;

    @RequestMapping(path = "/",method = RequestMethod.GET)
    public String showAdminPage(){
        return "adminpage";
    }
    @RequestMapping(path = "/adminform",method = RequestMethod.GET)
    public String form(){
        return "adminform";
    }


    @RequestMapping(path = "/done",method = RequestMethod.POST)
    public String submitted(@ModelAttribute("hospital") Hospital hospital) {
        this.hospitalDao.saveHospital(hospital);
        return "submit";
    }

    @RequestMapping(path ="/allHospitals",method = RequestMethod.GET)
    public String getAllHospitals(Model model){
        List<Hospital> hospitals = this.hospitalDao.getAllHospitals();
        model.addAttribute("hospitals",hospitals);
        return "hospitalsList";
    }

    @RequestMapping(path = "/delete/hospitalId={id}",method = RequestMethod.GET)
    public RedirectView deleteHospital(@PathVariable("id") int hospitalId ,
                                       HttpServletRequest httpServletRequest
    ){
         this.hospitalDao.deleteHospital(hospitalId);
         RedirectView redirectView = new RedirectView();
         redirectView.setUrl(httpServletRequest.getContextPath()+"/allHospitals");
         return redirectView;
    }

    @RequestMapping(path = "/edit/hospitalId={id}")
    public String editHospital(@PathVariable("id") int hospitalId,
                                     Model m,
                                     HttpServletRequest httpServletRequest
    ){
        System.out.println(hospitalId);
        Hospital hospital = this.hospitalDao.getHospital(hospitalId);
        System.out.println(hospital);
        m.addAttribute("hospital",hospital);
//        this.hospitalDao.updateHospital(hospital.getHosId());
        return "edit";

    }
  @RequestMapping(path = "/update")
    public RedirectView updateHospital(@ModelAttribute("hospital") Hospital hospital,
                                       HttpServletRequest httpServletRequest
  ){
        this.hospitalDao.updateHospital(hospital);
        System.out.println(hospital);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(httpServletRequest.getContextPath()+"/allHospitals");
        return  redirectView;
    }
    @RequestMapping(path = "/districtwiseHospitals")
    public String districtWiseHospital(@RequestParam("search") String district,
                                             Model model){
        List <Hospital> hospitalList = this.hospitalDao.searchBydistrict(district);
        model.addAttribute("hospitals",hospitalList);
        return "districts";

    }


    @RequestMapping(path ="/users",method = RequestMethod.GET)
    public String getHospitals(Model model){
        List<Hospital> hospitals = this.hospitalDao.getAllHospitals();
        model.addAttribute("hospitals",hospitals);
        return "user";
    }
    @RequestMapping(path = "/hospitalId={id}")
    public String transaction(@PathVariable("id") int hospitalId,
                               Model m,
                               HttpServletRequest httpServletRequest
    ){
        m.addAttribute("hId",hospitalId);
        System.out.println(hospitalId);
        return "transaction";
    }
    @RequestMapping(path = "/transactionDone",method = RequestMethod.POST)
    public String transactionDone(@ModelAttribute("transaction") Transaction transaction,
                                  Model model
    ){
        System.out.println(transaction);
        final int transId = this.transactionDao.saveTransaction(transaction);
        Hospital hospital = this.hospitalDao.getHospital((int) transaction.getHosId());
        model.addAttribute("transId",transId);
        model.addAttribute("transType",transaction.getTransactionType());
        model.addAttribute("hosname",hospital.getName());
        return "success";
    }

}




