package aishop.controller;


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


@Controller
public class Auth {
	 @Autowired
	 AccountDAO accountDAO;
	   
	    
	
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
	                     Model model) {

	     // Kiểm tra đăng nhập
	     Account account = accountDAO.getAccountByEmailAndPassword(email, password);
	     
	     if (account != null) {
	         // Nếu tài khoản hợp lệ, chuyển đến trang chủ hoặc trang người dùng
	         System.out.println("Đăng nhập thành công cho email: " + email);

	         model.addAttribute("account", account);
	         return "redirect:/";  // Chuyển hướng đến trang chủ sau khi đăng nhập thành công
	     } else {
	         // Nếu tài khoản không hợp lệ, thông báo lỗi
	         model.addAttribute("error", "Email hoặc mật khẩu không đúng");
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
