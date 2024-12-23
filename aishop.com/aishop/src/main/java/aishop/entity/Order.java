package aishop.entity;

import javax.persistence.*;
import java.util.List;
import java.util.ArrayList;
import java.util.List;
@Entity
@Table(name = "orders")
public class Order {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") // Đảm bảo đúng với tên cột trong bảng "orders"
    private int id;

    @Column(name = "status", nullable = false)
    private String status;

    @Column(name = "date", nullable = false)
    private String date;

    @Column(name = "phone", nullable = false)
    private String phone;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "total", nullable = false)
    private double total;

    @Column(name = "customer_id", nullable = false)
    private int customerId;

    // Quan hệ với bảng order_detail
    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<OrderDetail> orderDetails = new ArrayList<>();  // Khởi tạo orderDetails

    // Constructor không tham số
    public Order() {
        this.orderDetails = new ArrayList<>();  // Khởi tạo orderDetails khi không có tham số
    }

    // Constructor đầy đủ tham số
    public Order(String status, String date, String phone, String address, double total, int customerId) {
        this.status = status;
        this.date = date;
        this.phone = phone;
        this.address = address;
        this.total = total;
        this.customerId = customerId;
        this.orderDetails = new ArrayList<>();  // Khởi tạo orderDetails
    }



    // Getter và Setter cho id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Getter và Setter cho status
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    // Getter và Setter cho date
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    // Getter và Setter cho phone
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    // Getter và Setter cho address
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    // Getter và Setter cho total
    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    // Getter và Setter cho customerId
    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    // Getter và Setter cho orderDetails
    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", status='" + status + '\'' +
                ", date='" + date + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", total=" + total +
                ", customerId=" + customerId +
                '}';
    }
}
