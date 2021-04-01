package com.william.todolist.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity(name = "Document")
@Table(name = "document",
        uniqueConstraints = {@UniqueConstraint(name = "document_name_unique", columnNames = "name")})
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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date uploadTime;

    public Document() {
    }

    public Document(Long id, String name, byte[] content, long size, Date uploadTime) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.size = size;
        this.uploadTime = uploadTime;
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
}
