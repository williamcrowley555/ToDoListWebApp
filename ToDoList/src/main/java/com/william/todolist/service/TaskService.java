package com.william.todolist.service;

import com.william.todolist.model.Task;
import com.william.todolist.model.User;

import java.util.List;

public interface TaskService {

    List<Task> getAllTask();
    List<Task> getTaskByUser(User user);
    List<Task> getTaskByParticipatedUser(User user);
    Task getTaskById(Long id);
    Task saveTask(Task task);
    void deleteTaskById(Long id);
}
