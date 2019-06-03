<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Product - EShop</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
    </head>
    <body>
        <div class="menu-top">
            <jsp:include page="/WEB-INF/SharedComponents/Menu.jsp" />
        </div>
        <div class="container-dtlproduct">
            <div class="container-first-dtlproduct">
                <h1 class="title-dtlproduct">TITRE DU PRODUIT</h1>
                <p class="description-dtlproduct">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing diam donec adipiscing tristique risus. Eu sem integer vitae justo eget magna fermentum iaculis. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. A lacus vestibulum sed arcu. Varius vel pharetra vel turpis nunc. Nec ultrices dui sapien eget mi proin. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. </p>
                <div class="container-caddie-dtlproduct">
                    <form method="post" action="${pageContext.request.contextPath}/Caddie">
                        <button class="btn-caddie-dtlproduct" type="submit">
                            <p>CHF 999.-</p>
                            <img src="${pageContext.request.contextPath}/Pictures/Caddie.png" alt="Checkout">
                        </button>
                    </form>
                </div>
            </div>
            <div class="container-second-dtlproduct">
                <img class="img-dtlproduct" src="${pageContext.request.contextPath}/Pictures/Product1.jpg" alt="tst">
                <img class="img-dtlproduct" src="${pageContext.request.contextPath}/Pictures/Product1.jpg" alt="tst">
            </div>
        </div>
    </body>
</html>
