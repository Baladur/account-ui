package com.roman.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by roman on 17.06.2017.
 */
@Controller
@RequestMapping("/")
public class AccountController {

    @RequestMapping(method = RequestMethod.GET)
    public String welcome() {
        return "welcome";
    }

    @RequestMapping(value = "/operations/{acc_id}", method = RequestMethod.GET)
    public String watchOperations(@PathVariable("acc_id") Long accId, ModelMap data) {
        data.addAttribute("acc_id", accId);
        return "operations";
    }

    @RequestMapping(value = "/perform-operation/{acc_id}", method = RequestMethod.GET)
    public String performOperation(@PathVariable("acc_id") Long accId, ModelMap data) {
        data.addAttribute("acc_id", accId);
        return "perform_operation";
    }
}
