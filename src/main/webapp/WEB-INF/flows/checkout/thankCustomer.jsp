<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for your business!</h1>

                    <p>Your order will be ready for pickup soon.</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/" />" class="btn btn-default">
                    <span class="glyphicon glyphicon-thumbs-up"></span> OK</a>
            </p>
        </section>

    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>
