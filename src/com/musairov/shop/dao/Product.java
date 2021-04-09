package com.musairov.shop.dao;

import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
public class Product implements Serializable {
    private Integer id;
    private String name;
    private BigDecimal price;
    private ProductGroup group;

    public Product(String name, BigDecimal price, ProductGroup group) {
        this.name = name;
        this.price = price;
        this.group = group;
    }

    public Product(Integer id, String name, BigDecimal price, ProductGroup group) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.group = group;
    }
}