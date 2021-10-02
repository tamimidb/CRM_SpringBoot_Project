package com.crm.services.impl;

import com.crm.common.ICommonService;
import com.crm.models.ContactsModel;
import com.crm.models.Task;


public interface IContactService extends ICommonService<ContactsModel>{
	public Task getById(String id);
}
