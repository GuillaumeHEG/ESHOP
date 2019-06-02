<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file= "/WEB-INF/SharedComponents/Menu.jsp" %>
<html>
<head>
    <title>Checkout - EShop</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
</head>
<body>
    <div class="container-checkout">
        <table class="table-checkout">
            <tr class="row">
               <td class="checkout-td-one">
                   TITRE PRODUIT
               </td>
               <td class="checkout-td-two">
                   <div class="table-cell-qte-checkout">

                       <p class="table-cell-txt-checkout">QUANTITE</p>
                       <div class="table-cell-btn-checkout">
                           <form method="post">
                               <button class="table-cell-btn-plus-checkout" type="submit">+</button>
                           </form>
                           <form method="post">
                               <button class="table-cell-btn-minus-checkout" type="submit">-</button>
                           </form>
                       </div>
                   </div>
               </td>
               <td class="checkout-td-three">
                   SUPPRIMER
               </td>
               <td class="checkout-td-four">
                   PRIX TOTAL
               </td>
            </tr>
        </table>
    </div>
</body>
</html>
