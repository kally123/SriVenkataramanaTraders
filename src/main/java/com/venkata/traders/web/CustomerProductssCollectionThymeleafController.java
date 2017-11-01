package com.venkata.traders.web;
import com.venkata.traders.domain.CustomerProducts;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CustomerProductssCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = CustomerProducts.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class CustomerProductssCollectionThymeleafController {
}
