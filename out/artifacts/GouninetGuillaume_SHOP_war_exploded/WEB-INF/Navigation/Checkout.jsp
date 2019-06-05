<%@ page import="ch.hesge.gouninet.Model.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout - EShop</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
</head>
<body>
    <div class="container-checkout">
        <table class="table-checkout">
        <%
            Map<Product, Integer> c = (Map<Product, Integer>) request.getAttribute("lstCaddie");
            Double sumCaddie = 0.0;
            for(Map.Entry<Product, Integer> mapentry : c.entrySet()) {
                Product p = (Product)mapentry.getKey();
                int qte = mapentry.getValue();
                sumCaddie += qte*p.getPrice();
        %>
            <tr class="row">
               <td class="checkout-td-one">
                   <%=p.getName()%>
               </td>
               <td class="checkout-td-two">
                   <div class="table-cell-qte-checkout">
                       <p class="table-cell-txt-checkout"><%=qte%></p>
                       <div class="table-cell-btn-checkout">
                           <form method="post" action="${pageContext.request.contextPath}/Caddie/add">
                               <button class="table-cell-btn-plus-checkout" name="idProduct" value="<%=p.getId()%>" type="submit">+</button>
                           </form>
                           <form method="post" action="${pageContext.request.contextPath}/Caddie/remove">
                               <button class="table-cell-btn-minus-checkout" name="idProduct" value="<%=p.getId()%>" type="submit">-</button>
                           </form>
                       </div>
                   </div>
               </td>
               <td class="checkout-td-three">
                   <form method="post" action="${pageContext.request.contextPath}/Caddie/deleterow">
                       <button class="table-cell-btn-delete-checkout" name="idProduct" value="<%=p.getId()%>" type="submit">
                           <img class="img-bin-checkout" src="${pageContext.request.contextPath}/Pictures/trash-2.png">
                       </button>
                   </form>
               </td>
               <td class="checkout-td-four">
                   <%=p.getPrice()*qte%>
               </td>
            </tr>
           <%}%>
        </table>
        <div class="container-sum-checkout">
            <h3>Total </h3>
            <h3><%=sumCaddie%></h3>
        </div>
        <div class="container-pay-checkout">
            <p><a href="${pageContext.request.contextPath}/">Back to shipping</a></p>
            <h3><a href="${pageContext.request.contextPath}/Payment">Pay</a></h3>
        </div>
    </div>
</body>
</html>
