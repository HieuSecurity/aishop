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
@Controller
public class Auth {
	 @Autowired
	 AccountDAO accountDAO;
	 @Autowired
	 ProductDAO productDAO;
	 
	    
	
	 @RequestMapping(value = "/account")
	 public String getAllEmailsAndPasswords(Model model) {
	     System.out.println("Lấy thông tin email và password thành công");
	     
	     // Lấy danh sách email và password từ service
	     List<Object[]> accounts = accountDAO.getAllEmailsAndPasswords();
	     if (accounts == null || accounts.isEmpty()) {
	         System.out.println("Không có dữ liệu");
	     } else {
	    	 System.out.println("accounts: " + accounts);
	         System.out.println("Có " + accounts.size() + " bản ghi");
	     }

	     // Thêm thông tin vào model để truyền cho view
	     model.addAttribute("accounts", accounts);

	     // Trả về trang hiển thị thông tin email và password
	     return "auth/account";  // Bạn có thể thay đổi tên view tùy theo cấu trúc của bạn
	 }
	
	 @RequestMapping(value = "sign-in.htm", method = RequestMethod.POST)
	 public String login(@RequestParam("email") String email,
	                     @RequestParam("password") String password,
	                     Model model, HttpSession session) {

	     // Kiểm tra tài khoản
	     Account account = accountDAO.getAccountByEmailAndPassword(email, password);

	     if (account != null) {
	         // Lưu tài khoản, vai trò và customer_id vào session
	         session.setAttribute("user", account);  // Lưu thông tin người dùng
	         session.setAttribute("role", account.getRole()); // Lưu vai trò (Admin, User, etc.)
	         session.setAttribute("customerId", account.getId());  // Lưu customer_id để lấy giỏ hàng

	         return "redirect:/";  // Chuyển hướng về trang chủ
	     } else {
	         model.addAttribute("error", "Email hoặc mật khẩu không đúng");
	         return "auth/sign-in";  // Quay lại trang đăng nhập
	     }
	 }


	 @RequestMapping(value = "/", method = RequestMethod.GET)
	 public String checkSession(HttpSession session, Model model) {
	     // Kiểm tra nếu session đã có user (người dùng đã đăng nhập)
	     Account account = (Account) session.getAttribute("user");

	     if (account != null) {
	         // Nếu có session (người dùng đã đăng nhập), in thông tin người dùng ra console
	         System.out.println("User is logged in with email: " + account.getEmail());

	         model.addAttribute("account", account);
	         return "redirect:/";  // Chuyển hướng đến trang chủ hoặc trang khác
	     } else {
	         // Nếu không có session (người dùng chưa đăng nhập), in thông tin ra console
	         System.out.println("No user found in session. User is not logged in.");
	         
	         return "auth/sign-in";  // Quay lại trang đăng nhập
	     }
	 }


	 @RequestMapping(value = "sign-up.htm", method = RequestMethod.POST)
	 public String signUp(@RequestParam("email") String email,
	                      @RequestParam("password") String password,
	                      Model model) {
	     // Kiểm tra nếu email hoặc password bị trống
	     if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
	         model.addAttribute("error", "Email và mật khẩu không được để trống."); // Thêm thông báo lỗi
	         return "auth/sign-up";  // Trả lại trang đăng ký với thông báo lỗi
	     }

	     // Kiểm tra nếu email không hợp lệ
	     if (!email.matches("\\S+@\\S+\\.\\S+")) {
	         model.addAttribute("error", "Email không hợp lệ. Vui lòng nhập lại email."); // Thêm thông báo lỗi
	         return "auth/sign-up";  // Trả lại trang đăng ký với thông báo lỗi
	     }

	     // Tạo đối tượng Account từ thông tin người dùng
	     Account account = new Account();
	     account.setEmail(email);
	     account.setPassword(password);

	     // Tạo tài khoản mới thông qua AccountDAO
	     boolean isCreated = accountDAO.createAccount(account);

	     if (isCreated) {
	         System.out.println("Tạo tài khoản thành công cho email: " + email);

	         // Nếu tài khoản được tạo thành công, chuyển hướng đến trang đăng nhập hoặc trang chính
	         return "redirect:/sign-in.htm";  // Chuyển đến trang đăng nhập
	     } else {
	         System.out.println("Có lỗi");
	         model.addAttribute("error", "Tài khoản này đã tồn tại !"); // Thêm thông báo lỗi
	         return "auth/sign-up";  // Trả lại trang đăng ký với thông báo lỗi
	     }
	 }
	 @RequestMapping(value = "dashboard.htm", method = RequestMethod.GET)
	 public String dashboard(HttpSession session, Model model) {
	     // Lấy role từ session
	     Object roleObj = session.getAttribute("role");

	     if (roleObj == null) {
	         // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
	         return "redirect:/sign-in.htm";
	     }

	     if (roleObj instanceof Integer) {
	         int role = (Integer) roleObj;

	         // Thêm role vào model để xử lý giao diện
	         model.addAttribute("role", role);

	         // Phân quyền giao diện
	         if (role == 1) {
	             return "admin/dashboard";
	         } else if (role == 0) {
	             return "client/dashboard";
	         }
	     }

	     // Vai trò không hợp lệ
	     model.addAttribute("error", "Bạn không có quyền truy cập trang này.");
	     return "auth/access-denied";
	 }

	 @RequestMapping(value = "/client/dashboard.htm", method = RequestMethod.GET)
	 public String clientDashboard(HttpSession session, Model model) {
	     // Xử lý cho client dashboard
	     return "client/dashboard"; // Đảm bảo rằng view này tồn tại
	 }
	 @RequestMapping(value = "/admin/dashboard.htm", method = RequestMethod.GET)
	 public String adminDashboard(HttpSession session, Model model) {
	     // Xử lý cho client dashboard
	     return "admin/dashboard"; // Đảm bảo rằng view này tồn tại
	 }

	 @RequestMapping(value = "/logout", method = RequestMethod.GET)
	 public String logout(HttpSession session) {
	     // Xóa session
	     session.invalidate();

	     // Chuyển hướng đến trang đăng nhập
	     return "redirect:/sign-in.htm";
	 }

	 @RequestMapping(value = "/sign-in")
		public String sign_in(){
			return "auth/sign-in";
		}
	@RequestMapping(value = "/sign-up")
	public String sign_up(){
		return "auth/sign-up";
	}
	
	@RequestMapping(value = "/forget-pass")
	public String forget_pass(){
		return "auth/forget-pass";
	}
	
	@RequestMapping(value = "/confirm-pass")
	public String confirm_pass(){
		return "auth/confirm-pass";
	}
	
	@RequestMapping(value = "/verify-email")
	public String verify_email(){
		return "auth/verify-email";
	}
}
