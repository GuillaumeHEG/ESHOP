package ch.hesge.gouninet.Filter;


import ch.hesge.gouninet.Model.Product;
import ch.hesge.gouninet.Services.ProductServices;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;

@WebFilter("/Caddie/add")
public class AddFilter implements Filter {

    private final ProductServices productServices;

    @Inject
    public AddFilter(ProductServices productServices) {
        this.productServices = productServices;
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        Product product = productServices.getProduct(Integer.parseInt(req.getParameter("idProduct")));
        Map<Product, Integer> caddie = (Map<Product, Integer>)  req.getSession().getAttribute("caddie");
        if (caddie.containsKey(product)) {
            caddie.put(product, caddie.get(product) + 1);
        } else {
            caddie.put(product, 1);
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
