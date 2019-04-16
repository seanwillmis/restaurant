<!-- add header from /WEB-INF/views/template/header.jsp using Spring templates -->

<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- end using header.jsp -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator Page</h1>
            <%--<p class="lead">This is the administrator page!</p>--%>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h3>Welcome: ${pageContext.request.userPrincipal.name}
            <div>
                <br>
<%--            <span class="glyphicon glyphicon-option-vertical"></span>--%>
            <a href="<c:url value="/admin/productInventory" />" >Manage Product Inventory</a>
            <span class="glyphicon glyphicon-option-vertical"></span>
            <a href="<c:url value="/admin/customer" />" >Customer Management</a>
            <span class="glyphicon glyphicon-option-vertical"></span>
            <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
            </div>
        </h3>
        </c:if>

        <br>

        <%@include file="/WEB-INF/views/template/footer.jsp"%>
