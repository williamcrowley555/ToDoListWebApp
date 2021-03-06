package com.william.todolist.controller;

import com.william.todolist.model.Role;
import com.william.todolist.model.User;
import com.william.todolist.security.CustomUserDetails;
import com.william.todolist.service.RoleService;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
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
    public String saveUser(Model model, @AuthenticationPrincipal CustomUserDetails loggedUser,
                           @Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
        User currentUser = userService.getUserById(user.getId());
        user.setPassword(currentUser.getPassword());

        if (bindingResult.hasErrors()) {
            bindingResult.getAllErrors().forEach(System.out::println);
            List<Role> roleList = roleService.getAllRole();
            model.addAttribute("roleList", roleList);

            return "user_form";
        }

        userService.saveUser(user);

        if (user.getEmail().equals(loggedUser.getUsername())) {
            loggedUser.setFirstName(user.getFirstName());
            loggedUser.setLastName(user.getLastName());
        }

        return "redirect:/users";
    }

    @GetMapping("/enable/{id}")
    public String enableUser(@PathVariable("id") Long id) {
        User user = userService.getUserById(id);
        user.setEnabled(true);
        userService.saveUser(user);

        return "redirect:/users";
    }

    @GetMapping("/disable/{id}")
    public String disableUser(@PathVariable("id") Long id) {
        User user = userService.getUserById(id);
        user.setEnabled(false);
        userService.saveUser(user);

        return "redirect:/users";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userService.deleteUserById(id);
        return "redirect:/users";
    }
}
