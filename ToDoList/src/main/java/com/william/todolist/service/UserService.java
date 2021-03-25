package com.william.todolist.service;

import com.william.todolist.model.User;

public interface UserService {

    User getUserById(Long id);
    User saveUser(User user);
}
