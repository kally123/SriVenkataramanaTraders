// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.venkata.traders.web;

import com.venkata.traders.service.api.CustomerProductsService;
import com.venkata.traders.web.CustomerProductssCollectionJsonController;

privileged aspect CustomerProductssCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerProductsService CustomerProductssCollectionJsonController.customerProductsService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerProductsService
     */
    public CustomerProductsService CustomerProductssCollectionJsonController.getCustomerProductsService() {
        return customerProductsService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerProductsService
     */
    public void CustomerProductssCollectionJsonController.setCustomerProductsService(CustomerProductsService customerProductsService) {
        this.customerProductsService = customerProductsService;
    }
    
}
