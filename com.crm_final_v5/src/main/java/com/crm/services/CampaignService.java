package com.crm.services;




import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.crm.common.ICommonService;
import com.crm.dao.AccountDAO;
import com.crm.dao.CampaignDAO;
import com.crm.dao.TaskDAO;
import com.crm.models.Task;
import com.crm.models.Campaign;






@Service(value = "campaignService")
public class CampaignService implements ICommonService<Campaign>{

	@Autowired
    CampaignDAO campaignDAO;


    
	public final String EntityImagePath = "app-assets/images/";
	
//    public Lead save1(HttpServletRequest request, MultipartFile photo) throws IOException{
//    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
//        //Map<String, String[]> map = request.getParameterMap();
//      
//        return null;
//
//    }
 
	
    public List <Campaign> getAll() {
    
        return campaignDAO.getAll();
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
	public Campaign save(HttpServletRequest request) {
		 Campaign camp = new Campaign();
		 camp.setCampaignCode(request.getParameter("campaignCode"));
	        camp.setCampaignName(request.getParameter("campaignName"));
	        camp.setType(request.getParameter("type"));
	        camp.setStatus(request.getParameter("status"));
	        camp.setStartDate(request.getParameter("startDate"));
	        camp.setEndDate(request.getParameter("endDate"));
	        camp.setCampaignOwner(request.getParameter("campaignOwner"));
	        camp.setExpectedRevenue(request.getParameter("expectedRespnse"));
	        camp.setBudgetedCost(request.getParameter("budgetedCost"));
	        camp.setCreatedBy(request.getParameter("createdBy"));
	        camp.setModifiedBy(request.getParameter("modifiedBy"));
	        camp.setParentCampaign(request.getParameter("parentCampaign"));
	        camp.setDescription(request.getParameter("description"));
	       
	        campaignDAO.save(camp);
	        return camp;
	}






@Override
public Campaign edit(String id) {
	// TODO Auto-generated method stub
	return null;
}



@Override
public Campaign update(HttpServletRequest request) {
	// TODO Auto-generated method stub
	return null;
}



@Override
public int delete(String id) {
	// TODO Auto-generated method stub
	return 0;
}






}
