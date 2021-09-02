package com.spring.controller;

import com.spring.dao.HospitalDao;
import com.spring.dao.UserDao;
import com.spring.model.Hospital;
import com.spring.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "user")
public class UserController {
    @Autowired
    private UserDao userDao;
    @Autowired
    private HospitalDao hospitalDao;

    @RequestMapping(path = "/adduser",method = RequestMethod.GET)
    public String userLogin(){
        return "userLogin";
    }

    @RequestMapping(path = "/success",method = RequestMethod.POST)
    public RedirectView userAdded(@ModelAttribute("user")User user,
                                  HttpServletRequest httpServletRequest
                                  ){
        this.userDao.saveUser(user);
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("user",user.getName());
        RedirectView redirectView = new RedirectView();

        redirectView.setUrl(httpServletRequest.getContextPath()+"/home");
        return  redirectView;
    }

    @RequestMapping(value="/gethospitals")
    public String  getHospitals(Model model){
        List<Hospital> hospitals = this.hospitalDao.getAllHospitals();
        model.addAttribute("hospitals",hospitals);
        return "user";
    }



}
