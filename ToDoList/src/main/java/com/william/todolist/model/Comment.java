package com.william.todolist.model;

import javax.persistence.*;
import javax.validation.Valid;
import java.util.Date;

@Entity(name = "Comment")
@Table(name = "comment")
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "content", nullable = false)
    private String content;

    @Column(name = "comment_time", nullable = false)
    private Date commentTime;

    @ManyToOne
    @JoinColumn(name = "user_id")
    @Valid
    private User user;

    public Comment() {
    }

    public Comment(Long id, String name, Date commentTime, @Valid User user) {
        this.id = id;
        this.content = name;
        this.commentTime = commentTime;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", commentTime=" + commentTime +
                ", user=" + user +
                '}';
    }
}
