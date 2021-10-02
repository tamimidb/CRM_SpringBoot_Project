package com.crm.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.common.ICommonService;

import com.crm.models.Campaign;
import com.crm.dao.ContactDAO;
import com.crm.dao.DealDAO;
import com.crm.dao.LeadFeedbackDAO;
import com.crm.dao.TaskDAO;
import com.crm.models.ContactsModel;
import com.crm.models.Product;
import com.crm.models.Task;
import com.crm.models.Deal;
import com.crm.models.LeadFeedback;

@Service(value = "leadFeedbackService")
public class LeadFeedbackService implements ICommonService<LeadFeedback> {

	@Autowired
	LeadFeedbackDAO leadFeedbackDAO;

	public final String EntityImagePath = "app-assets/images/";

//    public Lead save1(HttpServletRequest request, MultipartFile photo) throws IOException{
//    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
//        //Map<String, String[]> map = request.getParameterMap();
//      
//        return null;
//
//    }

	@Override
	public List<LeadFeedback> getAll() {
		return leadFeedbackDAO.getAll();
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
	public LeadFeedback save(HttpServletRequest request) {
		LeadFeedback con = new LeadFeedback();
		con.setFeedbackCode(request.getParameter("feedbackCode"));
		con.setFeedbackType(request.getParameter("feedbackType"));
		con.setSelectedName(request.getParameter("selectedName"));
		con.setRating(Integer.valueOf(request.getParameter("rating")));
		con.setDescription(request.getParameter("description"));
		con.setLeadFirstName(request.getParameter("leadFirstName"));
		con.setLeadLastName(request.getParameter("leadLastName"));
		con.setLeadEmail(request.getParameter("leadEmail"));

		leadFeedbackDAO.save(con);
		return con;
	}

	@Override
	public LeadFeedback edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LeadFeedback update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Campaign> getAllCamp() {
		List<Campaign> camp = leadFeedbackDAO.getAllCamp();
		return camp;
	}

	public List<Product> getAllProduct() {
		List<Product> p = leadFeedbackDAO.getAllProduct();
		return p;
	}

	public List<?> getAllAvg() {
		List<?> avg = leadFeedbackDAO.getAveragefeedback();

		return avg;
	}

	public List<?> getAllProAvg() {
		List<?> avg = leadFeedbackDAO.getAverageProfeedback();

		return avg;
	}

}
