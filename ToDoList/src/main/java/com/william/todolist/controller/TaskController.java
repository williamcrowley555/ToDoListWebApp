package com.william.todolist.controller;

import com.william.todolist.model.Document;
import com.william.todolist.model.Role;
import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import com.william.todolist.service.TaskService;
import com.william.todolist.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(path = "tasks")
public class TaskController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private UserService userService;

    @GetMapping("")
    public String listTasks(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByEmail(auth.getName());
        List<Task> taskList = taskService.getTaskByUser(currentUser);

        model.addAttribute("currentUser", currentUser);
        model.addAttribute("taskList", taskList);
        return "task";
    }

    @GetMapping("/add")
    public String showAddTaskForm(Model model) {
        Task task = new Task();

        model.addAttribute("task", task);
        return "task_form";
    }

    @GetMapping("/invite-users/{taskId}")
    public String inviteUsers(Model model, @PathVariable("taskId") Long taskId) {
        Task task = taskService.getTaskById(taskId);
        List<User> participatedUsers = userService.getAllParticipatedUsersByTaskId(taskId);
        List<User> unparticipatedUsers = userService.getAllUnparticipatedUsersByTaskId(taskId);

        model.addAttribute("task", task);
        model.addAttribute("participatedUsers", participatedUsers);
        model.addAttribute("unparticipatedUsers", unparticipatedUsers);

        return "task_users_invite";
    }

    @PostMapping("/save")
    public String saveTask(@Valid @ModelAttribute("task") Task task, BindingResult bindingResult) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByEmail(auth.getName());

        task.setUser(currentUser);

        if (bindingResult.hasErrors()) {
            return "task_form";
        }

        if (task.getId() != null) {
            Task oldTask = taskService.getTaskById(task.getId());

            task.setStatus(oldTask.getStatus());
            task.setParticipatedUsers(oldTask.getParticipatedUsers());
            task.setCompleteDate(oldTask.getCompleteDate());
        }

        taskService.saveTask(task);
        return "redirect:/tasks/invite-users/" + task.getId();
    }

    @GetMapping("/edit/{id}")
    public String showEditTaskForm(Model model, @PathVariable("id") Long id) {
        Task task = taskService.getTaskById(id);

        model.addAttribute("task", task);
        return "task_form";
    }

    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable("id") Long id) {
        taskService.deleteTaskById(id);
        return "redirect:/tasks";
    }

    @GetMapping("/complete/{id}")
    public String completeTask(@PathVariable("id") Long id) {
        Task task = taskService.getTaskById(id);
        task.setStatus(2);
        task.setCompleteDate(new Date(System.currentTimeMillis()));

        taskService.saveTask(task);

        return "redirect:/tasks";
    }

    @GetMapping("/incomplete/{id}")
    public String incompleteTask(@PathVariable("id") Long id) {
        Task task = taskService.getTaskById(id);
        Date today = new Date(System.currentTimeMillis());

        if (today.compareTo(task.getEndDate()) > 0) {
            task.setStatus(3);
        } else {
            task.setStatus(1);
        }
        task.setCompleteDate(null);

        taskService.saveTask(task);

        return "redirect:/tasks";
    }

    @GetMapping("/add-participated-user")
    public String addParticipateUser(@RequestParam("taskId") Long taskId,
                                     @RequestParam("userId") Long userId) {
        Task task = taskService.getTaskById(taskId);
        User user = userService.getUserById(userId);

        task.addParticipatedUser(user);
        taskService.saveTask(task);

        return "redirect:/tasks/invite-users/" + taskId;
    }

    @GetMapping("/remove-participated-user")
    public String removeParticipateUser(@RequestParam("taskId") Long taskId,
                                     @RequestParam("userId") Long userId) {
        Task task = taskService.getTaskById(taskId);
        User user = userService.getUserById(userId);

        task.removeParticipatedUser(user);
        taskService.saveTask(task);

        return "redirect:/tasks/invite-users/" + taskId;
    }

    @GetMapping("/details/{id}")
    public String showTaskDetails(Model model, @PathVariable("id") Long id) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByEmail(auth.getName());
        Task task = taskService.getTaskById(id);

        model.addAttribute("currentUser", currentUser);
        model.addAttribute("task", task);
        return "task_details";
    }

    @PostMapping("/upload-document")
    public String uploadDocument(Model model, @RequestParam("taskId") Long taskId,
                                 @RequestParam("document") MultipartFile multipartFile) throws IOException {
        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        Task task = taskService.getTaskById(taskId);

        for (Document document : task.getDocuments()) {
            if (document.getName().equals(fileName)) {
                model.addAttribute("uploadError", "File đã tồn tại");
                return "redirect:/tasks/details/" + taskId;
            }
        }

        Document document = new Document();
        document.setName(fileName);
        document.setContent(multipartFile.getBytes());
        document.setSize(multipartFile.getSize());
        document.setUploadTime(new Date(System.currentTimeMillis()));
        document.setTask(task);

        task.addDocument(document);
        taskService.saveTask(task);

        return "redirect:/tasks/details/" + taskId;
    }

}
