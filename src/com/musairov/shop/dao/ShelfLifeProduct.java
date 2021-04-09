package com.musairov.shop.dao;

import com.musairov.shop.utils.ExpiryDate;

import java.math.BigDecimal;
import java.time.LocalDate;

public class ShelfLifeProduct extends Product {
    @ExpiryDate(shelfLife = 5)
    private LocalDate expiryDate;

    ShelfLifeProduct(String name, BigDecimal price, ProductGroup group) {
        super(name, price, group);
    }

    @Override
    public String toString() {
        return super.toString() + " expiryDate=" + expiryDate;
    }
}