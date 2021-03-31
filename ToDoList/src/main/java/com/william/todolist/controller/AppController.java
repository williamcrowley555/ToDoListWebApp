package com.william.todolist.controller;

import com.william.todolist.helper.Message;
import com.william.todolist.model.Role;
import com.william.todolist.model.User;
import com.william.todolist.security.CustomUserDetails;
import com.william.todolist.service.RoleService;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
public class AppController {

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @GetMapping("")
    public String viewHomePage() {
        return "index";
    }

    @GetMapping("/login")
    public String showLoginPage() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if (auth instanceof AnonymousAuthenticationToken) {
            return "login";
        }

        return "redirect:/";
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
        User existingUser = userService.getUserByEmail(user.getEmail());

        if (existingUser != null) {
            model.addAttribute("uniqueEmailError", "Email đã được sử dụng");
            return "user_registration_form";
        }

        if (bindingResult.hasErrors()) {
            return "user_registration_form";
        }

        userService.saveUserRegistration(user);
        return "redirect:/register?success";
    }

    @GetMapping("/profile")
    public String showUserProfile(Model model, Principal principal) {
        String email = principal.getName();
        User currentUser = userService.getUserByEmail(email);
        model.addAttribute("currentUser", currentUser);
        return "user_profile";
    }

    @GetMapping("/edit-profile")
    public String showEditUserForm(Model model, Principal principal) {
        User user = userService.getUserByEmail(principal.getName());
        List<Role> roleList = roleService.getAllRole();

        model.addAttribute("user", user);
        model.addAttribute("roleList", roleList);
        return "user_profile_form";
    }

    @PostMapping("/save-profile")
    public String saveProfile(Model model, @Valid @ModelAttribute("user") User user,
                           BindingResult bindingResult) {
        User existingUser = userService.getUserByEmail(user.getEmail());

        if (user.getId() != null) {
            User currentUser = userService.getUserById(user.getId());
            user.setRoles(currentUser.getRoles());
            user.setPassword(currentUser.getPassword());

            if (existingUser != null && user.getId() != existingUser.getId()) {
                List<Role> roleList = roleService.getAllRole();
                model.addAttribute("roleList", roleList);
                model.addAttribute("uniqueEmailError", "Email đã được sử dụng");

                return "user_profile_form";
            }
        } else {
            if (existingUser != null) {
                List<Role> roleList = roleService.getAllRole();
                model.addAttribute("roleList", roleList);

                return "user_profile_form";
            }
        }

        if (bindingResult.hasErrors()) {
            List<Role> roleList = roleService.getAllRole();
            model.addAttribute("roleList", roleList);

            return "user_profile_form";
        }

        userService.saveUser(user);
        reloadAuthentication(user);

        return "redirect:/profile";
    }

    @PostMapping("/change-password")
    public String changePassword(Model model, @RequestParam("oldPassword") String oldPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 @RequestParam("retypePassword") String retypePassword,
                                 Principal principal, HttpSession session) {
        String email = principal.getName();
        User currentUser = userService.getUserByEmail(email);

        if (encoder.matches(oldPassword, currentUser.getPassword())) {
            if (newPassword.equals(retypePassword)) {
                String encodedPassword = encoder.encode(newPassword);
                currentUser.setPassword(encodedPassword);

                userService.saveUser(currentUser);
                session.setAttribute("message", new Message("success", "Đổi mật khẩu thành công"));
            }
            else {
                session.setAttribute("message", new Message("danger", "Mật khẩu mới không trùng khớp"));
            }
        }
        else {
            session.setAttribute("message", new Message("danger", "Mật khẩu hiện tại không đúng"));
        }

        return "redirect:/profile";
    }

    @GetMapping("/403")
    public String error403() {
        return "403";
    }

    public void reloadAuthentication(User user) {
        UserDetails userDetails = new CustomUserDetails(user);
        Authentication newAuth = new UsernamePasswordAuthenticationToken(userDetails.getUsername(), userDetails.getPassword(), userDetails.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(newAuth);
    }
}
