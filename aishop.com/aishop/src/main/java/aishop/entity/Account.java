package aishop.entity;
import java.util.Collection;

import javax.persistence.*;

// Mapping theo kiểu Hibernate
@Entity
@Table(name = "account") // Bảng tương ứng trong cơ sở dữ liệu
public class Account {

    @Id
    @Column(name = "email", nullable = false, unique = true)
    private String email; // Trường email, là khóa chính

    @Column(name = "password", nullable = false)
    private String password; // Trường password

    // Constructor không tham số (bắt buộc cho Hibernate)
    public Account() {
    }

    // Constructor đầy đủ tham số
    public Account(String email, String password) {
        this.email = email;
        this.password = password;
    }

    // Getter và Setter cho email
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Getter và Setter cho password
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
    
