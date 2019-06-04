package ch.hesge.gouninet.Model;

public class Product {
    private int id;
    private double price;
    private String name;
    private String description;
    private String url;

    public Product(double price, String name, String description) {
        this.price = price;
        this.name = name;
        this.description = description;
        this.url=name+"id";
    }
}



