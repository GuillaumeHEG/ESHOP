<%@ page import="ch.hesge.gouninet.Model.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Products - EShop</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
    </head>
    <body>
    <div class="menu-top">
        <jsp:include page="/WEB-INF/SharedComponents/menu.jsp" />
    </div>
        <div class="container-title-thanks">
            <% if(request.getParameter("message")!=null){ %><h4 class="title-payment-thanks">MERCI POUR VOTRE COMMANDE!</h4><%}%>
        </div>
        <div class="container-lstProducts">
            <%
                List<Product> lstPrd = (List<Product>) request.getAttribute("lstProducts");
                for (Product prd : lstPrd) {
            %>
            <jsp:include page="/WEB-INF/SharedComponents/product.jsp" >
                <jsp:param name="idProduct" value="<%=prd.getId()%>" />
                <jsp:param name="nameProduct" value="<%=prd.getName()%>" />
                <jsp:param name="priceProduct" value="<%=prd.getPrice()%>" />
                <jsp:param name="urlProduct" value="<%=prd.getUrl().get(0).toString()%>" />
            </jsp:include>
            <%} %>
        </div>
    </body>
</html>
