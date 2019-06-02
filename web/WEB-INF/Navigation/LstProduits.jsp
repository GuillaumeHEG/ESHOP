<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file= "/WEB-INF/ComposantsPartages/Menu.jsp" %>
<html>
<head>
    <title>Liste des produits</title>
</head>
<body>
<%--  Faire une boucle pour récupérer et afficher tout les produits  --%>
<jsp:include page="/WEB-INF/ComposantsPartages/Produit.jsp" >
    <jsp:param name="idProduit" value="#" />
    <jsp:param name="nomProduit" value="#" />
    <jsp:param name="prixProduit" value="#" />
</jsp:include>
</body>
</html>
