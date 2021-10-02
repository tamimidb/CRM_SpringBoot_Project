//package com.crm.controllers;
//
//import java.util.Random;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.crm.models.Lead;
//import com.crm.repository.UserRepository;
//import com.crm.services.EmailService;
//
//
//
//
//@Controller
//public class ForgotController {
//	Random random = new Random(1000);
//	
//@Autowired	
//private EmailService emailService;
//
//@Autowired	
//private UserRepository userRepository;
//
//
//
//
//	
//
//	@PostMapping("/send-otp")
//	public String sendOTP(@RequestParam("email") String email, HttpSession session){
//	System.out.println(email);	
//	
//	//generate otp
//	
//	int otp = random.nextInt(999999);
//	System.out.println("OTP "+otp);
//	
//	//send email
//	
//	String subject="OTP From CRM";
//	String message =""
//			+ "<div style='border:1px solid #e2e2e2; padding:20px'>"
//			+ "<h1>"
//			+ "OTP is "
//			+ "<b>"+otp
//			+ "</b>"
//			+"</h1>"
//			+ "</div>";
//	String to = email;
//	
//	boolean flag = this.emailService.sendEmail(subject, message, to);
//	if(flag) {
//		
//		session.setAttribute("myotp", otp);
//		session.setAttribute("email", email);
//		return "/lead/otp";		
//		
//	}else {
//		
//		session.setAttribute("message", "Check your email id");
//		return "/lead/otp_email";	
//		
//	}
//	
//	
//	
//	}
//	
//	//verify otp
//	
//	@PostMapping("/verify-otp") 
//	public String verifyOtp(@RequestParam("otp") Integer otp ,HttpSession session){
//		int myOtp = (int) session.getAttribute("myotp");
//	String email=(String)session.getAttribute("leadEmail");
//	if(myOtp==otp) {
//		
//	
//	Lead user = this.userRepository.getUserByUserName(email);	
//	
//	
//	if(user==null) {
//		
//		return "forgot";
//	}	else {
//		
//		
//	
//		
//	}
//	
//	
//		
//	return "changePassword";	
//		
//	}else {
//		
//		session.setAttribute("message", "This OTP is not currect !!!");
//		return "redirect:/lead/otp_email";
//		
//	}
//	
//	}
//	
//	
//	//change password
////	@PostMapping("/change_password")
////	public String changepassword(@RequestParam("newpassword") String newpassword, HttpSession session) {
////		
////		String email=(String)session.getAttribute("leadEmail");
////		Lead user = this.userRepository.getUserByUserName(email);
////		this.userRepository.save(user);
////		
////		
////		return "redirect:/";
////		
////		
////		
////	}
//	
//	  
//	 
//	
//	
//	
//	
//	
//}
