package com.musairov.shop.dao;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.Collection;
import java.util.Collections;

@Entity
@Table(name = "customers")
@Data
public class User extends Identification implements UserDetails {

    @NotNull
    @Column(name = "login")
    private String login;

    @NotNull
    @Column(name = "password")
    private String password;

    public User(Integer id, String login, String password) {
        this.setId(id);
        this.setLogin(login);
        this.setPassword(password);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.singleton(Role.USER);
    }

    @Override
    public String getUsername() {
        return login;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}