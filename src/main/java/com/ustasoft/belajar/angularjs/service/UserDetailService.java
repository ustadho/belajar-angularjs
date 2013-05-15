/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ustasoft.belajar.angularjs.service;

import com.ustasoft.belajar.angularjs.domain.UserDetail;
import java.util.List;

/**
 *
 * @author ustadho
 */
public interface UserDetailService {
    public Boolean simpan(UserDetail u);
    public Boolean delete(UserDetail u);
    public List<UserDetail> getAll();
}
