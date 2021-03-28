package com.william.todolist.service.impl;

import com.william.todolist.model.Role;
import com.william.todolist.model.User;
import com.william.todolist.repository.UserRepository;
import com.william.todolist.security.CustomUserDetails;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getAllUser() {
        return userRepository.findAll();
    }

    @Override
    public User getUserById(Long id) {
        User user = null;
        Optional<User> optional = userRepository.findById(id);
        if (optional.isPresent()) {
            user = optional.get();
        } else {
            throw new RuntimeException("User ID: " + id + " does not exist");
        }
        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        User user = null;
        Optional<User> optional = userRepository.getUserByEmail(email);
        if (optional.isPresent()) {
            user = optional.get();
        } else {
            throw new RuntimeException("Email: " + email + " does not exist");
        }
        return user;
    }

    @Override
    public User saveUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public User saveUserRegistration(User user) {
        String encodedPassword = encoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        user.setRoles(Set.of(new Role(1L)));
        return userRepository.save(user);
    }

    @Override
    public void deleteUserById(Long id) {
        userRepository.deleteById(id);
    }
}
