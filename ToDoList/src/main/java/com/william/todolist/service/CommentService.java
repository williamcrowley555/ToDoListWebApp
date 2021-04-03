package com.william.todolist.service;

import com.william.todolist.model.Comment;

import java.util.Collection;

public interface CommentService {

    public void deleteAllComment(Collection<Comment> comments);
}
