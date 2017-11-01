// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.venkata.traders.service.impl;

import com.venkata.traders.domain.Customer;
import com.venkata.traders.domain.CustomerProducts;
import com.venkata.traders.repository.CustomerRepository;
import com.venkata.traders.service.api.CustomerProductsService;
import com.venkata.traders.service.impl.CustomerServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerServiceImpl_Roo_Service_Impl {
    
    declare @type: CustomerServiceImpl: @Service;
    
    declare @type: CustomerServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerRepository CustomerServiceImpl.customerRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerProductsService CustomerServiceImpl.customerProductsService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerRepository
     * @param customerProductsService
     */
    @Autowired
    public CustomerServiceImpl.new(CustomerRepository customerRepository, @Lazy CustomerProductsService customerProductsService) {
        setCustomerRepository(customerRepository);
        setCustomerProductsService(customerProductsService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerRepository
     */
    public CustomerRepository CustomerServiceImpl.getCustomerRepository() {
        return customerRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerRepository
     */
    public void CustomerServiceImpl.setCustomerRepository(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerProductsService
     */
    public CustomerProductsService CustomerServiceImpl.getCustomerProductsService() {
        return customerProductsService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerProductsService
     */
    public void CustomerServiceImpl.setCustomerProductsService(CustomerProductsService customerProductsService) {
        this.customerProductsService = customerProductsService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param customerProductsToAdd
     * @return Customer
     */
    @Transactional
    public Customer CustomerServiceImpl.addToCustomerProducts(Customer customer, Iterable<Long> customerProductsToAdd) {
        List<CustomerProducts> customerProducts = getCustomerProductsService().findAll(customerProductsToAdd);
        customer.addToCustomerProducts(customerProducts);
        return getCustomerRepository().save(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param customerProductsToRemove
     * @return Customer
     */
    @Transactional
    public Customer CustomerServiceImpl.removeFromCustomerProducts(Customer customer, Iterable<Long> customerProductsToRemove) {
        List<CustomerProducts> customerProducts = getCustomerProductsService().findAll(customerProductsToRemove);
        customer.removeFromCustomerProducts(customerProducts);
        return getCustomerRepository().save(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param customerProducts
     * @return Customer
     */
    @Transactional
    public Customer CustomerServiceImpl.setCustomerProducts(Customer customer, Iterable<Long> customerProducts) {
        List<CustomerProducts> items = getCustomerProductsService().findAll(customerProducts);
        Set<CustomerProducts> currents = customer.getCustomerProducts();
        Set<CustomerProducts> toRemove = new HashSet<CustomerProducts>();
        for (Iterator<CustomerProducts> iterator = currents.iterator(); iterator.hasNext();) {
            CustomerProducts nextCustomerProducts = iterator.next();
            if (items.contains(nextCustomerProducts)) {
                items.remove(nextCustomerProducts);
            } else {
                toRemove.add(nextCustomerProducts);
            }
        }
        customer.removeFromCustomerProducts(toRemove);
        customer.addToCustomerProducts(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        customer.setVersion(customer.getVersion() + 1);
        return getCustomerRepository().save(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     */
    @Transactional
    public void CustomerServiceImpl.delete(Customer customer) {
        // Clear bidirectional one-to-many parent relationship with CustomerProducts
        for (CustomerProducts item : customer.getCustomerProducts()) {
            item.setCustomer(null);
        }
        
        getCustomerRepository().delete(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Customer> CustomerServiceImpl.save(Iterable<Customer> entities) {
        return getCustomerRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void CustomerServiceImpl.delete(Iterable<Long> ids) {
        List<Customer> toDelete = getCustomerRepository().findAll(ids);
        getCustomerRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Customer
     */
    @Transactional
    public Customer CustomerServiceImpl.save(Customer entity) {
        return getCustomerRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Customer
     */
    public Customer CustomerServiceImpl.findOne(Long id) {
        return getCustomerRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Customer
     */
    public Customer CustomerServiceImpl.findOneForUpdate(Long id) {
        return getCustomerRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Customer> CustomerServiceImpl.findAll(Iterable<Long> ids) {
        return getCustomerRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Customer> CustomerServiceImpl.findAll() {
        return getCustomerRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CustomerServiceImpl.count() {
        return getCustomerRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCustomerRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Customer> CustomerServiceImpl.getEntityType() {
        return Customer.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CustomerServiceImpl.getIdType() {
        return Long.class;
    }
    
}
