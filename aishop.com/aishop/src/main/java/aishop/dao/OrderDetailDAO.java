package aishop.dao;

import aishop.entity.OrderDetail;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import org.hibernate.Query;

import aishop.entity.Order;
import aishop.entity.Product;


@Repository
public class OrderDetailDAO {

    @Autowired
    private SessionFactory sessionFactory;

 // Lấy tất cả các đơn hàng
    public List<Order> getAllOrders() {
        Session session = sessionFactory.openSession();
        try {
            // Tạo truy vấn HQL để lấy tất cả các đơn hàng
            Query query = session.createQuery("FROM Order"); // HQL để lấy tất cả các bản ghi từ bảng 'orders'
            
            // Thực thi truy vấn và trả về danh sách các đơn hàng
            return query.list(); // Sử dụng list() thay vì getResultList()
        } finally {
            session.close(); // Đảm bảo đóng session sau khi sử dụng
        }
    }
	    public int saveOrderDetail(OrderDetail orderDetail) {
	        Session session = null;
	        try {
	            session = sessionFactory.openSession();
	            session.beginTransaction();
	            
	            // Lưu Order và Product nếu chúng chưa được lưu
	            Order order = orderDetail.getOrder();
	            Product product = orderDetail.getProduct();
	
	            if (order != null && order.getId() == 0) {
	                session.saveOrUpdate(order);  // Nếu Order chưa tồn tại trong CSDL thì lưu nó
	            }
	            
	            if (product != null && product.getId() == 0) {
	                session.saveOrUpdate(product);  // Nếu Product chưa tồn tại trong CSDL thì lưu nó
	            }
	
	            // Lưu hoặc cập nhật OrderDetail
	            session.merge(orderDetail);
	            
	            session.getTransaction().commit();
	            
	            return orderDetail.getId();  // Trả về ID của OrderDetail
	        } catch (Exception e) {
	            if (session != null) {
	                session.getTransaction().rollback();
	            }
	            e.printStackTrace();
	            throw e;  // Ném lại lỗi để Spring xử lý
	        } finally {
	            if (session != null) {
	                session.close();
	            }
	        }
	    }



	    public List<OrderDetail> getOrderDetailsByOrderId(int orderId) {
	        Session session = sessionFactory.openSession();
	        try {
	            // Tạo truy vấn SQL thuần để truy vấn bảng "orders_detail"
	            Query query = session.createSQLQuery("SELECT * FROM orders_detail WHERE orders_id = :orderId")
	                    .addEntity(OrderDetail.class);  // Chỉ định ánh xạ kết quả vào lớp OrderDetail
	            query.setParameter("orderId", orderId);

	            // Thực thi truy vấn và trả về danh sách kết quả
	            return query.list();  // Sử dụng list() thay vì getResultList()
	        } finally {
	            session.close();
	        }
	    }



}