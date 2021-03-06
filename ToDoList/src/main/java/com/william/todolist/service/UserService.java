package com.william.todolist.service;

import com.william.todolist.model.User;

import java.util.List;

public interface UserService {

    List<User> getAllUser();
    List<User> getAllEnableUser();
    List<User> getAllParticipatedUsersByTaskId(Long taskId);
    List<User> getAllUnparticipatedUsersByTaskId(Long taskId);
    User getUserById(Long id);
    User getUserByEmail(String email);
    User saveUser(User user);
    User saveUserRegistration(User user);
    void deleteUserById(Long id);
}
