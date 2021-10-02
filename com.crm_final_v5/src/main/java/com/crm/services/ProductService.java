package com.crm.services;


import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.crm.common.ICommonService;
import com.crm.dao.ProductDAO;
import com.crm.models.Product;

@Service(value = "productService")
public class ProductService implements ICommonService<Product> {

	@Autowired
	ProductDAO productDAO;

	public final String EntityImagePath = "app-assets/images/";

//    public Product save(HttpServletRequest request, MultipartFile photo) throws IOException{
//   
//    	saveFile(photo, "name12.jpg", EntityImagePath); //photo, photo_name, photo_location
//        //Map<String, String[]> map = request.getParameterMap();
//        String dropdown = request.getParameter("cars");
//    
//        
//        Product p = new Product();
//        //p.setName(request.getParameter("name"));
//        //p.setQuantity(Integer.valueOf(request.getParameter("qty")));
//        //p.setPrice(Double.valueOf(request.getParameter("price")));
//        return productDAO.save(p);
//    }

//	@Autowired 
//	ServletContext servletContext;
//    
//	public void saveFile(MultipartFile file, String fileName, String path) throws IOException {
//		byte[] bytes  = file.getBytes();
//	
//		String filePath = servletContext.getRealPath(path);
//		File dir = new File(filePath);
//		File serverFile = new File(dir.getAbsolutePath()
//				+ File.separator + fileName);
//		BufferedOutputStream stream = new BufferedOutputStream(
//				new FileOutputStream(serverFile));
//		stream.write(bytes);
//		stream.close();
//	}

	public List<Product> getAll() {
		return productDAO.getAll();
	}

	public Product getById(String pid) {
		return productDAO.getById(Integer.valueOf(pid));
	}

	public Product update(HttpServletRequest request) {
		Product p = new Product();
		p.setProductCode(request.getParameter("productCode"));
		p.setParentProduct(request.getParameter("parentProduct"));
		p.setProductName(request.getParameter("productName"));
		p.setStock(Integer.valueOf(request.getParameter("stock")));
		p.setRate(Integer.valueOf(request.getParameter("rate")));
		p.setMrp(Double.valueOf(request.getParameter("mrp")));
		p.setCostPrice(Double.valueOf(request.getParameter("costPrice")));
		p.setCaseSize(Double.valueOf(request.getParameter("caseSize")));
		p.setWeightPerPieces(Double.valueOf(request.getParameter("weightPerPieces")));
//		p.setPriceOfProduct(request.getParameter("priceOfProduct"));
		p.setDescription(request.getParameter("description"));
		return productDAO.update(p);
	}

	@Override
	public int delete(String id) {
		Product p = productDAO.getById(Integer.valueOf(id));
		return productDAO.delete(p);
	}

	@Override
	public Product edit(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product save(HttpServletRequest request) {

		Product p = new Product();
		p.setProductCode(request.getParameter("productCode"));
		p.setParentProduct(request.getParameter("parentProduct"));
		p.setProductName(request.getParameter("productName"));
		p.setStock(Integer.valueOf(request.getParameter("stock")));
		p.setRate(Integer.valueOf(request.getParameter("rate")));
		p.setMrp(Integer.valueOf(request.getParameter("mrp")));
		p.setCostPrice(Double.valueOf(request.getParameter("costPrice")));
		p.setCaseSize(Double.valueOf(request.getParameter("caseSize")));
		p.setWeightPerPieces(Double.valueOf(request.getParameter("weightPerPieces")));
//		p.setPriceOfProduct(request.getParameter("priceOfProduct"));
		p.setDescription(request.getParameter("description"));

		return productDAO.save(p);
	}

}
