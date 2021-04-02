package com.william.todolist.service;

import com.william.todolist.model.Document;

import java.util.List;

public interface DocumentService {

    List<Document> getAllDocument();
    Document getDocumentById(Long id);
    void deleteDocumentById(Long id);
}
