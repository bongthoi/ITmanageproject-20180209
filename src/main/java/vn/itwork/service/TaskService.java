package vn.itwork.service;

import java.util.List;

import vn.itwork.entity.ResultExceute;
import vn.itwork.entity.Task;

public interface TaskService {

	ResultExceute insert_or_update(String sqltype, Task a, String username);

	int count_search_task(String project, int taskstatus, String tasktitle);

	List<Task> search_task(String project, int taskstatus, String tasktitle,
			int start, int limit);

	Task getTaskById(String id);


	ResultExceute update1(String task_id, int task_progress,
			int task_expect_time, String task_title, String project_id,
			String log, String username);

	ResultExceute update2(Task a, String log, String username);

	ResultExceute update3(String task_id, int task_progress,
			int task_spent_time, String task_title, String project_id,
			String log, String username);

	int count_search_task(String project, int taskstatus, String tasktitle,
			String employee);

	List<Task> search_task(String employee, String project, int taskstatus,
			String tasktitle, int start, int limit);

}
