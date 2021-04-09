package com.musairov.shop.dao;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Table(name = "products")
@Getter
@Setter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String name;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "group")
    @Enumerated(value = EnumType.STRING)
    private ProductGroup group;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

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