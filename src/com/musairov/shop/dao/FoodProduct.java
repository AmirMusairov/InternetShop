package com.musairov.shop.dao;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.io.Serializable;

@Entity
@Data
public class FoodProduct extends Product implements Serializable {

    @Column(name = "group", columnDefinition = "varchar(255) default 'FOOD'")
    private ProductGroup group;
}