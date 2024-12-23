package aishop.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name", nullable = false, length = 255)
    private String name;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @Column(name = "image", length = 255)
    private String image;

    @Column(name = "brand", length = 255)
    private String brand;

    @Column(name = "price", nullable = false)
    private double price;

    // Quan hệ OneToMany với OrderDetail
    @OneToMany(mappedBy = "product")
    private Set<OrderDetail> orderDetails;

    // Constructor không tham số (bắt buộc cho Hibernate)
    public Product() {}

    // Constructor đầy đủ tham số
    public Product(int id, String name, String description, String image, String brand, double price) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.brand = brand;
        this.price = price;
    }

    // Constructor không bao gồm ID (dành cho insert)
    public Product(String name, String description, String image, String brand, double price) {
        this.name = name;
        this.description = description;
        this.image = image;
        this.brand = brand;
        this.price = price;
    }

    // Getter và Setter cho id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Getter và Setter cho name
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // Getter và Setter cho description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Getter và Setter cho image
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    // Getter và Setter cho brand
    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    // Getter và Setter cho price
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    // Getter và Setter cho orderDetails
    public Set<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(Set<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }
}
