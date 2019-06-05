<%@ page import="ch.hesge.gouninet.Model.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collection" %><%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class ="container-caddie">
    <a href="${pageContext.request.contextPath}/Checkout">
        <img class="img-caddie" src="${pageContext.request.contextPath}/Pictures/Caddie.png" width="50" height="50">
    </a>
    <%
        Map<Product, Integer> c = (Map<Product, Integer>) request.getSession().getAttribute("caddie");
        int sum = 0;
        if(c == null) {
        }else{
            List<Integer> values = new ArrayList<>(c.values());
            for (Integer value: values) {
                sum += value;
            }
        }
    %>
    <p class="sum-caddie-mnu"><%= sum %></p>
</div>