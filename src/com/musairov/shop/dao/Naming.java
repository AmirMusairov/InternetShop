package com.musairov.shop.dao;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn
@EqualsAndHashCode(callSuper = true)
public abstract class Naming extends Identification {
    @Getter
    @Setter
    private String name;
}