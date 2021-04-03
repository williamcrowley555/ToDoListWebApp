package com.william.todolist.model;

import javax.persistence.*;
import java.util.Arrays;
import java.util.Date;
import java.util.Objects;

@Entity(name = "Document")
@Table(name = "document")
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "content", nullable = false, columnDefinition = "MEDIUMBLOB")
    private byte[] content;

    @Column(name = "size", nullable = false)
    private long size;

    @Column(name = "upload_time", nullable = false)
    private Date uploadTime;

    @ManyToOne
    @JoinColumn(name = "task_id")
    private Task task;

    public Document() {
    }

    public Document(Long id, String name, byte[] content, long size, Date uploadTime, Task task) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.size = size;
        this.uploadTime = uploadTime;
        this.task = task;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    @Override
    public String toString() {
        return "Document{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", content=" + Arrays.toString(content) +
                ", size=" + size +
                ", uploadTime=" + uploadTime +
                ", task=" + task +
                '}';
    }
}
