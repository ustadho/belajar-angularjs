/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ustasoft.belajar.angularjs.service.impl;

import com.ustasoft.belajar.angularjs.dao.UserDetailDao;
import com.ustasoft.belajar.angularjs.domain.UserDetail;
import com.ustasoft.belajar.angularjs.service.UserDetailService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ustadho
 */
@Service
public class UserDetailServiceImpl implements UserDetailService{
    @Autowired
    UserDetailDao userDao;
    
    private Integer jmlRecord;
    
    @Transactional
    @Override
    public Boolean simpan(UserDetail u) {
        if(u.getUserId()==null){
            u.setUserId(getAll().size()+1);
        }
        return userDao.simpan(u);
        
    }

    @Transactional
    public List<UserDetail> getAll() {
        List<UserDetail> lst=userDao.getAll();
        jmlRecord=lst.size();
        return lst;
    }

    @Transactional
    @Override
    public Boolean delete(UserDetail u) {
        return userDao.delete(u);
    }
    
}
