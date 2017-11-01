package com.venkata.traders.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.venkata.traders.domain.ProductTaxRates;

/**
 * = ProductTaxRatesRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ProductTaxRatesRepositoryCustom.class)
public class ProductTaxRatesRepositoryImpl extends QueryDslRepositorySupportExt<ProductTaxRates> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ProductTaxRatesRepositoryImpl() {
        super(ProductTaxRates.class);
    }
}