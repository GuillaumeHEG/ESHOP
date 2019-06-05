package ch.hesge.gouninet.Servlet;

import ch.hesge.gouninet.Model.Product;
import ch.hesge.gouninet.Services.ProductServices;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/DtlProduct/*"})
public class DtlProductServlet extends HttpServlet {
    private final ProductServices productServices;

    @Inject
    public DtlProductServlet(ProductServices productServices) {
        this.productServices = productServices;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product product = productServices.getProduct(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("product", product);
        resp.setContentType("text/html");
        req.getRequestDispatcher("/WEB-INF/Navigation/DtlProduct.jsp").include(req, resp);
    }
}
