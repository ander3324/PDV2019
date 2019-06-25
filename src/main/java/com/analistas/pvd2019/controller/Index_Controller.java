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
 * @author matia
 */

@Controller
public class Index_Controller {
    
    @GetMapping({"/","/index"})
    public String index(){
        
        return "index";
    }
    
}
