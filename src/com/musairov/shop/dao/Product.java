package com.musairov.shop.dao;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Table(name = "products")
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@Getter
@Setter
@ToString
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
public class Product extends Naming implements Serializable {

    @Column(name = "price")
    private BigDecimal price;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    public Product(String name, BigDecimal price, ProductGroup group) {
        this.setName(name);
        this.price = price;
    }

    public Product(String name, BigDecimal price) {
        this.setName(name);
        this.price = price;
    }

    public Product(Integer id, String name, BigDecimal price, ProductGroup group) {
        this(name, price, group);
        this.setId(id);
    }
}