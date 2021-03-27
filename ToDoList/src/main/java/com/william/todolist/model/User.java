package com.william.todolist.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity(name = "User")
@Table(name = "user",
        uniqueConstraints = {
                        @UniqueConstraint(name = "user_email_unique", columnNames = "email")
        })
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name", nullable = false)
    @NotBlank(message = "Tên không được để trống")
    @Pattern(regexp = "^[\\p{L}A-Za-z ]+$", message = "Tên không hợp lệ")
    private String firstName;

    @Column(name = "last_name", nullable = false)
    @NotBlank(message = "Họ không được để trống")
    @Pattern(regexp = "^[\\p{L}A-Za-z]+$", message = "Họ không hợp lệ")
    private String lastName;

    @Column(name = "dob", nullable = false)
    @NotNull(message = "Ngày sinh không được để trống")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dob;

    @Column(name = "gender", nullable = false)
    @NotNull(message = "Hãy chọn giới tính")
    @Min(value = 0)
    @Max(value = 5)
    private Integer gender = 1;

    @Column(name = "email", nullable = false)
    @NotBlank(message = "Email không được để trống")
    @Email(message = "Email không hợp lệ")
    private String email;

    @Column(name = "password", nullable = false)
    @NotBlank
    @Size(min = 5, message = "Mật khẩu tối thiểu 5 ký tự")
    private String password;

    @Column(name = "enabled", nullable = false, columnDefinition="tinyint(1) default 1")
    private boolean enabled = true;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "user_role",
                joinColumns = {@JoinColumn(name = "user_id")},
                inverseJoinColumns = {@JoinColumn(name = "role_id")})
    @Valid
    private Set<Role> roles = new HashSet<>();

    public User() {
    }

    public User(Long id) {
        this.id = id;
    }

    public User(@NotBlank @Pattern(regexp = "^[A-Za-z ]+$") String firstName, @NotBlank @Pattern(regexp = "^[A-Za-z]+$") String lastName, @NotNull Date dob, @NotNull @Min(value = 0) @Max(value = 5) Integer gender, @NotBlank @Email String email, @NotBlank @Size(min = 5, message = "Password must be at least 5 characters") String password, @Valid Set<Role> roles) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.gender = gender;
        this.email = email;
        this.password = password;
        this.roles = roles;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", enabled=" + enabled +
                ", roles=" + roles +
                '}';
    }
}
