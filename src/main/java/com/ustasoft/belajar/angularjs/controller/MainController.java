/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ustasoft.belajar.angularjs.controller;

import com.ustasoft.belajar.angularjs.domain.UserDetail;
import com.ustasoft.belajar.angularjs.json.CustomGenericResponse;
import com.ustasoft.belajar.angularjs.json.jquery.CustomUserDetailResponse;
import com.ustasoft.belajar.angularjs.service.UserDetailService;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author ustadho
 */
@Controller
public class MainController {
    @Autowired
    UserDetailService userService;
          
    protected static Logger logger = Logger.getLogger("controller");
    
    @RequestMapping(value="/user-json", method = RequestMethod.GET)
    public @ResponseBody
    CustomUserDetailResponse getAll() {
        logger.debug("Received request to get all users");

        // Retrieve all users from the service
        List<UserDetail> users = userService.getAll();

        // Initialize our custom user response wrapper
        CustomUserDetailResponse response = new CustomUserDetailResponse();

        // Assign the result from the service to this response
        response.setRows(users);

        // Assign the total number of records found. This is used for paging
        response.setRecords(String.valueOf(users.size()));

        // Since our service is just a simple service for teaching purposes
        // We didn't really do any paging. But normally your DAOs or your persistence layer should support this
        // Assign a dummy page
        response.setPage("1");

        // Same. Assign a dummy total pages
        response.setTotal("10");

        // Return the response
        // Spring will automatically convert our CustomUserResponse as JSON object. 
        // This is triggered by the @ResponseBody annotation. 
        // It knows this because the JqGrid has set the headers to accept JSON format when it made a request
        // Spring by default uses Jackson to convert the object to JSON
        return response;
    }
    
    @RequestMapping("/jqgrid/jqgrid1")
    public String daftarKehadiran() {
        logger.debug("Received request to show users page");
    
    	// This will resolve to /WEB-INF/jsp/users.jsp page
    	return "jqgrid1";
    }
    @RequestMapping("/jqgrid/users")
    public String daftarUser() {
        logger.debug("Received request to show users page");
    
    	// This will resolve to /WEB-INF/jsp/users.jsp page
    	return "users";
    }
    
    
    @RequestMapping(value = "/jqgrid/add", method = RequestMethod.POST)
    public @ResponseBody
    CustomGenericResponse add(
            @RequestParam("userName") String userName) {
        logger.debug("Received request to add a new user");

        // Construct our new user object. Take note the id is not required.
        // Assign the values from the parameters
        UserDetail user = new UserDetail();
        user.setUserName(userName);

        // Do custom validation here or in your service

        // Call service to add
        Boolean success = userService.simpan(user);

        // Check if successful
        if (success == true) {
            // Success. Return a custom response
            CustomGenericResponse response = new CustomGenericResponse();
            response.setSuccess(true);
            response.setMessage("Action successful!");
            return response;

        } else {
            // A failure. Return a custom response as well
            CustomGenericResponse response = new CustomGenericResponse();
            response.setSuccess(false);
            response.setMessage("Action failure!");
            return response;
        }
    }
    
    @RequestMapping(value = "/jqgrid/edit", method = RequestMethod.POST)
    public @ResponseBody
    CustomGenericResponse edit(
            @RequestParam("id") String id,
            @RequestParam("userName") String userName) {
        logger.debug("Received request to edit user");
        System.out.println("USER-ID :"+id);
        // Construct our user object
        // Assign the values from the parameters
        UserDetail user = new UserDetail();
        user.setUserId(Integer.valueOf(id));
        user.setUserName(userName);
        Boolean success = userService.simpan(user);

        // Check if successful
        if (success == true) {
            // Success. Return a custom response
            CustomGenericResponse response = new CustomGenericResponse();
            response.setSuccess(true);
            response.setMessage("Action successful!");
            return response;

        } else {
            // A failure. Return a custom response as well
            CustomGenericResponse response = new CustomGenericResponse();
            response.setSuccess(false);
            response.setMessage("Action failure!");
            return response;
        }
    }
    
    @RequestMapping(value = "/jqgrid/delete", method = RequestMethod.POST)
    public @ResponseBody
    CustomGenericResponse delete(
            @RequestParam("id") String id) {

        logger.debug("Received request to delete an existing user");
        UserDetail user = new UserDetail();
        user.setUserId(Integer.valueOf(id));
        Boolean success = userService.delete(user);

        // Check if successful
        if (success == true) {
            // Success. Return a custom response
            CustomGenericResponse response = new CustomGenericResponse();
            response.setSuccess(true);
            response.setMessage("Action successful!");
            return response;

        } else {
            // A failure. Return a custom response as well
            CustomGenericResponse response = new CustomGenericResponse();
            response.setSuccess(false);
            response.setMessage("Action failure!");
            return response;
        }
    }
}
