package com.william.todolist.model;

import com.william.todolist.validation.DateRange;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Entity(name = "Task")
@Table(name = "task")
@DateRange
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false)
    @NotBlank(message = "Tiêu đề không được để trống")
    private String title;

    @Column(name = "start_date", nullable = false)
    @NotNull(message = "Ngày bắt đầu không được để trống")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startDate;

    @Column(name = "end_date", nullable = false)
    @NotNull(message = "Ngày kết thúc không được để trống")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;

    @Column(name = "complete_date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date completeDate;

    @Column(name = "sector", nullable = false)
    @NotNull(message = "Hãy chọn phạm vi")
    @Min(value = 1)
    @Max(value = 5)
    private Integer sector;

    @Column(name = "status", nullable = false)
    @Min(value = 1)
    @Max(value = 5)
    private Integer status = 1;

    @ManyToOne
    @JoinColumn(name = "user_id")
    @Valid
    private User user;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "task_user",
            joinColumns = @JoinColumn(name = "task_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    @Valid
    private Set<User> participatedUsers = new HashSet<>();

    @OneToMany(mappedBy = "task", fetch = FetchType.EAGER)
    private Set<Document> documents = new HashSet<>();

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "task_comment",
            joinColumns = @JoinColumn(name = "task_id"),
            inverseJoinColumns = @JoinColumn(name = "comment_id")
    )
    @OrderBy("commentTime ASC")
    private Set<Comment> comments = new HashSet<>();

    public Task() {
    }

    public Task(@NotBlank(message = "Tiêu đề không được để trống") String title, @NotNull(message = "Ngày bắt đầu không được để trống") Date startDate, @NotNull(message = "Ngày kết thúc không được để trống") Date endDate, @NotNull(message = "Hãy chọn phạm vi") @Min(value = 0) @Max(value = 5) Integer sector, @NotNull(message = "Hãy chọn trạng thái") @Min(value = 0) @Max(value = 5) Integer status, @Valid User user) {
        this.title = title;
        this.startDate = startDate;
        this.endDate = endDate;
        this.sector = sector;
        this.status = status;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Date getCompleteDate() {
        return completeDate;
    }

    public void setCompleteDate(Date completeDate) {
        this.completeDate = completeDate;
    }

    public Integer getSector() {
        return sector;
    }

    public void setSector(Integer sector) {
        this.sector = sector;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Set<User> getParticipatedUsers() {
        return participatedUsers;
    }

    public void setParticipatedUsers(Set<User> participatedUsers) {
        this.participatedUsers = participatedUsers;
    }

    public Set<Document> getDocuments() {
        return documents;
    }

    public void setDocuments(Set<Document> documents) {
        this.documents = documents;
    }

    public Set<Comment> getComments() {
        return comments;
    }

    public void setComments(Set<Comment> comments) {
        this.comments = comments;
    }

    public String getParticipatedUsersAsFullName() {
        String users = "";
        for (User user : this.participatedUsers) {
            users += user.getFullName() + ", ";
        }
        return users.substring(0, users.length() -2);
    }

    public void addParticipatedUser(User user) {
        this.participatedUsers.add(user);
    }

    public void removeParticipatedUser(User user) {
        this.participatedUsers.remove(user);
    }

    public void addDocument(Document document) {
        this.documents.add(document);
    }

    public void removeDocument(Document document) {
        this.documents.remove(document);
    }

    public void addComment(Comment comment) {
        this.comments.add(comment);
    }

    public void removeComment(Comment comment) {
        this.comments.remove(comment);
    }

    public String startDateFormat() {
        DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        return formatter.format(startDate);
    }

    public String endDateFormat() {
        DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        return formatter.format(endDate);
    }

    public String completeDateFormat() {
        DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        return formatter.format(completeDate);
    }

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", sector=" + sector +
                ", status=" + status +
                ", user=" + user +
                ", participatedUsers=" + participatedUsers +
                '}';
    }
}
