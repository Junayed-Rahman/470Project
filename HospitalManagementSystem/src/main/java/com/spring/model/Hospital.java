package com.spring.model;


import javax.persistence.*;
import java.util.List;

@Entity
public class Hospital {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int hosId;
    private String name;
    private String thana;
    private String district;
    private int icu;
    private int bed;
    private String hospitalType;
    @OneToMany(mappedBy = "hospital",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<Ambulance> ambulances;
    @OneToMany(mappedBy = "hospital",fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<Doctor> doctors;

    public int getHosId() {
        return hosId;
    }

    public void setHosId(int hosId) {
        this.hosId = hosId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getThana() {
        return thana;
    }

    public void setThana(String thana) {
        this.thana = thana;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public int getIcu() {
        return icu;
    }

    public void setIcu(int icu) {
        this.icu = icu;
    }

    public int getBed() {
        return bed;
    }

    public void setBed(int bed) {
        this.bed = bed;
    }

    public String getHospitalType() {
        return hospitalType;
    }

    public void setHospitalType(String hospitalType) {
        this.hospitalType = hospitalType;
    }


//    public List<Doctor> getDoctors() {
//        return doctors;
//    }
//
//    public void setDoctors(List<Doctor> doctors) {
//        this.doctors = doctors;
//    }

    @Override
    public String toString() {
        return "Hospital{" +
                "hosId=" + hosId +
                ", name='" + name + '\'' +
                ", thana='" + thana + '\'' +
                ", district='" + district + '\'' +
                ", icu=" + icu +
                ", bed=" + bed +
                ", hospitalType='" + hospitalType + '\'' +


                '}';
    }
}

