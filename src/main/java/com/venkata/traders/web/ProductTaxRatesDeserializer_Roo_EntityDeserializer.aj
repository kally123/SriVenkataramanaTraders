// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.venkata.traders.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.venkata.traders.domain.ProductTaxRates;
import com.venkata.traders.service.api.ProductTaxRatesService;
import com.venkata.traders.web.ProductTaxRatesDeserializer;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect ProductTaxRatesDeserializer_Roo_EntityDeserializer {
    
    declare @type: ProductTaxRatesDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductTaxRatesService
     */
    public ProductTaxRatesService ProductTaxRatesDeserializer.getProductTaxRatesService() {
        return productTaxRatesService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productTaxRatesService
     */
    public void ProductTaxRatesDeserializer.setProductTaxRatesService(ProductTaxRatesService productTaxRatesService) {
        this.productTaxRatesService = productTaxRatesService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ProductTaxRatesDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ProductTaxRatesDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return ProductTaxRates
     * @throws IOException
     */
    public ProductTaxRates ProductTaxRatesDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        ProductTaxRates productTaxRates = productTaxRatesService.findOne(id);
        if (productTaxRates == null) {
            throw new NotFoundException("ProductTaxRates not found");
        }
        return productTaxRates;
    }
    
}
