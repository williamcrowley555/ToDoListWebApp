package com.william.todolist.model;

import com.william.todolist.validation.DateRange;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.Date;

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

    @Column(name = "sector", nullable = false)
    @NotNull(message = "Hãy chọn phạm vi")
    @Min(value = 0)
    @Max(value = 5)
    private Integer sector;

    @Column(name = "status", nullable = false)
    @NotNull(message = "Hãy chọn trạng thái")
    @Min(value = 0)
    @Max(value = 5)
    private Integer status;

    @ManyToOne
    @JoinColumn(name = "user_id")
    @Valid
    private User user;

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

    public String getTitle() {
        return title;
    }

    public Date getStartDate() {
        return startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public Integer getSector() {
        return sector;
    }

    public Integer getStatus() {
        return status;
    }

    public User getUser() {
        return user;
    }
}
