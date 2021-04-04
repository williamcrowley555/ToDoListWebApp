package com.william.todolist.repository;

import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface TaskRepository extends JpaRepository<Task, Long> {

    List<Task> findByUser(User user);

    List<Task> findByParticipatedUsers(User user);

    List<Task> findByUserNotIn(Collection<User> users);

    List<Task> findByIdNotIn(Collection<Long> ids);
}
