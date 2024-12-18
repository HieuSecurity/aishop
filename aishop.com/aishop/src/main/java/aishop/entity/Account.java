package aishop.entity;

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

    @Column(name = "role", nullable = false, columnDefinition = "TINYINT DEFAULT 0")
    private int role; // Trường role, giá trị mặc định là 0 (user), có thể là 1 (admin)

    // Constructor không tham số (bắt buộc cho Hibernate)
    public Account() {
    }

    // Constructor đầy đủ tham số
    public Account(String email, String password, int role) {
        this.email = email;
        this.password = password;
        this.role = role;
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

    // Getter và Setter cho role
    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
