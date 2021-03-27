package com.william.todolist.controller;

import com.william.todolist.model.User;
import com.william.todolist.service.RoleService;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping(path = "users")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @GetMapping("/register")
    public String viewRegisterForm(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user_registration_form";
    }

    @PostMapping("/register")
    public String saveUserRegistration(Model model, @Valid @ModelAttribute("user") User user,
                                       BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "user_registration_form";
        }

        userService.saveUserRegistration(user);
        return "redirect:/users/register?success";
    }


}
