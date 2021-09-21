package com.spring.dao.dao;

import com.spring.dao.model.Doctor;
import com.spring.dao.model.Hospital;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import javax.print.Doc;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.*;
@ExtendWith(MockitoExtension.class)
class DoctorDaoTest {
    Doctor doctor;
    @Mock
    DoctorDao doctorDao;

    @BeforeEach
    void setUp() {
        doctor = new Doctor("Junayed Rahman","Neurology","01XX",
                "junayed@gmail.com","MBBS", "2PM","5PM");
    }

    @AfterEach
    void tearDown() {
        doctor = null;
    }

    @Test
    void saveDoctor() {
        int doctorID =  this.doctorDao.saveDoctor(doctor);
        Doctor testDoctor = this.doctorDao.getDoctor(doctorID);
        assertNotNull(doctor);
    }
}