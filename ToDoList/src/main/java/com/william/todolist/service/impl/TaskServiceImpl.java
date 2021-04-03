package com.william.todolist.service.impl;

import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import com.william.todolist.repository.TaskRepository;
import com.william.todolist.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskRepository taskRepository;

    @Override
    public List<Task> getAllTask() {
        return taskRepository.findAll();
    }

    @Override
    public List<Task> getTaskByUser(User user) {
        return taskRepository.findByUser(user);
    }

    @Override
    public List<Task> getTaskByParticipatedUser(User user) {
        return taskRepository.findByParticipatedUsers(user);
    }

    @Override
    public Task getTaskById(Long id) {
        Task task = null;
        Optional<Task> optional = taskRepository.findById(id);
        if (optional.isPresent()) {
            task = optional.get();
        } else {
            throw new RuntimeException("Task ID: " + id + " does not exist");
        }
        return task;
    }

    @Override
    public Task saveTask(Task task) {
        return taskRepository.save(task);
    }

    @Override
    public void deleteTaskById(Long id) {
        taskRepository.deleteById(id);
    }
}
