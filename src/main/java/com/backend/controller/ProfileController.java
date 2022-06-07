package com.backend.controller;

import com.backend.entity.User;
import com.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class ProfileController {
    @Autowired
    private UserService signService;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @GetMapping("/news")
    public String signList(Model model) {
        model.addAttribute("allSigns", signService.allSigns());
        model.addAttribute("userFormRename", new User());
        return "news";
    }

    @PostMapping("/news")
    public String addUser(@ModelAttribute("userFormRename") @Valid User userForm, BindingResult bindingResult, Model model) {


        if (userForm.getPassword().contentEquals( "") && userForm.getUsername().contentEquals( "")
                && userForm.getPasswordConfirm().contentEquals( ""))
        {
            return "news";
        }

        if (!userForm.getPassword().equals(userForm.getPasswordConfirm())){
            model.addAttribute("passwordError", "Пароли не совпадают");
            return "news";
        }

        if (userForm.getPassword().contentEquals( "")){
            userForm.setPassword(
                    signService.findUserById(signService.getCurrentId()).getPassword());
            userForm.setPasswordConfirm(signService.findUserById(signService.getCurrentId()).getPassword());
        }

        if (userForm.getUsername().contentEquals( "")){
            userForm.setUsername(signService.findUserById(signService.getCurrentId()).getUsername());
        }

        if (!signService.update(signService.getCurrentId(), userForm.getUsername(), userForm.getPasswordConfirm())){
            model.addAttribute("usernameError", "Пользователь с таким именем уже существует");
            return "news";
        }

        return "redirect:/logout";
    }
}
