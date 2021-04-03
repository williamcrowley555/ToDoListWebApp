package com.william.todolist.service.impl;

import com.william.todolist.model.Document;
import com.william.todolist.repository.DocumentRepository;
import com.william.todolist.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Service
public class DocumentServiceImpl implements DocumentService {

    @Autowired
    private DocumentRepository documentRepository;

    @Override
    public List<Document> getAllDocument() {
        return documentRepository.findAll();
    }

    @Override
    public Document getDocumentById(Long id) {
        Document document = null;
        Optional<Document> optional = documentRepository.findById(id);
        if (optional.isPresent()) {
            document = optional.get();
        } else {
            throw new RuntimeException("Document ID: " + id + " does not exist");
        }
        return document;
    }

    @Override
    public Document saveDocument(Document document) {
        return documentRepository.save(document);
    }

    @Override
    public void deleteDocumentById(Long id) {
        documentRepository.deleteById(id);
    }

    @Override
    public void deleteAllDocument(Collection<Document> documents) {
        documentRepository.deleteAll(documents);
    }
}
