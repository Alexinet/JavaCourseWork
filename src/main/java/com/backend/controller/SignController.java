package com.backend.controller;

import com.backend.entity.Property;
import com.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SignController {

    @Autowired
    private UserService userService;

    @GetMapping("/sign")
    public String registration(Model model) {
        model.addAttribute("signForm", new Property());
        return "sign";
    }

    @PostMapping("/sign")
    public String addUser(@ModelAttribute("signForm") Property signForm) {
        userService.saveSign(signForm);
        return "redirect:/";
    }
}
