package aishop.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import aishop.entity.Account;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.ui.Model;
import org.hibernate.Query;  // Hibernate 4


@Repository
public class AccountDAO {

    @Autowired
    private SessionFactory sessionFactory;

    // Lấy tất cả email và password
    public List<Object[]> getAllEmailsAndPasswords() {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            // HQL truy vấn lấy email và password
            String hql = "SELECT email, password FROM Account";
            Query query = session.createQuery(hql);
            // Trả về danh sách kết quả, mỗi kết quả là một mảng Object[] chứa email và password
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    public Account getAccountByEmailAndPassword(String email, String password) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            // HQL truy vấn kiểm tra tài khoản với email và password
            String hql = "FROM Account WHERE email = :email AND password = :password";
            Query query = session.createQuery(hql);
            query.setParameter("email", email);
            query.setParameter("password", password);
            // Trả về tài khoản nếu tìm thấy, nếu không trả về null
            return (Account) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    public boolean createAccount(Account account) {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();  // Bắt đầu giao dịch
            session.save(account);  // Lưu đối tượng tài khoản vào cơ sở dữ liệu
            session.getTransaction().commit();  // Cam kết giao dịch
            return true;
        } catch (Exception e) {
            if (session != null) {
                session.getTransaction().rollback();  // Rollback giao dịch nếu có lỗi
            }
            e.printStackTrace();
            return false;
        } finally {
            if (session != null) {
                session.close();  // Đảm bảo đóng session
            }
        }
    }
}
