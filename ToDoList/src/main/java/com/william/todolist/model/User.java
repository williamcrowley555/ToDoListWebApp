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
    @NotBlank
    @Pattern(regexp = "^[A-Za-z ]+$")
    private String firstName;

    @Column(name = "last_name", nullable = false)
    @NotBlank
    @Pattern(regexp = "^[A-Za-z]+$")
    private String lastName;

    @Column(name = "dob", nullable = false)
    @NotBlank
    @DateTimeFormat(pattern = "dd/mm/yyyy")
    private Date dob;

    @Column(name = "gender", nullable = false)
    @NotBlank
    @Min(value = 0)
    @Max(value = 5)
    private Integer gender;

    @Column(name = "email", nullable = false)
    @NotBlank
    @Email
    private String email;

    @Column(name = "password", nullable = false)
    @NotBlank
    @Size(min = 5, message = "Password must be at least 5 characters")
    private String password;

    @Column(name = "enabled", nullable = false, columnDefinition="tinyint(1) default 1")
    @NotBlank
    private boolean enabled;

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

    public User(@NotBlank @Pattern(regexp = "^[A-Za-z ]+$") String firstName, @NotBlank @Pattern(regexp = "^[A-Za-z]+$") String lastName, @NotBlank Date dob, @NotBlank @Min(value = 0) @Max(value = 5) Integer gender, @NotBlank @Email String email, @NotBlank @Size(min = 5, message = "Password must be at least 5 characters") String password, @Valid Set<Role> roles) {
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
