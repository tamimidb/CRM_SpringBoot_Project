package com.crm.services.impl;

import com.crm.common.ICommonService;
import com.crm.models.Lead;
import com.crm.models.Deal;


public interface ILeadServices extends ICommonService<Deal>{
	public Lead getById(String pid);
}
