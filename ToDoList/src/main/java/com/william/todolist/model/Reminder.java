package com.william.todolist.model;

import javax.persistence.*;
import javax.validation.Valid;
import java.util.Date;

@Entity(name = "Reminder")
@Table(name = "reminder")
public class Reminder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "content", nullable = false)
    private String content;

    @Column(name = "reminder_time", nullable = false)
    private Date reminderTime;

    @ManyToOne
    @JoinColumn(name = "user_id")
    @Valid
    private User user;

    public Reminder() {
    }

    public Reminder(Long id, String content, Date reminderTime, @Valid User user) {
        this.id = id;
        this.content = content;
        this.reminderTime = reminderTime;
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

    public Date getReminderTime() {
        return reminderTime;
    }

    public void setReminderTime(Date reminderTime) {
        this.reminderTime = reminderTime;
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
                ", reminderTime=" + reminderTime +
                ", user=" + user +
                '}';
    }
}
