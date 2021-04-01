package com.william.todolist;

import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import com.william.todolist.repository.TaskRepository;
import com.william.todolist.repository.UserRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(value = false)
public class UserRepositoryTest {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TaskRepository taskRepository;

    @Test
    public void testGetAllUserNotInIds() {
        Task task = taskRepository.findById(1L).get();
        Set<User> participatedUsers = task.getParticipatedUsers();
        List<Long> ids = participatedUsers.stream().map(item -> item.getId()).collect(Collectors.toList());
        List<User> unparticipatedUsers = userRepository.findAllNotIn(ids);
        unparticipatedUsers.forEach(System.out::println);
    }
}
