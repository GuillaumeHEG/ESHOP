<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/Flexbox.scss" />
<header class ="header">
    <div class="wrap">
        <a href="${pageContext.request.contextPath}/"><img src="https://cdn2.iconfinder.com/data/icons/circular-icons-line/82/Circular_House-512.png" width="50" height="50" id="imgAcc"></a>
        <div class="content">
            <%@ include file= "/WEB-INF/ComposantsPartages/Caddie.jsp" %>
        </div>
    </div>
</header>