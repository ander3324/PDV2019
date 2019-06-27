/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.controller;

import com.analistas.pvd2019.model.entity.Cliente;
import com.analistas.pvd2019.model.service.Cliente_Service_Impl;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author nahuel
 */
@Controller
public class Cliente_Controller {
    
    @Autowired
    Cliente_Service_Impl serv;
    
    @GetMapping({"/cliente"})
    public String listar(Map m) throws SQLException {

        List<Cliente> clientes = serv.buscarTodo();

        m.put("titulo", "Listado de clientes");
        m.put("clientes", clientes);
        return "cliente";
}
}
