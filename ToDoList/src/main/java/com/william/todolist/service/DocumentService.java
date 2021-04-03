package com.william.todolist.service;

import com.william.todolist.model.Document;

import java.util.Collection;
import java.util.List;

public interface DocumentService {

    List<Document> getAllDocument();
    Document getDocumentById(Long id);
    Document saveDocument(Document document);
    void deleteDocumentById(Long id);
    void deleteAllDocument(Collection<Document> documents);
}
