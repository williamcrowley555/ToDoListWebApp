package com.william.todolist.service.impl;

import com.william.todolist.model.Reminder;
import com.william.todolist.repository.ReminderRepository;
import com.william.todolist.service.ReminderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class ReminderServiceImpl implements ReminderService {

    @Autowired
    private ReminderRepository reminderRepository;

    @Override
    public void deleteAllComment(Collection<Reminder> reminders) {
        reminderRepository.deleteAll(reminders);
    }
}
