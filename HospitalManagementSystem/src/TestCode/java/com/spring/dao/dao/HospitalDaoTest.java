package com.spring.dao.dao;

import com.spring.dao.model.Hospital;
import org.hibernate.criterion.DetachedCriteria;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Captor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;


@ExtendWith(MockitoExtension.class)
class HospitalDaoTest {

    Hospital fakeHospital;
    @Mock
    HospitalDao hospitalDao;
    @Mock
    HibernateTemplate hibernateTemplate;


    @BeforeEach
    void TestSetUp() {
        Hospital fakeHospital  = new Hospital(1,"Dhaka Medical","Kafrul","Dhaka",10,11,"Covid");
    }
    @AfterEach
    void TestTearDown() {
        fakeHospital = null;
    }

    @Test
    @Disabled
    void TestSaveHospital() {
        int hospitalID =  this.hospitalDao.saveHospital(fakeHospital);
        Hospital hospital = this.hospitalDao.getHospital(hospitalID);
        assertThat(hospital).isEqualTo(fakeHospital);

    }

    @Test
    @Disabled
    void TestUpdateHospital() {
          Hospital fakeHospital = new Hospital(1,"Dhaka Medical","Kafrul","Dhaka",10,11,"Covid");
          hospitalDao.updateHospital(fakeHospital);
          verify(hospitalDao).updateHospital(fakeHospital);
    }

    @Test
    void TestCanGetAllHospitals() {
        List<Hospital> hospitals = hospitalDao.getAllHospitals();
        List<Hospital> allhospitals =this.hibernateTemplate.loadAll(Hospital.class);
        assertThat(hospitals).isEqualTo(allhospitals);
    }

    @Test
    @Disabled
    void TestdeleteHospital() {
        int hosID = hospitalDao.saveHospital(fakeHospital);
        Hospital hospital = hospitalDao.getHospital(hosID);
        hospitalDao.deleteHospital(hosID);
        assertNull(hospitalDao.getHospital(hosID));
    }

    @Test
    @Disabled
    void TestSearchBydistrict() {
        String district = "Dhaka";
        List<Hospital> hospital = (List<Hospital>) hibernateTemplate.findByCriteria(DetachedCriteria.forEntityName(district));

    }
}