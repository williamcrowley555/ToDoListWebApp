package com.william.todolist.service;

import com.william.todolist.model.Reminder;

import java.util.Collection;

public interface ReminderService {

    public void deleteAllComment(Collection<Reminder> reminders);
}
