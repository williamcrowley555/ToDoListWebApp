package com.william.todolist.service.impl;

import com.william.todolist.model.Comment;
import com.william.todolist.repository.CommentRepository;
import com.william.todolist.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepository commentRepository;

    @Override
    public void deleteAllComment(Collection<Comment> comments) {
        commentRepository.deleteAll(comments);
    }
}
