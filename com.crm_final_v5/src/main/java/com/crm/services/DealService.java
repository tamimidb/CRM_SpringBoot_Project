package com.crm.services;




import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.crm.common.ICommonService;
import com.crm.dao.ContactDAO;
import com.crm.dao.DealDAO;
import com.crm.dao.TaskDAO;
import com.crm.models.ContactsModel;
import com.crm.models.Task;
import com.crm.models.Deal;






@Service(value = "dealService")
public class DealService implements ICommonService<Deal>{

	@Autowired
    DealDAO dealDAO;


    
	public final String EntityImagePath = "app-assets/images/";
	
//    public Lead save1(HttpServletRequest request, MultipartFile photo) throws IOException{
//    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
//        //Map<String, String[]> map = request.getParameterMap();
//      
//        return null;
//
//    }
 
	@Override
    public List <Deal> getAll() {
        return dealDAO.getAll();
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
	public Deal save(HttpServletRequest request) {
		 Deal con = new Deal();
	        con.setDealCode(request.getParameter("dealCode"));
	        con.setDealName(request.getParameter("dealName"));
	        con.setAccountName(request.getParameter("accountName"));
	        con.setType(request.getParameter("type"));
	        con.setLeadSource(request.getParameter("leadSource"));
	        
	        con.setAmount(Integer.valueOf(request.getParameter("amount")));
	        con.setClosingDate(request.getParameter("closingDate"));
	        con.setStage(request.getParameter("stage"));
	        con.setProbability(Integer.valueOf(request.getParameter("probability")));
	        con.setExpectedRevenue(Double.valueOf(request.getParameter("expectedRevenue")));
	        con.setCampaignSource(request.getParameter("campaignSurce"));
	        con.setContactName(request.getParameter("contactName"));
	      
	        
	    
	        dealDAO.save(con);
	        return con;
	}



	@Override
	public Deal edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public Deal update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}







}
