package com.william.todolist.controller;

import Utils.TaskUtils;
import com.william.todolist.model.*;
import com.william.todolist.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
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

    @Autowired
    private RoleService roleService;

    @Autowired
    private DocumentService documentService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private ReminderService reminderService;

    @GetMapping("")
    public String listTasks(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByEmail(auth.getName());
        Role adminRole = roleService.getRoleByNormalizedName("ROLE_ADMIN");
        List<Task> taskList = null;
        List<Task> publicTaskList = taskService.getPublicUnrelatedTask(currentUser);

        if (currentUser.getRoles().contains(adminRole)) {
            taskList = taskService.getAllTask();
        } else {
            taskList = taskService.getTaskByUser(currentUser);
            taskList.addAll(taskService.getTaskByParticipatedUser(currentUser));
        }

        model.addAttribute("currentUser", currentUser);
        model.addAttribute("admin", currentUser.getRoles().contains(adminRole));
        model.addAttribute("taskList", taskList);
        model.addAttribute("publicTaskList", publicTaskList);

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

        TaskUtils.updateStatus(task);

        taskService.saveTask(task);
        return "redirect:/tasks/invite-users/" + task.getId();
    }

    @GetMapping("/edit/{id}")
    public String showEditTaskForm(Model model, @PathVariable("id") Long id) {
        Task task = taskService.getTaskById(id);

        model.addAttribute("task", task);
        return "task_form";
    }

    @PostMapping("/edit")
    public String editTask(@Valid @ModelAttribute("task") Task task, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "task_form";
        }

        if (task.getId() != null) {
            Task oldTask = taskService.getTaskById(task.getId());

            task.setCompleteDate(oldTask.getCompleteDate());
            task.setUser(oldTask.getUser());
            task.setParticipatedUsers(oldTask.getParticipatedUsers());
            task.setDocuments(oldTask.getDocuments());
            task.setComments(oldTask.getComments());
            task.setReminders(oldTask.getReminders());

            TaskUtils.updateStatus(task);

            taskService.saveTask(task);
        }

        return "redirect:/tasks/invite-users/" + task.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable("id") Long id) {
        Task task = taskService.getTaskById(id);

        task.setParticipatedUsers(null);
        taskService.saveTask(task);

        documentService.deleteAllDocument(task.getDocuments());
        commentService.deleteAllComment(task.getComments());
        reminderService.deleteAllComment(task.getReminders());

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
        boolean commentPermission = true;

        List<Task> currentUserTaskList = taskService.getTaskByUser(currentUser);
        currentUserTaskList.addAll(taskService.getTaskByParticipatedUser(currentUser));

        if (currentUserTaskList.contains(task) == false) {
            commentPermission = false;
        }

        model.addAttribute("currentUser", currentUser);
        model.addAttribute("task", task);
        model.addAttribute("comment", new Comment());
        model.addAttribute("commentPermission", commentPermission);
        model.addAttribute("reminder", new Reminder());

        return "task_details";
    }

    @PostMapping("/upload-document")
    public String uploadDocument(RedirectAttributes redirectAttributes, @RequestParam("taskId") Long taskId,
                                 @RequestParam("document") MultipartFile multipartFile) throws IOException {

        if (multipartFile.getSize() <= 0)
            return "redirect:/tasks/details/" + taskId;

        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        Task task = taskService.getTaskById(taskId);

        for (Document document : task.getDocuments()) {
            if (document.getName().equals(fileName)) {
                redirectAttributes.addFlashAttribute("uploadError", "File đã tồn tại");
                return "redirect:/tasks/details/" + taskId;
            }
        }

        Document document = new Document();
        document.setName(fileName);
        document.setContent(multipartFile.getBytes());
        document.setSize(multipartFile.getSize());
        document.setUploadTime(new Date(System.currentTimeMillis()));
        document.setTask(task);

        documentService.saveDocument(document);

        return "redirect:/tasks/details/" + taskId;
    }

    @GetMapping("/download-document")
    public void downloadDocument(@RequestParam("id") Long id, HttpServletResponse response) throws IOException {
        Document document = documentService.getDocumentById(id);

        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=" + document.getName();

        response.setContentType("application/octet-stream");
        response.setHeader(headerKey, headerValue);

        ServletOutputStream outputStream = response.getOutputStream();

        outputStream.write(document.getContent());
        outputStream.close();
    }

    @GetMapping("/delete-document/{id}")
    public String deleteDocument(Model model, @RequestParam("taskId") Long taskId,
                                 @PathVariable("id") Long documentId) {
        Document document = documentService.getDocumentById(documentId);

        documentService.deleteDocumentById(documentId);

        return "redirect:/tasks/details/" + taskId;
    }

    @PostMapping("/add-comment")
    public String addComment(@RequestParam("taskId") Long taskId,
                             @ModelAttribute("comment") Comment comment) {
        Task task = taskService.getTaskById(taskId);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByEmail(auth.getName());

        comment.setCommentTime(new Date(System.currentTimeMillis()));
        comment.setUser(currentUser);

        task.addComment(comment);
        taskService.saveTask(task);

        return "redirect:/tasks/details/" + taskId;
    }

    @PostMapping("/add-reminder")
    public String addReminder(@RequestParam("taskId") Long taskId,
                             @ModelAttribute("reminder") Reminder reminder) {
        Task task = taskService.getTaskById(taskId);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.getUserByEmail(auth.getName());

        reminder.setReminderTime(new Date(System.currentTimeMillis()));
        reminder.setUser(currentUser);

        task.addReminder(reminder);
        taskService.saveTask(task);

        return "redirect:/tasks/details/" + taskId;
    }

}
