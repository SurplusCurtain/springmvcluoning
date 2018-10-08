<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>罗宁的辣鸡波克</title>
    <link rel="stylesheet" type="text/css" href="WEB-INF/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="WEB-INF/css/font-awesome.min.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <style type="text/css">
    .split {
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .list-group-item-heading {
            font-size: 14px;
        }

        .list-group-item-text {
            font-size: 13px;
        }

        a {
            color: #444;
        }

        a:hover {
            color: black;
        }
    </style>
</head>
<body class="container">
<!-- 导航栏 -->
<div class="row">
    <jsp:include page="/WEB-INF/jsp/navbar.jsp"/>
</div>
<!-- 导航栏结束 -->
<div class="row split"></div>
<!-- body区域开始 -->
<div class="row">
    <!-- 第一列 -->
    <div class="col-md-3">
      
        <jsp:include page="/WEB-INF/jsp/page_images.jsp"/>
        <!-- 博客周排行 -->
        <jsp:include page="/WEB-INF/jsp/sort_blog.jsp"/>
    </div>

    <!-- 第二列 -->
    <div class="col-md-6">
        <%-- 博客列表 --%>
        <jsp:include page="/WEB-INF/jsp/blogs.jsp"/>
    </div>

    <!-- 第三列 -->
    <div class="col-md-3 ">
        <%-- 登录界面 --%>
        <jsp:include page="/WEB-INF/jsp/dl.jsp"/>
<a href="format"> <button class="btn btn-success">格式化</button></a>
        <%-- 发表博文 --%>
        <jsp:include page="/WEB-INF/jsp/edit_blog.jsp"/>
    </div>
</div>
<!-- body区域结束 -->
<!-- 页脚 -->
<jsp:include page="/WEB-INF/jsp/footer.jsp"/>
</body>
</html>
