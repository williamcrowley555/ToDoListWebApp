package com.william.todolist.controller;

import com.william.todolist.helper.Message;
import com.william.todolist.model.User;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Principal;

@Controller
public class AppController {

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private UserService userService;

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
        if (bindingResult.hasErrors()) {
            return "user_registration_form";
        }

        userService.saveUserRegistration(user);
        return "redirect:/users/register?success";
    }

    @GetMapping("/profile")
    public String showUserProfile(Model model, Principal principal) {
        String email = principal.getName();
        User currentUser = userService.getUserByEmail(email);
        model.addAttribute("currentUser", currentUser);
        return "user_profile";
    }

    @PostMapping("/change-password")
    public String changePassword(Model model, @RequestParam("oldPassword") String oldPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 @RequestParam("retypePassword") String retypePassword,
                                 Principal principal, HttpSession session) {
        String email = principal.getName();
        User currentUser = userService.getUserByEmail(email);

        if (encoder.matches(oldPassword, currentUser.getPassword())) {
            System.out.println("IN MATCH OLD PASSWORD");
            if (newPassword.equals(retypePassword)) {
                System.out.println("IN SAVE NEW PASSWORD");
                String encodedPassword = encoder.encode(newPassword);
                currentUser.setPassword(encodedPassword);

                userService.saveUser(currentUser);
                session.setAttribute("message", new Message("success", "Đổi mật khẩu thành công"));
            }
            else {
                System.out.println("IN WRONG RETYPE PASSWORD");
                session.setAttribute("message", new Message("danger", "Mật khẩu mới không trùng khớp"));
            }
        }
        else {
            System.out.println("IN WRONG OLD PASSWORD");
            session.setAttribute("message", new Message("danger", "Mật khẩu hiện tại không đúng"));
        }

        return "redirect:/profile";
    }

    @GetMapping("/403")
    public String error403() {
        return "403";
    }
}
