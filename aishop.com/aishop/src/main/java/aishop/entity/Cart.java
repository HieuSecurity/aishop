package aishop.entity;

import javax.persistence.*;

// Mapping theo kiểu Hibernate
@Entity
@Table(name = "carts") // Tên bảng trong cơ sở dữ liệu
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID tự động tăng
    @Column(name = "id")
    private int id; // Trường id, là khóa chính

    @Column(name = "quantity", nullable = false)
    private int quantity; // Số lượng sản phẩm trong giỏ hàng

    @Column(name = "status", nullable = false)
    private int status; // Trạng thái đơn hàng (ví dụ: 0 - chưa xử lý, 1 - đã hoàn thành, ...)

    @Column(name = "total_price", nullable = false)
    private double totalPrice; // Tổng giá trị đơn hàng

    @ManyToOne
    @JoinColumn(name = "customer_id", nullable = false) // Liên kết với bảng accounts (khách hàng)
    private Account customer; // Thực thể Account (khách hàng)

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false) // Liên kết với bảng products
    private Product product; // Thực thể Product

    // Constructor không tham số (bắt buộc cho Hibernate)
    public Cart() {
    }

    // Constructor đầy đủ tham số
    public Cart(int id, int quantity, int status, double totalPrice, Account customer, Product product) {
        this.id = id;
        this.quantity = quantity;
        this.status = status;
        this.totalPrice = totalPrice;
        this.customer = customer;
        this.product = product;
    }

    // Constructor không bao gồm ID (dành cho insert)
    public Cart(int quantity, int status, double totalPrice, Account customer, Product product) {
        this.quantity = quantity;
        this.status = status;
        this.totalPrice = totalPrice;
        this.customer = customer;
        this.product = product;
    }

    // Getter và Setter cho id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Getter và Setter cho quantity
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    // Getter và Setter cho status
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    // Getter và Setter cho totalPrice
    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    // Getter và Setter cho customer (Account)
    public Account getCustomer() {
        return customer;
    }

    public void setCustomer(Account customer) {
        this.customer = customer;
    }

    // Getter và Setter cho product (Product)
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
