package ch.hesge.gouninet.Servlet;

import ch.hesge.gouninet.Model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/Checkout")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<Product, Integer> lstCaddie = (Map<Product, Integer>) req.getSession().getAttribute("caddie");
        req.setAttribute("lstCaddie", lstCaddie);
        resp.setContentType("text/html");
        req.getRequestDispatcher("WEB-INF/Navigation/checkout.jsp").forward(req,resp);
    }
}
