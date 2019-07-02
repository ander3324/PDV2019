/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.analistas.pvd2019.model.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author matia
 */
@Entity
@Table(name = "Tickets")
public class Ticket implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pk_id_dc")
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "fk_id_det_vent", referencedColumnName = "pk_id_dv")
    private Detalles_Venta detalles_venta;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Detalles_Venta getDetalles_venta() {
        return detalles_venta;
    }

    public void setDetalles_venta(Detalles_Venta detalles_venta) {
        this.detalles_venta = detalles_venta;
    }

}
