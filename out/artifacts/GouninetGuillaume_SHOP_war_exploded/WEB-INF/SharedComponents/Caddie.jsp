<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class ="container-caddie">
    <a href="${pageContext.request.contextPath}/Checkout">
        <img class="img-caddie" src="${pageContext.request.contextPath}/Pictures/Caddie.png" width="50" height="50">
    </a>
    <p class="sum-caddie-mnu">${nbPrdCaddie}</p>
</div>
<%--<% Caddie c = new Caddie(); %>
<label><%=c.getNbTotal()%></label>
--%>
