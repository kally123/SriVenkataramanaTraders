// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.venkata.traders.web;

import com.venkata.traders.domain.CustomerProducts;
import com.venkata.traders.service.api.CustomerProductsService;
import com.venkata.traders.web.CustomerProductssItemThymeleafController;
import com.venkata.traders.web.CustomerProductssItemThymeleafLinkFactory;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect CustomerProductssItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: CustomerProductssItemThymeleafController: @Controller;
    
    declare @type: CustomerProductssItemThymeleafController: @RequestMapping(value = "/customerproductss/{customerProducts}", name = "CustomerProductssItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource CustomerProductssItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CustomerProductssItemThymeleafController> CustomerProductssItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerProductsService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public CustomerProductssItemThymeleafController.new(CustomerProductsService customerProductsService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setCustomerProductsService(customerProductsService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(CustomerProductssItemThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource CustomerProductssItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void CustomerProductssItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CustomerProductssItemThymeleafController> CustomerProductssItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void CustomerProductssItemThymeleafController.setItemLink(MethodLinkBuilderFactory<CustomerProductssItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return CustomerProducts
     */
    @ModelAttribute
    public CustomerProducts CustomerProductssItemThymeleafController.getCustomerProducts(@PathVariable("customerProducts") Long id, Locale locale, HttpMethod method) {
        CustomerProducts customerProducts = null;
        if (HttpMethod.PUT.equals(method)) {
            customerProducts = customerProductsService.findOneForUpdate(id);
        } else {
            customerProducts = customerProductsService.findOne(id);
        }
        
        if (customerProducts == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"CustomerProducts", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return customerProducts;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerProducts
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView CustomerProductssItemThymeleafController.show(@ModelAttribute CustomerProducts customerProducts, Model model) {
        model.addAttribute("customerProducts", customerProducts);
        return new ModelAndView("customerproductss/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerProducts
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView CustomerProductssItemThymeleafController.showInline(@ModelAttribute CustomerProducts customerProducts, Model model) {
        model.addAttribute("customerProducts", customerProducts);
        return new ModelAndView("customerproductss/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("customerProducts")
    public void CustomerProductssItemThymeleafController.initCustomerProductsBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
        dataBinder.setDisallowedFields("product.id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CustomerProductssItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CustomerProductssItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerProducts
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView CustomerProductssItemThymeleafController.editForm(@ModelAttribute CustomerProducts customerProducts, Model model) {
        populateForm(model);
        
        model.addAttribute("customerProducts", customerProducts);
        return new ModelAndView("customerproductss/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerProducts
     * @param version
     * @param concurrencyControl
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView CustomerProductssItemThymeleafController.update(@Valid @ModelAttribute CustomerProducts customerProducts, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, BindingResult result, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("customerproductss/edit");
        }
        // Concurrency control
        CustomerProducts existingCustomerProducts = getCustomerProductsService().findOne(customerProducts.getId());
        if(customerProducts.getVersion() != existingCustomerProducts.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("customerProducts", customerProducts);
            model.addAttribute("concurrency", true);
            return new ModelAndView("customerproductss/edit");
        } else if(customerProducts.getVersion() != existingCustomerProducts.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("customerProducts", existingCustomerProducts);
            model.addAttribute("concurrency", false);
            return new ModelAndView("customerproductss/edit");
        } else if(customerProducts.getVersion() != existingCustomerProducts.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            customerProducts.setVersion(existingCustomerProducts.getVersion());
        }
        CustomerProducts savedCustomerProducts = getCustomerProductsService().save(customerProducts);
        UriComponents showURI = getItemLink().to(CustomerProductssItemThymeleafLinkFactory.SHOW).with("customerProducts", savedCustomerProducts.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerProducts
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CustomerProductssItemThymeleafController.delete(@ModelAttribute CustomerProducts customerProducts) {
        getCustomerProductsService().delete(customerProducts);
        return ResponseEntity.ok().build();
    }
    
}