package com.william.todolist.service.impl;

import com.william.todolist.model.User;
import com.william.todolist.repository.UserRepository;
import com.william.todolist.security.CustomUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = null;
        Optional<User> optional = userRepository.getUserByEmail(email);

        if (optional.isPresent()) {
            user = optional.get();
        } else {
            throw new UsernameNotFoundException("Could not find user");
        }
        return new CustomUserDetails(user);
    }
}
