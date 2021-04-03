package com.william.todolist;

import com.william.todolist.model.Document;
import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import com.william.todolist.service.TaskService;
import com.william.todolist.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;

import javax.persistence.EntityManager;
import java.io.IOException;

@SpringBootTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(value = false)
public class TaskServiceTest {

    @Autowired
    private EntityManager entityManager;

    @Autowired
    private TaskService taskService;

    @Autowired
    private UserService userService;

    @Test
    public void testAssignExistingUserToExistingTask() {
        Task task = taskService.getTaskById(1L);
        User user = userService.getUserById(2L);
        task.addParticipatedUser(user);
        taskService.saveTask(task);
    }

    @Test
    public void testRemoveUserFromExistingTask() {
        Task task = taskService.getTaskById(1L);
        User user = userService.getUserById(2L);
        task.removeParticipatedUser(user);
        taskService.saveTask(task);
    }

    @Test
    public void testDeleteDocumentFromExistingTask() {
        Task task = taskService.getTaskById(1L);
        Document document = entityManager.find(Document.class, 11L);

        task.removeDocument(document);
    }
}
