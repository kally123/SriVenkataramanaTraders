package com.venkata.traders.web;
import com.venkata.traders.domain.CustomerProducts;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CustomerProductssItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = CustomerProducts.class, type = ControllerType.ITEM)
@RooJSON
public class CustomerProductssItemJsonController {
}
