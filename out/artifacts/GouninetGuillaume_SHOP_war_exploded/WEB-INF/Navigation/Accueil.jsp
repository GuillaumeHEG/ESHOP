<%--
  Created by IntelliJ IDEA.
  User: guillaum.gouninet
  Date: 17.05.2019
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Accueil</title>
</head>
<body>
<%@ include file= "/WEB-INF/ComposantsPartages/Menu.jsp" %>
    <main class="main">
            <!-- content and sidebar are swapped. They can be made to show in the order above with CSS -->
            <div class="content">
                <% for (int i=0; i<9; i++) { %>
                <jsp:include page="/WEB-INF/ComposantsPartages/Produit.jsp" >
                    <jsp:param name="idProduit" value="#" />
                    <jsp:param name="nomProduit" value="#" />
                    <jsp:param name="prixProduit" value="#" />
                </jsp:include>
                <%} %>
            </div>
            <div class="sidebar"></div>
    </main>
</body>
</html>
