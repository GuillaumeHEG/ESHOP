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
                <ul class="flex-container">
                    <li class="flex-item">1</li>
                    <li class="flex-item">2</li>
                    <li class="flex-item">3</li>
                    <li class="flex-item">4</li>
                    <li class="flex-item">5</li>
                    <li class="flex-item">6</li>
                </ul>
            </div>
            <div class="sidebar"></div>
        </div>
    </div>
</body>
</html>
