<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h3>Customer registered successfully!</h3>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/login" />" class="btn btn-success">
                    <span class="glyphicon glyphicon-cutlery"></span> Please sign!</a>
            </p>

        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<script src="<c:url value="/resources/js/controller.js" /> "></script>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
