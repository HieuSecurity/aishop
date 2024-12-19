package aishop.controller;
import aishop.dao.CartDAO;
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
import aishop.entity.Cart;
import aishop.entity.Product;
import org.springframework.web.bind.annotation.RequestMapping;
import aishop.dao.ProductDAO;
@Controller
public class ViewClient {
	@Autowired
	ProductDAO productDAO;
	@Autowired
    private CartDAO cartDAO;
	@RequestMapping(value = "/cart.htm")
	public String getAllCartsByCustomerId(HttpSession session, Model model) {
	    // Lấy customerId từ session
	    Integer customerId = (Integer) session.getAttribute("customerId");
	    Account customer = (Account) session.getAttribute("user");
        System.out.println((Account) session.getAttribute("user"));

	    if (customerId == null) {
	       
	        return "auth/sign-in";  // Chuyển hướng đến trang đăng nhập nếu không có customerId trong session
	    }

	    // Lấy danh sách Cart cho customerId từ CartDAO
	    List<Cart> carts = cartDAO.getAllCartsByCustomerId(customerId);

	    if (carts == null || carts.isEmpty()) {
	        model.addAttribute("error", "Không có sản phẩm nào trong giỏ hàng !");
	    } else {
	        model.addAttribute("carts", carts);
	    }

	    return "client/cart";  // View hiển thị danh sách giỏ hàng
	}
	@RequestMapping(value = "addToCart.htm", method = RequestMethod.POST)
	public String addToCart(@RequestParam("productId") int productId,
	                        @RequestParam("quantity") int quantity,
	                        HttpSession session, Model model) {

	    // Kiểm tra nếu người dùng đã đăng nhập
	    Account customer = (Account) session.getAttribute("user");
	    System.out.println((Account) session.getAttribute("user"));
	    if (customer == null) {
	        return "auth/sign-in";  // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
	    }

	    // Lấy thông tin sản phẩm từ productId
	    Product product = productDAO.getProductById(productId);
	    if (product == null) {
	        model.addAttribute("error", "Sản phẩm không tồn tại.");
	        return "client/shop";  // Nếu sản phẩm không tồn tại, quay lại trang shop
	    }

	    // Tính toán tổng giá trị giỏ hàng
	    double totalPrice = product.getPrice() * quantity;

	    // Tạo đối tượng Cart mới
	    Cart cart = new Cart(quantity, 0, totalPrice, customer, product);  // Truyền Account (customer) và Product vào

	    // Thêm giỏ hàng vào cơ sở dữ liệu
	    boolean isCreated = cartDAO.createCart(cart);

	    if (isCreated) {
	        model.addAttribute("success", "Sản phẩm đã được thêm vào giỏ hàng.");
	    } else {
	        model.addAttribute("error", "Lỗi khi thêm sản phẩm vào giỏ hàng.");
	    }

	    return "redirect:/cart.htm";  // Chuyển hướng đến giỏ hàng của khách hàng
	}
	 @RequestMapping(value = "deleteCart.htm", method = RequestMethod.POST)
	    public String deleteCart(@RequestParam("cartId") int cartId, HttpSession session, Model model) {
	        
	       

	        // Gọi phương thức deleteCart từ DAO
	        boolean isDeleted = cartDAO.deleteCart(cartId);

	        if (isDeleted) {
	            model.addAttribute("success", "Giỏ hàng đã được xóa thành công.");
	        } else {
	            model.addAttribute("error", "Không tìm thấy giỏ hàng hoặc không thể xóa.");
	        }

	        // Quay lại trang giỏ hàng của khách hàng
	        return "redirect:/cart.htm";  // Hoặc return "client/cart" nếu bạn sử dụng JSP.
	    }
	


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
	@RequestMapping(value = "shop-single.htm", method = RequestMethod.GET)
    public String viewProduct(@RequestParam("id") int id, Model model) {
        // Lấy thông tin sản phẩm từ cơ sở dữ liệu theo ID
        Product product = productDAO.getProductById(id);

        if (product != null) {
            // Gắn sản phẩm vào model để truyền sang view
	        System.out.println("Lấy ID thành công !");
	        System.out.println("product :"+  product);

	        
            model.addAttribute("product", product);
        } else {
            // Hiển thị thông báo lỗi nếu không tìm thấy sản phẩm
            model.addAttribute("error", "Product not found.");
        }

        // Trả về view để hiển thị thông tin sản phẩm
        return "client/shop-single";  // Tên file JSP hoặc Thymeleaf mà bạn muốn render
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
