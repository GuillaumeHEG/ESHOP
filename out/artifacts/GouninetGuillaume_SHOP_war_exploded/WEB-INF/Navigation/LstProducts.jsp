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
        <title>Products - EShop</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
    </head>
    <body>
    <div class="menu-top">
        <jsp:include page="/WEB-INF/SharedComponents/Menu.jsp" />
    </div>
    <%--  Faire une boucle pour récupérer et afficher tout les produits  --%>
    <jsp:include page="/WEB-INF/SharedComponents/Product.jsp" >
        <jsp:param name="idProduit" value="#" />
        <jsp:param name="nomProduit" value="#" />
        <jsp:param name="prixProduit" value="#" />
    </jsp:include>
    </body>
</html>
