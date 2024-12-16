package aishop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewClient {
	
	@RequestMapping(value = "/about")
	public String about(){
		return "client/about";
	}
	
	@RequestMapping(value = "/shop")
	public String shop(){
		return "client/shop";
	}
	
	@RequestMapping(value = "/shop-single")
	public String shop_single(){
		return "client/shop-single";
	}
	
	@RequestMapping(value = "/contact")
	public String contact(){
		return "client/contact";
	}
	
	@RequestMapping(value = "/cart")
	public String cart(){
		return "client/cart";
	}
	
	@RequestMapping(value = "/pay")
	public String pay(){
		return "client/pay";
	}
	
	@RequestMapping(value = "/pay-confirm")
	public String pay_confirm(){
		return "client/pay-confirm";
	}
	
	@RequestMapping(value = "/profile-user")
	public String profile_user(){
		return "client/profile-user";
	}
	
	
}
