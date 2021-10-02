package com.crm.services.impl;

import com.crm.common.ICommonService;
import com.crm.models.AccountsModel;
import com.crm.models.Task;


public interface IAccountService extends ICommonService<AccountsModel>{
	public Task getById(String id);
}
