package aishop.controller;

import aishop.dao.ProductDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Optional;
import java.util.List;
import java.util.Map;
import aishop.dao.AccountDAO;
import aishop.entity.Account;
import org.springframework.web.bind.annotation.RequestMethod;

import aishop.entity.Product;
import org.springframework.web.bind.annotation.RequestMapping;
import aishop.dao.ProductDAO;
@Controller
public class ViewClient {
	@Autowired
	ProductDAO productDAO;
	@RequestMapping(value="/shop")
	public String getAllProducts(Model model) {
	    // Gọi phương thức trong ProductDAO để lấy tất cả sản phẩm
	    List<Product> products = productDAO.getAllProducts();

	    // Kiểm tra nếu danh sách rỗng
	    if (products == null || products.isEmpty()) {
	        System.out.println("Không có sản phẩm nào trong cơ sở dữ liệu.");
	        model.addAttribute("error", "Không có sản phẩm nào để hiển thị.");
	    } else {
	        // In danh sách sản phẩm ra console
	        System.out.println("Lấy danh sách sản phẩm thành công.");
	        for (Product product : products) {
	            System.out.println("ID: " + product.getId() +
	                               ", Name: " + product.getName() +
	                               ", Description: " + product.getDescription() +
	                               ", Price: " + product.getPrice());
	        }
	        model.addAttribute("products", products);
	    }

	    // Trả về view để render danh sách sản phẩm
	    return "client/shop";  // Tên file JSP sẽ dùng để hiển thị danh sách sản phẩm
	}
	@RequestMapping(value = "/about")
	public String about(){
		return "client/about";
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
