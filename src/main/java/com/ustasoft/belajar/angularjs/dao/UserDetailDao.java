/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ustasoft.belajar.angularjs.dao;

import com.ustasoft.belajar.angularjs.domain.UserDetail;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ustadho
 */
@Repository
public class UserDetailDao {
    @Autowired
    SessionFactory sessionFactory;
    
    public Boolean simpan(UserDetail user){
        sessionFactory.getCurrentSession().saveOrUpdate(user);
        return true;
    }
    
    public List<UserDetail> getAll(){
        return sessionFactory.getCurrentSession()
                .createQuery("select u from UserDetail u")
                .list();
    }

    public Boolean delete(UserDetail u) {
        sessionFactory.getCurrentSession().delete(u);
        return true;
    }
}
