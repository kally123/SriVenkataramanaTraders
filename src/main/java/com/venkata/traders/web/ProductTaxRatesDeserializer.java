package com.venkata.traders.web;
import com.venkata.traders.domain.ProductTaxRates;
import com.venkata.traders.service.api.ProductTaxRatesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ProductTaxRatesDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ProductTaxRates.class)
public class ProductTaxRatesDeserializer extends JsonObjectDeserializer<ProductTaxRates> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ProductTaxRatesService productTaxRatesService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param productTaxRatesService
     * @param conversionService
     */
    @Autowired
    public ProductTaxRatesDeserializer(@Lazy ProductTaxRatesService productTaxRatesService, ConversionService conversionService) {
        this.productTaxRatesService = productTaxRatesService;
        this.conversionService = conversionService;
    }
}
