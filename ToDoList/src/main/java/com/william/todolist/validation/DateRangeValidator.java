package com.william.todolist.validation;

import com.william.todolist.model.Task;
import org.apache.tomcat.jni.Local;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;

public class DateRangeValidator implements ConstraintValidator<DateRange, Task> {

    @Override
    public void initialize(DateRange constraintAnnotation) {

    }

    @Override
    public boolean isValid(Task task, ConstraintValidatorContext constraintValidatorContext) {
        if (task.getStartDate() == null || task.getEndDate() == null)
            return true;

        LocalDate startDate = task.getStartDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        LocalDate endDate = task.getEndDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        Integer dayRange = Period.between(startDate, endDate).getDays();

        return dayRange > 0;
    }
}
