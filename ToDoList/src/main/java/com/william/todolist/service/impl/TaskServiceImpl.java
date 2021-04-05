package com.william.todolist.service.impl;

import Utils.TaskUtils;
import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import com.william.todolist.repository.TaskRepository;
import com.william.todolist.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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
    public List<Task> getPublicUnrelatedTask(User user) {
        List<Task> publicTaskListNotInUser = taskRepository.findByUserNotIn(List.of(user));
        List<Long> participatedTaskIds = taskRepository.findByParticipatedUsers(user)
                                            .stream().map(item -> item.getId()).collect(Collectors.toList());

        List<Task> publicTaskListNotInParticipatedUser = taskRepository.findByIdNotIn(participatedTaskIds);
        List<Task> publicTaskList = publicTaskListNotInUser.stream()
                .filter(item -> publicTaskListNotInParticipatedUser.contains(item) && item.getSector() == 1)
                .collect(Collectors.toList());

        return publicTaskList;
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

    @PostConstruct
    public void updateAllTaskStatus() {
        for (Task task : this.getAllTask()) {
            TaskUtils.updateStatus(task);
        }
    }
}
