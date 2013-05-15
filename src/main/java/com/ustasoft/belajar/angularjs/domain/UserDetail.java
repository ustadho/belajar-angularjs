/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ustasoft.belajar.angularjs.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author ustadho
 */
@Entity
@Table(name = "user_detail")
public class UserDetail {
    @Id
    //@GeneratedValue
    @Column(name = "user_id")
    private Integer userId;
    
    @Column(name = "user_name")
    private String userName;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    
}
