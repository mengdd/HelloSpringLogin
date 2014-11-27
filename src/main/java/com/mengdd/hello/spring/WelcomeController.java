package com.mengdd.hello.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ddmeng on 11/18/14.
 */
@Controller
public class WelcomeController {

    @RequestMapping("/")
    public String printWelcome() {

        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String turnToLogin() {
        return "login";
    }

    @RequestMapping("/success")
    public String turnToSuccess() {
        return "success";
    }
}
