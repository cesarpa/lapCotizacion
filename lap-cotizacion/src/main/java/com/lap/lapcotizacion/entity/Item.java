package com.lap.lapcotizacion.entity;

import java.util.Date;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Item")
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_item")
    private int id;

    @Column(name = "descripcion")
    private String description;

    @Column(name = "valor_unidad")
    private int unitValue;

    @Column(name = "fecha_creacion")
    @Temporal(TemporalType.DATE)
    private Date creationDate;

    @Column(name = "fecha_modificacion")
    @Temporal(TemporalType.DATE)
    private Date modificationDate;
}