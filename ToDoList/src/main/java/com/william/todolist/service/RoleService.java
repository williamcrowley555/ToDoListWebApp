package com.william.todolist.service;

import com.william.todolist.model.Role;

import java.util.List;

public interface RoleService {

    List<Role> getAllRole();
    Role getRoleById(Long id);
    Role saveRole(Role role);
    void deleteRoleById(Long id);
}
