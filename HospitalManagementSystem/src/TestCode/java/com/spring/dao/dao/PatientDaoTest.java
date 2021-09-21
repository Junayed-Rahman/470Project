package com.spring.dao.dao;

import com.spring.dao.model.Patient;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.orm.hibernate5.HibernateTemplate;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.assertj.core.api.AssertionsForClassTypes.in;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@ExtendWith(MockitoExtension.class)
class PatientDaoTest {
    Patient patient;
    @Mock
    PatientDao patientDao;
    @Mock
    HibernateTemplate hibernateTemplate;

    @BeforeEach
    void setUp() {
        patient = new Patient("Junayed","junayed.rahman@g.bracu.ac.bd","Fever","017XXXX");
    }

    @AfterEach
    void tearDown() {
        patient = null;
    }

    @Test
    void TestSavePatient() {
       int patientId = this.patientDao.savePatient(patient);
       Patient testPatient = this.patientDao.getPatient(patientId);
       assertNotNull(patient);

    }
}