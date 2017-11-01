package com.venkata.traders.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.venkata.traders.domain.Product;

/**
 * = ProductRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ProductRepositoryCustom.class)
public class ProductRepositoryImpl extends QueryDslRepositorySupportExt<Product> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ProductRepositoryImpl() {
        super(Product.class);
    }
}