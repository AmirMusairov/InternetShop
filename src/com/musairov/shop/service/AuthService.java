package com.musairov.shop.service;

import com.musairov.shop.dao.User;
import com.musairov.shop.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;

@Slf4j
@RequiredArgsConstructor
public class AuthService {
    private final UserRepository userRepository;

    public void registration(String login, String password) {
        userRepository.create(login, password);
        User user = getByLogin(login);
        System.out.println("Registration " + user);
    }

    public User getAuthUser() {
        return getByLogin(SecurityContextHolder.getContext().getAuthentication().getName());
    }

    public User getByLogin(String login) {
        return (User) userRepository.getByLogin(login);
    }
}