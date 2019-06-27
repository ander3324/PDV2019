/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.model.service;

import com.analistas.pvd2019.model.entity.Cliente;
import java.util.List;

/**
 *
 * @author nahuel
 */
public interface ICliente_Service {
    
    public List<Cliente> findAll();
    
}
