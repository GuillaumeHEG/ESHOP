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
            <jsp:include page="/WEB-INF/SharedComponents/menu.jsp" />
        </div>
        <div class="container-dtlproduct">
            <div class="container-first-dtlproduct">
                <h1 class="title-dtlproduct">${product.getName()}</h1>
                <p class="description-dtlproduct">${product.getDescription()}</p>
                <div class="container-caddie-dtlproduct">
                    <form method="post" action="${pageContext.request.contextPath}/Caddie/add">
                        <button class="btn-caddie-dtlproduct" name="idProduct" value="${product.getId()}" type="submit">
                            <p>${product.getPrice()}</p>
                            <img src="${pageContext.request.contextPath}/Pictures/caddie.png" alt="Checkout">
                        </button>
                    </form>
                </div>
            </div>
            <div class="container-second-dtlproduct">
                <img class="img-dtlproduct" src="${pageContext.request.contextPath}/Pictures/${product.getUrl().get(0).toString()}">
                <img class="img-dtlproduct" src="${pageContext.request.contextPath}/Pictures/${product.getUrl().get(1).toString()}">
            </div>
        </div>
    </body>
</html>
