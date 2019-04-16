<!-- add header from /WEB-INF/views/template/header.jsp using Spring templates -->

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
    $(document).ready(function() {
        var searchCondition = '${searchCondition}';
        $('.table').DataTable({
            "lengthMenu" : [[10,-1], [10,"All"]],
            "oSearch" : {"sSearch" : searchCondition}
        });
    });
</script>

<!-- end using header.jsp -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Menu</h1>
            <p class="lead">Order online from our menu!</p>
        </div>

        <table class="table table-striped table-hover" ng-app="cartApp">
            <thead>
            <tr class="bg-success">
                <th>Menu Item</th>
                <th>Item Name</th>
                <th>Category</th>
<%--                <th>Condition</th>--%>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr ng-controller="cartCtrl">

                    <!-- JSTL to define variable that's available to the whole page -->
                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList/all" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
<%--                    <td>${product.productCondition}</td>--%>
                    <td>$${product.productPrice}</td>
<%--                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"--%>
<%--                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>--%>
                    <td><br><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                           class="btn btn-info btn-large">
                        <span class="glyphicon glyphicon-info-sign"></span> Item Details</a>
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</a></td>

                </tr>
            </c:forEach>
        </table>

        <script src="<c:url value="/resources/js/controller.js" /> "></script>

        <%@include file="/WEB-INF/views/template/footer.jsp"%>
