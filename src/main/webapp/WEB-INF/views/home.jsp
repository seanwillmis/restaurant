<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/resources/images/restaurant-background-2.png" />" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Premier Pizza!</h1><br>
                    <p>Thank you for visiting our page</p>
                    <p>Check out our menu and place an online order for pickup!</p>
                    <p><a class="btn btn-lg btn-primary" href="<c:url value="/product/productList/all"/> " role="button">See our menu!</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/resources/images/restaurant-background-3.jpg" />" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <br>
                    <h1>Check out our pizzas!</h1>
                    <p>We have small and large cheese and pepperoni pizzas</p>
                    <p><a class="btn btn-lg btn-primary" href="<c:url value="/product/productList?searchCondition=Entree"/> " role="button">Order Entrees Now!</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src="<c:url value="/resources/images/restaurant-background-1.jpg" />" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <br><br><br>
                    <h1>(... don't forget to add a dessert to your order!)</h1>
                    <p><a class="btn btn-lg btn-primary" href="<c:url value="/product/productList?searchCondition=Dessert"/> " role="button">Order Desserts Now!</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Appetizer"/> "
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/appetizer-icon.png" /> " alt="app icon image"
                     width="140" height="140">
            </a>

            <h2>Appetizers</h2>
            <p>Add one of our delicious appetizers to your order!</p>

        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Entree"/> "
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/pizza-icon.png" /> " alt="entree icon image"
                     width="140" height="140">
            </a>

            <h2>Entrees</h2>
            <p>Take a look at our pizza and entree selections!</p>

        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Dessert"/> "
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/dessert-icon.png" /> " alt="dessert icon image"
                     width="140" height="140">
            </a>

            <h2>Dessert</h2>
            <p>Don't forget to look at our desserts!</p>

        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

    <%@include file="/WEB-INF/views/template/footer.jsp"%>
