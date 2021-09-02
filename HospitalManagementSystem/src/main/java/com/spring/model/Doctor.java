package com.spring.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int doctorId;
    private String name;
    private String department;
    private String phoneNumber;
    private String email;
    private String degree;
    private String startConsultation;
    private String endConsultation;
    @ManyToOne
    private Hospital hospital;

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStartConsultation() {
        return startConsultation;
    }

    public void setStartConsultation(String startConsultation) {
        this.startConsultation = startConsultation;
    }

    public String getEndConsultation() {
        return endConsultation;
    }

    public void setEndConsultation(String endConsultation) {
        this.endConsultation = endConsultation;
    }

}
