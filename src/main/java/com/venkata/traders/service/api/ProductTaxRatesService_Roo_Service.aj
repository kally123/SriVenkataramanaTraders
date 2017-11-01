// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.venkata.traders.service.api;

import com.venkata.traders.domain.Product;
import com.venkata.traders.domain.ProductTaxRates;
import com.venkata.traders.service.api.ProductTaxRatesService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ProductTaxRatesService_Roo_Service {
    
    declare parents: ProductTaxRatesService extends EntityResolver<ProductTaxRates, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ProductTaxRates
     */
    public abstract ProductTaxRates ProductTaxRatesService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productTaxRates
     */
    public abstract void ProductTaxRatesService.delete(ProductTaxRates productTaxRates);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<ProductTaxRates> ProductTaxRatesService.save(Iterable<ProductTaxRates> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ProductTaxRatesService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return ProductTaxRates
     */
    public abstract ProductTaxRates ProductTaxRatesService.save(ProductTaxRates entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return ProductTaxRates
     */
    public abstract ProductTaxRates ProductTaxRatesService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<ProductTaxRates> ProductTaxRatesService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<ProductTaxRates> ProductTaxRatesService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ProductTaxRatesService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ProductTaxRates> ProductTaxRatesService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ProductTaxRates> ProductTaxRatesService.findByProduct(Product product, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return Long
     */
    public abstract long ProductTaxRatesService.countByProduct(Product product);
    
}
