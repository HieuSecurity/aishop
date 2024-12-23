package aishop.dao;

import aishop.entity.Order;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;  // Không sử dụng kiểu generic
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderDAO {

    @Autowired
    private SessionFactory sessionFactory;

    // Hàm lấy các đơn hàng đã thanh toán của khách hàng theo customer_id
    public List<Order> getPurchasedOrdersByCustomerId(int customerId) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            // Truy vấn HQL để lấy các đơn hàng đã thanh toán thành công
            String hql = "SELECT o FROM Order o " +
                    "JOIN o.orderDetails od " +
                    "JOIN od.product p " +
                    "WHERE o.customerId = :customerId " +
                    "AND o.status = 'SUCCESS'"; // Trạng thái đơn hàng là 'SUCCESS'

            // Tạo truy vấn và thiết lập tham số customerId
            Query query = session.createQuery(hql);
            query.setParameter("customerId", customerId);
            
            // Trả về danh sách các đơn hàng đã thanh toán
            return query.list();  
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (session != null) {
                session.close();  // Đảm bảo đóng session
            }
        }
    }
 // Hàm để lưu một đơn hàng mới vào cơ sở dữ liệu
    public boolean submitOrder(Order order) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction(); // Bắt đầu giao dịch

            // Lưu đơn hàng
            session.save(order);

            session.getTransaction().commit(); // Hoàn tất giao dịch
            return true; // Trả về thành công
        } catch (Exception e) {
            e.printStackTrace();
            if (session != null && session.getTransaction() != null) {
                session.getTransaction().rollback(); // Rollback nếu có lỗi
            }
            return false; // Trả về thất bại
        } finally {
            if (session != null) {
                session.close(); // Đảm bảo đóng session
            }
        }
    }
    public int saveOrder(Order order) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            int orderId = (int) session.save(order); // Lưu đơn hàng và lấy ID
            session.getTransaction().commit();
            return orderId; // Trả về ID của đơn hàng vừa lưu
        } catch (Exception e) {
            if (session != null) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
            throw e;
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }



}
