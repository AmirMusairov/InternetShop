package com.musairov.shop.dao;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "countries")
@NoArgsConstructor
@AllArgsConstructor
public class Country extends Identification {

    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "country", fetch = FetchType.LAZY)
    private List<Product> products;
}