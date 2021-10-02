package com.crm.services;




import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.crm.common.ICommonService;
import com.crm.dao.ContactDAO;
import com.crm.dao.TaskDAO;
import com.crm.models.ContactsModel;
import com.crm.models.Task;






@Service(value = "contactService")
public class ContactService implements ICommonService<ContactsModel>{

	@Autowired
    ContactDAO contactDAO;


    
	public final String EntityImagePath = "app-assets/images/";
	
//    public Lead save1(HttpServletRequest request, MultipartFile photo) throws IOException{
//    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
//        //Map<String, String[]> map = request.getParameterMap();
//      
//        return null;
//
//    }
 
	@Override
    public List <ContactsModel> getAll() {
        return contactDAO.getAll();
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
	public ContactsModel save(HttpServletRequest request) {
		 ContactsModel con = new ContactsModel();
	        con.setContactCode(request.getParameter("contactCode"));
	        con.setContactName(request.getParameter("contactName"));
	        con.setAccountName(request.getParameter("accountName"));
	        con.setEmail(request.getParameter("email"));
	        con.setPhone(request.getParameter("phone"));
	        con.setCompany(request.getParameter("company"));
	        
	    
	        contactDAO.save(con);
	        return con;
	}



	@Override
	public ContactsModel update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public ContactsModel edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}



}
