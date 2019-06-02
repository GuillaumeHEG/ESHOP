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
        <title>Accueil - EShop</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
    </head>







<body>
    <div class="menu-top">
        <jsp:include page="/WEB-INF/ComposantsPartages/Menu.jsp" />
    </div>
        <main class="home">
                <!-- content and sidebar are swapped. They can be made to show in the order above with CSS -->
                <div class="container-homepage">
                    <div class="title-homepage">
                        <h1 class="title-txt-homeèage">Welcome to E-Shop</h1>
                    </div>
                </div>
                <div class="container-prds">
                    <% for (int i=0; i<3; i++) { %>
                    <jsp:include page="/WEB-INF/ComposantsPartages/Produit.jsp" >
                        <jsp:param name="idProduit" value="#" />
                        <jsp:param name="nomProduit" value="#" />
                        <jsp:param name="prixProduit" value="#" />
                    </jsp:include>
                    <%} %>
                </div>
        </main>
</body>
</html>
