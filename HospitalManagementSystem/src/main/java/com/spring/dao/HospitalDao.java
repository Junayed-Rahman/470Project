package com.spring.dao;

import com.spring.model.Hospital;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class HospitalDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;
    @Autowired
    private SessionFactory sessionFactory;



    public Hospital getHospital(int hospitalId){
       return this.hibernateTemplate.get(Hospital.class,hospitalId);
    }

    @Transactional
    public  int saveHospital(Hospital hospital){
        int hosId = (int) this.hibernateTemplate.save(hospital);
        return hosId;
    }
    @Transactional
    public  void updateHospital(Hospital hospital){
        this.hibernateTemplate.update(hospital);
    }


    public List<Hospital> getAllHospitals(){
        List<Hospital> list = this.hibernateTemplate.loadAll(Hospital.class);
        return list;
    }

    @Transactional
    public void deleteHospital(int hospitalId){
        Hospital hospital = getHospital(hospitalId);
        System.out.println(hospital);
        this.hibernateTemplate.delete(hospital);
    }


    public List<Hospital> searchBydistrict(String district){
        Session s = sessionFactory.openSession();
        String query = "FROM Hospital as h WHERE h.district =: district ";
        Query q = s.createQuery(query);
        q.setParameter("district",district);
        List<Hospital> hospitalList = q.list();
        s.close();
        return hospitalList;

    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
