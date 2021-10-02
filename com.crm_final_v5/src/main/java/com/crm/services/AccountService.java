package com.crm.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.common.ICommonService;
import com.crm.dao.AccountDAO;
import com.crm.dao.TaskDAO;
import com.crm.models.AccountsModel;
import com.crm.models.Task;

@Service(value = "accountService")
public class AccountService implements ICommonService<AccountsModel> {

	@Autowired
	AccountDAO accountDAO;

	public final String EntityImagePath = "app-assets/images/";

//    public Lead save1(HttpServletRequest request, MultipartFile photo) throws IOException{
//    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
//        //Map<String, String[]> map = request.getParameterMap();
//      
//        return null;
//
//    }

	@Override
	public List<AccountsModel> getAll() {
		return accountDAO.getAll();
	}

//    public Lead update(HttpServletRequest request) {
//        String name = request.getParameter("name");
//        Lead p = new Lead();
//        p.setId(Integer.valueOf(request.getParameter("id")));
//        p.setName(name);
//        p.setQuantity(Integer.valueOf(request.getParameter("qty")));
//        p.setPrice(Double.valueOf(request.getParameter("price")));
//        return leadDAO.update(p);
//    }

	@Override
	public AccountsModel save(HttpServletRequest request) {
		AccountsModel ac = new AccountsModel();
		ac.setAccountCode(request.getParameter("accountCode"));
		ac.setAccountName(request.getParameter("accountName"));
		ac.setParentAccountName(request.getParameter("parentAccountName"));
		ac.setEmail(request.getParameter("email"));
		ac.setPhone(request.getParameter("phone"));
		ac.setWebsite(request.getParameter("website"));
		ac.setRating(request.getParameter("rating"));
		ac.setAccountNumber(Integer.valueOf(request.getParameter("accountNumber")));
		ac.setAnnualRevenue(Double.valueOf(request.getParameter("annualRevenue")));

		accountDAO.save(ac);
		return ac;
	}

	@Override
	public AccountsModel edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AccountsModel update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
