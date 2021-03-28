package com.william.todolist.service;

import com.william.todolist.model.User;

import java.util.List;

public interface UserService {

    List<User> getAllUser();
    User getUserById(Long id);
    User saveUser(User user);
    User saveUserRegistration(User user);
    void deleteUserById(Long id);
}
