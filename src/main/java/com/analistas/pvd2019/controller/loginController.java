/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author bruno
 */
@Controller
public class LoginController {
    
    

    
    @GetMapping("/login")
    public String login(){
        
        
        return "login";
    }
}
