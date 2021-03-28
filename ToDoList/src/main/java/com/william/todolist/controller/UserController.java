package com.william.todolist.controller;

import com.william.todolist.model.Role;
import com.william.todolist.model.User;
import com.william.todolist.service.RoleService;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping(path = "users")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @GetMapping("")
    public String listUsers(Model model) {
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "employee";
    }

    @GetMapping("/edit/{id}")
    public String showEditEmployeeForm(Model model, @PathVariable("id") Long id) {
        User user = userService.getUserById(id);
        List<Role> roleList = roleService.getAllRole();

        model.addAttribute("user", user);
        model.addAttribute("roleList", roleList);
        return "employee_form";
    }

    @PostMapping("/save")
    public String saveUser(Model model, @Valid @ModelAttribute("user") User user,
                                       BindingResult bindingResult) {
        User currentUser = userService.getUserById(user.getId());
        user.setPassword(currentUser.getPassword());

        if (bindingResult.hasErrors()) {
            bindingResult.getAllErrors().forEach(System.out::println);
            List<Role> roleList = roleService.getAllRole();
            model.addAttribute("roleList", roleList);

            return "employee_form";
        }

        userService.saveUser(user);
        return "redirect:/users";
    }

    @GetMapping("/delete/{id}")
    public String viewRegisterForm(@PathVariable("id") Long id) {
        userService.deleteUserById(id);
        return "redirect:/users";
    }

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
