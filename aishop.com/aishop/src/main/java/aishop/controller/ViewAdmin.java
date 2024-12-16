package aishop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewAdmin {
	
	@RequestMapping(value = "/dashboard")
	public String dashboard(){
		return "admin/dashboards";
	}
	
	@RequestMapping(value = "/manager-products")
	public String manager_products(){
		return "admin/products";
	}
	
	@RequestMapping(value = "/product-detail")
	public String product_detail(){
		return "admin/product-detail";
	}
	
	@RequestMapping(value = "/manager-orders")
	public String manager_orders(){
		return "admin/order-detail";
	}
	
	@RequestMapping(value = "/verify-setting")
	public String verify_setting(){
		return "admin/verify-setting";
	}
}
