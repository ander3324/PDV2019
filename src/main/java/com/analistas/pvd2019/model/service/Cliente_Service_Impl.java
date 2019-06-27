/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.model.service;

import com.analistas.pvd2019.model.dao.ICliente_Dao;
import com.analistas.pvd2019.model.entity.Cliente;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author nahuel
 */
@Service
public class Cliente_Service_Impl implements ICliente_Service {

    @Autowired
    private ICliente_Dao clienteDao;

    @Override
    @Transactional(readOnly = true)
    public List<Cliente> findAll() {
        return clienteDao.findAll();
    }

}
