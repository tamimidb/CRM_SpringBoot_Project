package com.crm.services;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.crm.common.ICommonService;
import com.crm.dao.LeadDAO;

import com.crm.models.Lead;





@Service(value = "leadService")
public class LeadService implements ICommonService<Lead>{

	@Autowired
    LeadDAO leadDAO;


    
	public final String EntityImagePath = "app-assets/images/";
	
    public Lead save1(HttpServletRequest request, MultipartFile photo) throws IOException{
    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
        //Map<String, String[]> map = request.getParameterMap();
      
        return null;

    }

    
	@Autowired 
	ServletContext servletContext;
    
	public void saveFile(MultipartFile file, String fileName, String path) throws IOException {
		byte[] bytes  = file.getBytes();
	
		String filePath = servletContext.getRealPath(path);
		File dir = new File(filePath);
		File serverFile = new File(dir.getAbsolutePath()
				+ File.separator + fileName);
		BufferedOutputStream stream = new BufferedOutputStream(
				new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();
	}

    
	
    public List <Lead> getAll() {
        return leadDAO.getAll();
    }

    public Lead getById(String pid) {
    	  return leadDAO.getById(pid);
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
    public int delete(String id) {
    	Lead p = leadDAO.getById(Integer.valueOf(id));
        return leadDAO.delete(p);
    }

	@Override
	public Lead edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Lead save(HttpServletRequest request) {
   	 Lead lead = new Lead();
   	lead.setLeadCode(request.getParameter("leadCode"));
     lead.setLeadFirstName(request.getParameter("leadFirstName"));
     lead.setLeadLastName(request.getParameter("leadLastName"));
     lead.setJobTitle(request.getParameter("jobTitle"));
     lead.setLeadSource(request.getParameter("leadSource"));
     lead.setLeadStatus(request.getParameter("leadStatus"));
     lead.setLeadIndustry(request.getParameter("leadIndustry"));
     lead.setLeadCompany(request.getParameter("leadCompany"));
     lead.setLeadCompanyAnnualRevenue(request.getParameter("leadCompanyAnnualRevenue"));
     lead.setLeadCompanyNumberOfEmployees(request.getParameter("leadCompanyNumberOfEmployees"));
     lead.setLeadRating(request.getParameter("leadRating"));
     lead.setLeadEmail(request.getParameter("leadEmail"));
     lead.setLeadMobile(request.getParameter("leadMobile"));
     lead.setLeadFax(request.getParameter("leadFax"));
     lead.setLeadWebsite(request.getParameter("leadWebsite"));
     lead.setLeadStreet(request.getParameter("leadStreet"));
     lead.setLeadCity(request.getParameter("leadCity"));
     lead.setLeadState(request.getParameter("leadState"));
     lead.setLeadZipCode(request.getParameter("leadZipCode"));
     lead.setLeadCountry(request.getParameter("leadCountry"));
     lead.setLeadDescription(request.getParameter("leadDescription"));



     leadDAO.save(lead);
     return lead;
	}



	@Override
	public Lead update(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

}
