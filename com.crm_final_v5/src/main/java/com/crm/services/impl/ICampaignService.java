package com.crm.services.impl;

import com.crm.common.ICommonService;
import com.crm.models.Task;
import com.crm.models.Campaign;


public interface ICampaignService extends ICommonService<Campaign>{
	public Task getById(String id);
}
