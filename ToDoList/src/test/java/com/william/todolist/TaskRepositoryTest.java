package com.william.todolist;

import com.william.todolist.model.Document;
import com.william.todolist.model.Task;
import com.william.todolist.model.User;
import com.william.todolist.repository.DocumentRepository;
import com.william.todolist.repository.TaskRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Date;
import java.util.List;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(value = false)
public class TaskRepositoryTest {

    @Autowired
    private TaskRepository taskRepository;

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private DocumentRepository documentRepository;

    @Test
    public void testGetTasksByUser() {
        User ducThang = entityManager.find(User.class, 7L);
        List<Task> tasks = taskRepository.findByUser(ducThang);
        tasks.forEach(System.out::println);
    }

    @Test
    public void testAssignNewDocumentToExistingTask() throws IOException {
        File file = new File("D:\\Download\\BTQuaTrinh_1.docx");
        byte[] bytes = Files.readAllBytes(file.toPath());
        Task task = taskRepository.findById(1L).get();
        Document document = new Document();

        document.setName(file.getName());
        document.setContent(bytes);
        document.setSize(bytes.length);
        document.setUploadTime(new Date());
        document.setTask(task);

        task.addDocument(document);
    }

    @Test
    public void testDeleteDocumentFromExistingTask() {
        Task task = taskRepository.findById(1L).get();

//        Add cascade = CascadeType.ALL, orphanRemoval = true as parameter of @OneToMany
//        Work because of @DataJPATest
//        task.removeDocument(new Document(7L));
    }
}
