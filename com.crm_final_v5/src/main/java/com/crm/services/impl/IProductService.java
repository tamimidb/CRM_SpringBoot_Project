package com.crm.services.impl;

import com.crm.common.ICommonService;
import com.crm.models.Product;

public interface IProductService extends ICommonService<Product>{
	public Product getById(String pid);
}
