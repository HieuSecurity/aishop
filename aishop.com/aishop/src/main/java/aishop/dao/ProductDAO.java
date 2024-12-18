package aishop.dao;
import aishop.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.List;

@Repository
public class ProductDAO {
    private static final Logger logger = LoggerFactory.getLogger(ProductDAO.class);

    @Autowired
    private SessionFactory sessionFactory;

    // Hàm lấy tất cả các sản phẩm
    public List<Product> getAllProducts() {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            // HQL truy vấn để lấy tất cả sản phẩm
            String hql = "FROM Product";
            Query query = session.createQuery(hql);
            // Trả về danh sách các sản phẩm
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
    public boolean addProduct(Product product) {
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();  // Bắt đầu giao dịch

            // Lưu sản phẩm vào cơ sở dữ liệu
            session.save(product);

            // Commit giao dịch
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();  // Rollback giao dịch nếu có lỗi
            }
            e.printStackTrace();
            return false;
        } finally {
            if (session != null) {
                session.close();  // Đảm bảo đóng session
            }
        }
    }
 // Hàm xóa sản phẩm theo ID
    public boolean deleteProduct(int id) {
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            // Lấy sản phẩm từ cơ sở dữ liệu theo ID
            Product product = (Product) session.get(Product.class, id);
            
            if (product != null) {
                // Nếu sản phẩm tồn tại, xóa sản phẩm
                session.delete(product);
                transaction.commit();
                return true;
            } else {
                // Sản phẩm không tồn tại
                logger.warn("Sản phẩm với ID " + id + " không tồn tại.");
                return false;
            }
        } catch (Exception e) {
            // Nếu có lỗi, rollback giao dịch và log lỗi
            if (transaction != null) {
                transaction.rollback();
            }
            logger.error("Lỗi khi xóa sản phẩm với ID: " + id, e);
            return false;
        } finally {
            if (session != null) {
                session.close();  // Đảm bảo đóng session
            }
        }
    }
    public Product getProductById(int id) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            // Ép kiểu đối tượng trả về thành Product
            return (Product) session.get(Product.class, id);  // Ép kiểu Object thành Product
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (session != null) session.close();
        }
    }

    public boolean updateProduct(Product product) {
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            
            // Kiểm tra xem sản phẩm có tồn tại trong cơ sở dữ liệu không
            Product existingProduct = (Product) session.get(Product.class, product.getId());
            
            if (existingProduct != null) {
                // Cập nhật các thuộc tính của sản phẩm
                existingProduct.setName(product.getName());
                existingProduct.setBrand(product.getBrand());
                existingProduct.setPrice(product.getPrice());
                existingProduct.setDescription(product.getDescription());
                existingProduct.setImage(product.getImage());  // Nếu có trường image
                
                session.update(existingProduct);  // Cập nhật thông tin sản phẩm
                transaction.commit();  // Cam kết giao dịch
                return true;
            }
            return false;
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();  // Rollback nếu có lỗi
            logError("Error updating product", e);  // Ghi log lỗi
            return false;
        } finally {
            if (session != null) session.close();  // Đảm bảo đóng session
        }
    }
    private void logError(String message, Exception e) {
        // Replace this with your preferred logging framework (e.g., SLF4J, Log4j)
        System.err.println(message);
        e.printStackTrace();
    }
}
