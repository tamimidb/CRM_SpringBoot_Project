package com.crm.services.impl;

import com.crm.common.ICommonService;
import com.crm.models.ContactsModel;
import com.crm.models.Task;
import com.crm.models.LeadFeedback;


public interface ILeadFeedbackService extends ICommonService<LeadFeedback>{
	public Task getById(String id);
}
