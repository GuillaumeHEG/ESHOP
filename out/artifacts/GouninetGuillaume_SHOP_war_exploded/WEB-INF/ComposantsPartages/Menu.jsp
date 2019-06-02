<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class ="container-mnu">
    <div class="icon-mnu">
        <a href="${pageContext.request.contextPath}/">
            <img class="img-mnu" src="${pageContext.request.contextPath}/Pictures/Home.png" width="50" height="50">
        </a>
    </div>
    <jsp:include page="/WEB-INF/ComposantsPartages/Caddie.jsp" />
</div>