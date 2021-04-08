package com.william.todolist.service.impl;

import com.william.todolist.model.Role;
import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import com.william.todolist.repository.TaskRepository;
import com.william.todolist.repository.UserRepository;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TaskRepository taskRepository;

    @Override
    public List<User> getAllUser() {
        return userRepository.findAll();
    }

    @Override
    public List<User> getAllEnableUser() {
        return userRepository.findAll().stream().filter(item -> item.isEnabled()).collect(Collectors.toList());
    }

    @Override
    public List<User> getAllParticipatedUsersByTaskId(Long taskId) {
        List<User> participatedUsers = new ArrayList<>();
        Optional<Task> task = taskRepository.findById(taskId);
        if (task.isPresent()) {
            participatedUsers = task.get().getParticipatedUsers()
                                .stream().map(item -> item).collect(Collectors.toList());
        } else {
            throw new RuntimeException("Task with ID: " + taskId);
        }
        return participatedUsers;
    }

    @Override
    public List<User> getAllUnparticipatedUsersByTaskId(Long taskId) {
        Task task = taskRepository.findById(taskId).get();
        List<User> unparticipatedUsers = new ArrayList<>();
        List<User> participatedUsers = this.getAllParticipatedUsersByTaskId(taskId);
        List<Long> ids = participatedUsers.stream().map(item -> item.getId()).collect(Collectors.toList());

        unparticipatedUsers = userRepository.findAllNotIn(ids);
//        Except task host
        unparticipatedUsers.remove(task.getUser());

        if (unparticipatedUsers.isEmpty()) {
            unparticipatedUsers = userRepository.findAll();
//        Except task host
            unparticipatedUsers.remove(task.getUser());
        }

        return unparticipatedUsers;
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
        User user = null;
        Optional<User> optional = userRepository.findById(id);

        if (optional.isPresent()) {
            user = optional.get();
        } else {
            throw new RuntimeException("User ID: " + id + " does not exist");
        }

        user.setEnabled(false);
        userRepository.save(user);
    }
}
