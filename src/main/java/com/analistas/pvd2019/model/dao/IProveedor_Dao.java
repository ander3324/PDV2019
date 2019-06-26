/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.model.dao;

import com.analistas.pvd2019.model.entity.Proveedor;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author matia
 */
public interface IProveedor_Dao extends JpaRepository<Proveedor, Integer>{
    
}
