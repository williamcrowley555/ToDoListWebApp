package com.william.todolist.service;

import com.william.todolist.model.Task;

import java.util.List;

public interface TaskService {

    List<Task> getAllTask();
    Task getTaskById(Long id);
    Task saveTask(Task task);
    void deleteTaskById(Long id);
}
