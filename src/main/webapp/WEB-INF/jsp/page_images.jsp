<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div id="carousel-example-generic" class="carouse slide">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
    </div>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img src="/webapp/WEB-INF/images/1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
            <img src="/webapp/WEB-INF/images/2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img src="/webapp/WEB-INF/images/3.png" alt="Third slide">
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="icon-prev" aria-hidden="true"></span>
            <span class="sr-only">不知道啥意思</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="icon-next" aria-hidden="true"></span>
            <span class="sr-only">下一个</span>
        </a>
    </div>
</div>
