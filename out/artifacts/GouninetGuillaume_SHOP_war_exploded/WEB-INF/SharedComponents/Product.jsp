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
        <img class="img-background-product" src="${pageContext.request.contextPath}/Pictures/Product1.jpg" alt="tst">
        <div class="container-title-product" >
            <div class="title-product">
                <p class="title-text-product">Titre du produit</p>
            </div>
        </div>
    <div class="container-caddie-product">
        <form method="post" action="${pageContext.request.contextPath}/Caddie">
            <button class="btn-caddie-product" type="submit">
                <p>CHF 999.-</p>
                <img src="${pageContext.request.contextPath}/Pictures/Caddie.png" alt="Checkout">
            </button>
        </form>
    </div>
</div>