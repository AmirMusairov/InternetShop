package com.musairov.shop.dao;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.io.Serializable;

@Entity
@Getter
@Setter
@ToString
public class MilkProduct extends Product implements Serializable {

    @Column(name = "group", columnDefinition = "varchar(255) default 'MILK'")
    private ProductGroup group;
}