package ch.hesge.gouninet.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private int id;
    private double price;
    private String name;
    private String description;
    private String url;

    public Product(){}

    public Product(double price, String name, String description, String url) {
        this.price = price;
        this.name = name;
        this.description = description;
        this.url=url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    //Pour log débug console
    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", price=" + price +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", url='" + url + '\'' +
                '}' + "\n";
    }
}



