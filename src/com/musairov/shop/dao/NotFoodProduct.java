package com.musairov.shop.dao;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.io.Serializable;

@Entity
@Data
public class NotFoodProduct extends Product implements Serializable {

    @Column(name = "group", columnDefinition = "varchar(255) default 'NOT_FOOD'")
    private ProductGroup group;
}