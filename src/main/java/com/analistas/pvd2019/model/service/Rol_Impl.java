/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.model.service;

import com.analistas.pvd2019.model.dao.IRol_Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author matia
 */

@Service
public class Rol_Impl implements IRol_Service{
    
    @Autowired
    private IRol_Dao rolDao;
    
}
