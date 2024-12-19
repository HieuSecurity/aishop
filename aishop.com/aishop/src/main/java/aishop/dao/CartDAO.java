package aishop.dao;

import aishop.entity.Cart;
import aishop.entity.Account;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

@Repository
public class CartDAO {
    private static final Logger logger = LoggerFactory.getLogger(CartDAO.class);

    @Autowired
    private SessionFactory sessionFactory;

    // Phương thức lấy tất cả giỏ hàng của người dùng theo customer_id
    public List<Cart> getAllCartsByCustomerId(int customerId) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            // Truy vấn HQL lọc theo customer_id (khóa ngoại trong bảng carts)
            String hql = "FROM Cart c WHERE c.customer.id = :customerId";
            return session.createQuery(hql)
                          .setParameter("customerId", customerId)
                          .list();
        } catch (Exception e) {
            logger.error("Error getting all carts for user with customer_id: " + customerId, e);
            return null;
        } finally {
            if (session != null) session.close();
        }
    }
    public boolean createCart(Cart cart) {
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            session.save(cart);  // Lưu giỏ hàng vào cơ sở dữ liệu
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            logError("Error creating Cart", e);
            return false;
        } finally {
            if (session != null) session.close();
        }
    }
    public boolean deleteCart(int id) {
        Session session = null;
        Transaction transaction = null;
        try {
            // Mở session mới
            session = sessionFactory.openSession();
            
            // Bắt đầu transaction
            transaction = session.beginTransaction();
            
            // Tìm đối tượng Cart theo ID
            Cart cart = (Cart) session.get(Cart.class, id);
            
            // Kiểm tra xem có đối tượng Cart không
            if (cart != null) {
                // Xóa đối tượng Cart khỏi cơ sở dữ liệu
                session.delete(cart);
                
                // Commit transaction để lưu thay đổi
                transaction.commit();
                return true;
            }
            
            // Trả về false nếu không tìm thấy Cart
            return false;
        } catch (Exception e) {
            // Rollback transaction nếu có lỗi xảy ra
            if (transaction != null) {
                transaction.rollback();
            }
            
            // Ghi lỗi vào log (giả sử bạn có một phương thức logError)
            logError("Error deleting Cart with ID: " + id, e);
            
            return false;
        } finally {
            // Đảm bảo session được đóng sau khi thực hiện xong
            if (session != null) {
                session.close();
            }
        }
    }

    private void logError(String message, Exception e) {
        // Replace with a proper logging framework like SLF4J or Log4j
        System.err.println(message);
        e.printStackTrace();
    }

    
}
