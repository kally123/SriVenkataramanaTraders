// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.venkata.traders.web;

import com.venkata.traders.service.api.CustomerService;
import com.venkata.traders.web.CustomersItemThymeleafController;

privileged aspect CustomersItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerService CustomersItemThymeleafController.customerService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerService
     */
    public CustomerService CustomersItemThymeleafController.getCustomerService() {
        return customerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerService
     */
    public void CustomersItemThymeleafController.setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }
    
}