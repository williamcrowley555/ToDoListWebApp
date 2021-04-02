package com.william.todolist;

import com.william.todolist.model.Document;
import com.william.todolist.repository.DocumentRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Date;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(value = false)
public class DocumentRepositoryTest {

    @Autowired
    private DocumentRepository documentRepository;

    @Autowired
    private TestEntityManager entityManager;

    @Test
    public void testInsertDocument() throws IOException {
        File file = new File("D:\\Download\\BTQuaTrinh_1.docx");
        byte[] bytes = Files.readAllBytes(file.toPath());
        Document document = new Document();

        document.setName(file.getName());
        document.setContent(bytes);
        document.setSize(bytes.length);
        document.setUploadTime(new Date());

        Document savedDoc = documentRepository.save(document);
        Document existingDoc = entityManager.find(Document.class, savedDoc.getId());
        assert savedDoc.getSize() == bytes.length;
    }

    @Test
    public void testDeleteDocumentById() {
//        Document document = documentRepository.findById(5L).get();
        documentRepository.deleteById(5L);
    }

}
