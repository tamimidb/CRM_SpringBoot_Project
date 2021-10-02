package com.crm.services.impl;

import com.crm.common.ICommonService;
import com.crm.models.Task;


public interface ITaskService extends ICommonService<Task>{
	public Task getById(String id);
}
