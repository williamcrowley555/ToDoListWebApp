package Utils;

import com.william.todolist.model.Task;
import com.william.todolist.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class TaskUtils {

    @Autowired
    private TaskService taskService;

    public static void updateStatus(Task task) {
        Date today = new Date(System.currentTimeMillis());

        if (today.compareTo(task.getEndDate()) > 0) {
            if (task.getCompleteDate() == null) {
                task.setStatus(3);
            } else {
                task.setStatus(2);
            }
        } else {
            if (task.getCompleteDate() == null) {
                task.setStatus(1);
            } else {
                task.setStatus(2);
            }
        }
    }
}
