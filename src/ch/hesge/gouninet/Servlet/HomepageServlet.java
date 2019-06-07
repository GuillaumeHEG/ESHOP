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
import java.util.List;

@WebServlet("")
public class HomepageServlet extends HttpServlet {
    private final ProductServices productServices;

    @Inject
    public HomepageServlet(ProductServices productServices) {
        this.productServices = productServices;
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Voir pour bouger l'attributes dans un Listener de session.
        List<Product> p = productServices.getProducts();
        req.setAttribute("lstProducts", p);
        resp.setContentType("text/html");
        req.getRequestDispatcher("WEB-INF/Navigation/homepage.jsp").forward(req,resp);
    }
}
