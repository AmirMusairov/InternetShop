package com.musairov.shop.dao;

import com.musairov.shop.utils.ExpiryDate;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@NoArgsConstructor
public class ShelfLifeProduct extends Product {
    @ExpiryDate(shelfLife = 5)
    private LocalDate expiryDate;

    ShelfLifeProduct(String name, BigDecimal price) {
        super(name, price);
    }

    @Override
    public String toString() {
        return super.toString() + " expiryDate=" + expiryDate;
    }
}