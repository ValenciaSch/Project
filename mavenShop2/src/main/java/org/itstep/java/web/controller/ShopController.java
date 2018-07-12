
package org.itstep.java.web.controller;

import org.itstep.java.web.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/shop") 
public class ShopController {
   @Autowired
   ShopService shopService;
  
   @RequestMapping(value = "/allM/{id}", method = RequestMethod.GET)
    public String allM(
            @PathVariable(value = "id")
            Integer id,
            Model model) {
        model.addAttribute("shop",shopService.allM() );
        return "all";
    }
    
    @RequestMapping(value = "/allW/{id}", method = RequestMethod.GET)
    public String allW(
            @PathVariable(value = "id")
            Integer id,
            Model model) {
        model.addAttribute("shop",shopService.allW() );
        return "all";
    }
}
