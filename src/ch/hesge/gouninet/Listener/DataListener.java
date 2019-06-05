package ch.hesge.gouninet.Listener;

import ch.hesge.gouninet.Model.Product;
import ch.hesge.gouninet.Services.ProductServices;

import javax.inject.Inject;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.ArrayList;
import java.util.List;

@WebListener
public class DataListener implements ServletContextListener {

    private List<Product> products = new ArrayList<>();
    private final ProductServices productsServices;

    @Inject
    public DataListener(ProductServices productsServices) {
        this.productsServices = productsServices;
        products.add(new Product(10.0, "Premier Produit", "Description", "Prd.jpg"));
        products.add(new Product(20.0, "Deuxième Produit", "Description", "Prd.jpg"));
        products.add(new Product(30.0, "Troisième Produit", "Description", "Prd.jpg"));
        products.add(new Product(40.0, "Quatrième Produit", "Description", "Prd.jpg"));
        products.add(new Product(50.0, "Cinquième Produit", "Description", "Prd.jpg"));
        products.add(new Product(60.0, "Sixième Produit", "Description", "Prd.jpg"));
        products.add(new Product(70.0, "Septième Produit", "Description", "Prd.jpg"));
        products.add(new Product(80.0, "Huitième Produit", "Description", "Prd.jpg"));
        products.add(new Product(90.0, "Neuvième Produit", "Description", "Prd.jpg"));
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        productsServices.persist(products);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
