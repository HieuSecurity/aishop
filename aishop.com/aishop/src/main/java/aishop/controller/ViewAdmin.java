package aishop.controller;

import org.springframework.stereotype.Controller;
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
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewAdmin {
	 @Autowired
	    private ProductDAO productDAO;
	 @RequestMapping(value = "product-detail.htm", method = RequestMethod.POST)
	    public String addProduct(@RequestParam("name") String name,
	                             @RequestParam("brand") String brand,
	                             @RequestParam("price") double price,
	                             @RequestParam("description") String description,
	                             @RequestParam("image") String image, // Chỉ nhận tên file hình ảnh
	                             Model model) {

	        try {
	            // Tạo sản phẩm mới
	            Product product = new Product();
	            product.setName(name);
	            product.setBrand(brand);
	            product.setPrice(price);
	            product.setDescription(description);
	            product.setImage(image);  // Lưu tên file hình ảnh

	            // Lưu sản phẩm vào cơ sở dữ liệu
	            productDAO.addProduct(product);

	            model.addAttribute("message", "Product added successfully");
	            return "redirect:/product-detail.htm";  // Redirect về trang quản lý sản phẩm
	        } catch (Exception e) {
	            model.addAttribute("message", "Error adding the product!");
	            return "admin/product-detail";  // Trả lại trang chi tiết sản phẩm nếu có lỗi
	        }
	    }
	 @RequestMapping(value="/manager-products")
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
		    return "admin/products";  // Tên file JSP sẽ dùng để hiển thị danh sách sản phẩm
		}
	 @RequestMapping(value = "/remove-product.htm", method = RequestMethod.GET)
	    public String deleteProduct(@RequestParam("id") int id, Model model) {
	        boolean isDeleted = productDAO.deleteProduct(id); // Gọi phương thức deleteProduct của ProductDAO

	        if (isDeleted) {
	            // Nếu xóa thành công, thêm thông báo và chuyển hướng đến trang quản lý sản phẩm
	            model.addAttribute("message", "Product removed successfully!");
	            return "redirect:/manager-products.htm";  // Chuyển hướng đến trang quản lý sản phẩm
	        } else {
	            // Nếu không xóa được sản phẩm, thêm thông báo lỗi
	            model.addAttribute("error", "Failed to remove product.");
	            return "redirect:/manager-products.htm";  // Chuyển hướng về trang quản lý sản phẩm với thông báo lỗi
	        }
	    }
	 @RequestMapping(value = "edit-product.htm", method = RequestMethod.POST)
	 public String editProduct(@RequestParam("id") int id, // Lấy ID sản phẩm
	                           @RequestParam("name") String name,
	                           @RequestParam("brand") String brand,
	                           @RequestParam("price") double price,
	                           @RequestParam("description") String description,
	                           @RequestParam(value = "image", required = false) String image, // Image có thể là null nếu không thay đổi
	                           Model model) {
	     try {
	         // Lấy thông tin sản phẩm từ cơ sở dữ liệu theo ID
	         Product product = productDAO.getProductById(id);

	         if (product != null) {
	             // Cập nhật các thuộc tính của sản phẩm
	             product.setName(name);
	             product.setBrand(brand);
	             product.setPrice(price);
	             product.setDescription(description);

	             // Nếu người dùng không thay đổi ảnh, giữ lại tên ảnh cũ
	             if (image != null && !image.isEmpty()) {
	                 product.setImage(image);  // Cập nhật tên ảnh mới nếu có
	             }

	             // Cập nhật sản phẩm vào cơ sở dữ liệu
	             productDAO.updateProduct(product);

	             model.addAttribute("message", "Product updated successfully");
	             return "redirect:/manager-products.htm";  // Redirect về trang quản lý sản phẩm
	         } else {
	             model.addAttribute("message", "Product not found!");
	             return "admin/edit-product";  // Trả lại trang chỉnh sửa sản phẩm nếu không tìm thấy sản phẩm
	         }
	     } catch (Exception e) {
	         model.addAttribute("message", "Error updating the product!");
	         return "admin/edit-product";  // Trả lại trang chỉnh sửa sản phẩm nếu có lỗi
	     }
	 }


	  
	 @RequestMapping(value = "/edit-product.htm", method = RequestMethod.GET)
	    public String editProduct(@RequestParam("id") int id, Model model) {
	        // Lấy thông tin sản phẩm từ cơ sở dữ liệu theo ID
	        Product product = productDAO.getProductById(id);

	        if (product != null) {
	            // Nếu tìm thấy sản phẩm, gắn sản phẩm vào model để truyền sang view
	            model.addAttribute("product", product);
	        } else {
	            // Nếu không tìm thấy sản phẩm, có thể hiển thị thông báo lỗi
	            model.addAttribute("error", "Product not found.");
	        }

	        // Trả về view để hiển thị thông tin sản phẩm
	        return "admin/edit-product";  // Tên file JSP hoặc Thymeleaf mà bạn muốn sử dụng để render
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
	@RequestMapping(value = "/edit-product")
	public String edit_product(){
		return "admin/edit-product";
	}
}
