<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-product">
    <a class="container-product-link" href="${pageContext.request.contextPath}/DtlProduct/?id=<%= request.getParameter("idProduct") %>">
        <img class="img-background-product" src="${pageContext.request.contextPath}/Pictures/<%= request.getParameter("urlProduct") %>" alt="<%= request.getParameter("urlProduct")%>">
        <div class="container-title-product" >
            <div class="title-product">
                <p class="title-text-product"><%= request.getParameter("nameProduct") %></p>
            </div>
        </div>
    </a>
    <div class="container-caddie-product">
        <form method="post" action="${pageContext.request.contextPath}/Caddie/add">
            <button class="btn-caddie-product" name="idProduct" value="<%= request.getParameter("idProduct") %>" type="submit">
                <p><%= request.getParameter("priceProduct") %></p>
                <img src="${pageContext.request.contextPath}/Pictures/Caddie.png">
            </button>
        </form>
    </div>
</div>