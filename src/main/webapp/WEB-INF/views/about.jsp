<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Premier Pizza</h1>
            <h5>Premier Pizza is a located in Wilmington, DE and has been proudly
                serving the region for over 40 years. Order all of your favorite
                food online, all with the click of a button. Thank you for your support!</h5>
        </div>
        <a class="btn btn-lg btn-primary" href="<c:url value="/product/productList/all"/> "
           role="button"><span class="glyphicon glyphicon-cutlery"></span>  See our menu!</a>


<%@include file="/WEB-INF/views/template/footer.jsp" %>
