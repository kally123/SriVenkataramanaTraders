package com.venkata.traders.web;
import com.venkata.traders.domain.CustomerProducts;
import com.venkata.traders.service.api.CustomerProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = CustomerProductsDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = CustomerProducts.class)
public class CustomerProductsDeserializer extends JsonObjectDeserializer<CustomerProducts> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private CustomerProductsService customerProductsService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param customerProductsService
     * @param conversionService
     */
    @Autowired
    public CustomerProductsDeserializer(@Lazy CustomerProductsService customerProductsService, ConversionService conversionService) {
        this.customerProductsService = customerProductsService;
        this.conversionService = conversionService;
    }
}
