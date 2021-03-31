package com.william.todolist.controller;

import com.william.todolist.model.Role;
import com.william.todolist.model.User;
import com.william.todolist.security.CustomUserDetails;
import com.william.todolist.service.RoleService;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping(path = "users")
public class UserController {

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @GetMapping("")
    public String listUsers(Model model) {
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "user";
    }

    @GetMapping("/edit/{id}")
    public String showEditUserForm(Model model, @PathVariable("id") Long id) {
        User user = userService.getUserById(id);
        List<Role> roleList = roleService.getAllRole();

        model.addAttribute("user", user);
        model.addAttribute("roleList", roleList);
        return "user_form";
    }

    @PostMapping("/save")
    public String saveUser(Model model, @Valid @ModelAttribute("user") User user,
                                       BindingResult bindingResult) {
        User existingUser = userService.getUserByEmail(user.getEmail());

        if (user.getId() != null) {
            User currentUser = userService.getUserById(user.getId());
            user.setPassword(currentUser.getPassword());

            if (existingUser != null && user.getId() != existingUser.getId()) {
                List<Role> roleList = roleService.getAllRole();
                model.addAttribute("roleList", roleList);
                model.addAttribute("uniqueEmailError", "Email đã được sử dụng");

                return "user_form";
            }
        } else {
            if (existingUser != null) {
                List<Role> roleList = roleService.getAllRole();
                model.addAttribute("roleList", roleList);

                return "user_form";
            }
        }

        if (bindingResult.hasErrors()) {
            List<Role> roleList = roleService.getAllRole();
            model.addAttribute("roleList", roleList);

            return "user_form";
        }

        userService.saveUser(user);
        reloadAuthentication(user);

        return "redirect:/users";
    }

    @GetMapping("/delete/{id}")
    public String viewRegisterForm(@PathVariable("id") Long id) {
        userService.deleteUserById(id);
        return "redirect:/users";
    }

    public void reloadAuthentication(User user) {
        UserDetails userDetails = new CustomUserDetails(user);
        Authentication newAuth = new UsernamePasswordAuthenticationToken(userDetails.getUsername(), userDetails.getPassword(), userDetails.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(newAuth);
    }
}
