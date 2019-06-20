/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.model.service;

import com.analistas.pvd2019.model.dao.IDetalles_Venta_Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author matia
 */

@Service
public class Detalles_Venta_Impl implements IDetalles_Venta_Service{
 
    @Autowired
    private IDetalles_Venta_Dao detallesventaDao;
    
}
