package com.spring.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Ambulance {
    @Id
    private int registrationNumber;
    @ManyToOne
    private Hospital hospital;
    @OneToMany(mappedBy = "ambulance",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<AmbulanceDriver> ambulanceDriver;

    public int getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(int registrationNumber) {
        this.registrationNumber = registrationNumber;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }

    public List<AmbulanceDriver> getAmbulanceDriver() {
        return ambulanceDriver;
    }

    public void setAmbulanceDriver(List<AmbulanceDriver> ambulanceDriver) {
        this.ambulanceDriver = ambulanceDriver;
    }
}
