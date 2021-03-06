package com.musairov.shop.controller;

import com.musairov.shop.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class MenuController {
    private final AuthService authService;

    @GetMapping("/main")
    protected String doGet(ModelMap model) {

        model.addAttribute("name", authService.getAuthUser().getLogin());

        return "main";
    }
}