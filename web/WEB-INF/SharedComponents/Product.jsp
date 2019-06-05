<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-product">
    <a class="container-product-link" href="lien"></a>
        <img class="img-background-product" src="${pageContext.request.contextPath}/Pictures/Prd.jpg" alt="tst">
        <div class="container-title-product" >
            <div class="title-product">
                <p class="title-text-product"><%= request.getParameter("nomProduit") %></p>
            </div>
        </div>
    <div class="container-caddie-product">
        <form method="post" action="${pageContext.request.contextPath}/Caddie/add">
            <button class="btn-caddie-product" name="idProduct" value="test produit" type="submit">
                <p><%= request.getParameter("prixProduit") %></p>
                <img src="${pageContext.request.contextPath}/Pictures/Caddie.png" alt="Checkout">
            </button>
        </form>
    </div>
</div>