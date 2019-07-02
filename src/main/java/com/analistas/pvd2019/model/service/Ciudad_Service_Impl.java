/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.model.service;

import com.analistas.pvd2019.model.dao.ICiudad_Dao;
import com.analistas.pvd2019.model.entity.Ciudad;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author matia
 */
@Service
public class Ciudad_Service_Impl implements ICiudad_Service {

    @Autowired
    private ICiudad_Dao ciudadDao;

    @Override
    @Transactional(readOnly = true)
    public List<Ciudad> findAll() {
        return ciudadDao.findAll();
    }

}
