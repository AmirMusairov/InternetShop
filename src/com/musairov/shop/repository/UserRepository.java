package com.musairov.shop.repository;

import com.musairov.shop.dao.User;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Slf4j
@Transactional
@RequiredArgsConstructor
public class UserRepository {
    private final JdbcTemplate jdbcTemplate;
    private final PasswordEncoder passwordEncoder;

    public User getByLoginAndPassword(String login, String password) {
        String hash = passwordEncoder.encode(password);
        User user = null;

        try {
            user = jdbcTemplate.queryForObject(
                    "select * from customers where login = ? and password = ?",
                    new Object[]{login, passwordEncoder.encode(password)},
                    (rs, i) -> new User(UUID.fromString(rs.getString("id")), login, hash)
            );
        } catch (Exception e) {
            System.out.println("User not found");
        }
        return user;
    }

    public void create(String login, String password) {
        String hash = passwordEncoder.encode(password);
        try {
            int rows = jdbcTemplate.update(
                    "insert into customers (id, login, password) values (?, ?, ?)",
                    UUID.randomUUID().toString(),
                    login,
                    hash
            );
        } catch (Exception e) {
            System.out.println("Creation Exception");
        }
    }

    public UserDetails getByLogin(String login) {
        User user = null;
        try {
            user = jdbcTemplate.queryForObject(
                    "select * from customers where login = ?",
                    new Object[]{login},
                    (rs, i) -> new User(UUID.fromString(rs.getString("id")), login, rs.getString("password"))
            );
        } catch (Exception e) {
            System.out.println("User by login  not found");
        }
        return user;
    }
}