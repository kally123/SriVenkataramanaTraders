package com.venkata.traders.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.venkata.traders.domain.CustomerProducts;

/**
 * = CustomerProductsRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = CustomerProductsRepositoryCustom.class)
public class CustomerProductsRepositoryImpl extends QueryDslRepositorySupportExt<CustomerProducts> {

    /**
     * TODO Auto-generated constructor documentation
     */
    CustomerProductsRepositoryImpl() {
        super(CustomerProducts.class);
    }
}