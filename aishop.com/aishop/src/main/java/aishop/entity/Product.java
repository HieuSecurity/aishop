package aishop.entity;

import javax.persistence.*;

// Mapping theo kiểu Hibernate
@Entity
@Table(name = "products") // Tên bảng trong cơ sở dữ liệu
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID tự động tăng
    @Column(name = "id")
    private int id; // Trường id, là khóa chính

    @Column(name = "name", nullable = false, length = 255)
    private String name; // Tên sản phẩm

    @Column(name = "description", columnDefinition = "TEXT")
    private String description; // Mô tả sản phẩm

    @Column(name = "image", length = 255)
    private String image; // Đường dẫn hình ảnh

    @Column(name = "brand", length = 255)
    private String brand; // Thương hiệu

    @Column(name = "price", nullable = false)  // Thêm cột price vào bảng
    private double price; // Giá sản phẩm

    // Constructor không tham số (bắt buộc cho Hibernate)
    public Product() {
    }

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
}
