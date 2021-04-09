package com.musairov.shop.controller;

import com.musairov.shop.dao.Product;
import com.musairov.shop.service.AuthService;
import com.musairov.shop.service.BucketService;
import com.musairov.shop.service.OrderService;
import com.musairov.shop.currency.CurrencyBuilder;
import com.musairov.shop.currency.CurrencyCode;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;
import java.util.LinkedHashMap;
import java.util.Map;

@Slf4j
@Controller
@RequiredArgsConstructor
public class OrderController {
    private final AuthService userService;
    private final OrderService orderService;
    private final BucketService bucketService;

    @GetMapping("/order/make")
    protected String orderForm(ModelMap model) {
        Map<Product, Integer> products = bucketService.getProducts();
        Map<CurrencyCode, Double> totals = new LinkedHashMap<>();
        for (CurrencyCode currencyCode : CurrencyCode.values()) {
            double totalForCurrency = bucketService.getTotal(CurrencyBuilder.getCurrency(currencyCode)).doubleValue();
            totals.put(currencyCode, totalForCurrency);
        }

        model.addAttribute("products", products);
        model.addAttribute("totals", totals);

        return "/order/make";
    }

    @PostMapping("/order/make")
    protected String doPost(@RequestParam Double sum) {
        orderService.makeOrder(userService.getAuthUser(), BigDecimal.valueOf(sum), false);

        return "redirect:/bucket/clear";
    }

    @GetMapping("/order/declined")
    protected String declinedOrders(ModelMap model) {
        model.addAttribute("orders", orderService.getNotAcceptedOrders(userService.getAuthUser()));

        return "order/declined";
    }

    @GetMapping("/order/accept/{orderId}")
    protected String acceptSavedOrder(@PathVariable Integer orderId) {
        orderService.acceptOrder(userService.getAuthUser(), orderId);

        return "redirect:/order/not-accepted";
    }

    @GetMapping("/order/history")
    protected String allOrders(ModelMap model) {
        model.addAttribute("orders", orderService.getOrdersHistory(userService.getAuthUser()));

        return "order/order-history";
    }
}