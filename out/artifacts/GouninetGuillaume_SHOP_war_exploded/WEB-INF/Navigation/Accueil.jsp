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
    <div class="main">
        <div class="wrap">
            <!-- content and sidebar are swapped. They can be made to show in the order above with CSS -->
            <div class="content">
                <jsp:include page="/WEB-INF/ComposantsPartages/Produit.jsp" >
                    <jsp:param name="firstname" value="Chaitanya" />
                    <jsp:param name="middlename" value="Pratap" />
                    <jsp:param name="lastname" value="Singh" />
                </jsp:include>
            </div>
            <div class="sidebar"></div>
        </div>
    </div>
</body>
</html>
