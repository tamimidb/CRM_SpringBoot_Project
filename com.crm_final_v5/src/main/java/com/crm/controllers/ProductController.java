  package com.crm.controllers;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.crm.common.ICommonController;
import com.crm.models.Lead;
import com.crm.models.Product;
import com.crm.models.Deal;
import com.crm.services.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



@RestController
@RequestMapping(value = "/product")
public class ProductController implements ICommonController{
	
    @Autowired
    ProductService productService;
    
    @Override
    @RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("/product/create");
	}
    
//    @RequestMapping(value = "/save", headers=("content-type=multipart/*"), method = RequestMethod.POST)
//    public ModelAndView save(HttpServletRequest request, @RequestParam("photo") MultipartFile photo) throws IOException{
//     	System.out.println("dao");
//    	Product p = productService.save(request, photo);
//        return new ModelAndView("product/show");
//    }  
//    
    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable String id){
        Product p = productService.getById(id);
        return new ModelAndView("/product/edit", "p", p);
    }
    
    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request){
        Product p = productService.update(request);
        return new ModelAndView("/product/show");
    }
    
    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable String id){
        int delete = productService.delete(id);
        return  new ModelAndView("/product/show");
    }
    
	@Override
	 @RequestMapping(value = "/show", method = RequestMethod.GET)
	public ModelAndView getAll() {
	
		List<Product> t = productService.getAll();
		return new ModelAndView("/product/show", "Product", t);
	}
	

	@Override
	 @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {

    	Product p = productService.save(request);
    	List<Product> t = productService.getAll();
		return new ModelAndView("/product/show", "Product", t);
    }  
    


}
