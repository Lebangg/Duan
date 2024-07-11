<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-dpuaG1suU0eT09tx5plTaGMLBsfDLzUCCUXOY2j/LSvXYuG6Bqs43ALlhIqAJVRb" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Trang Chủ</a>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-5 ">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" >Sản phẩm mới</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active">Sản phẩm tháng 6</a>
                </li>
<%--                <li class="nav-item dropdown">--%>
<%--                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        List Products--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu">--%>
<%--                        <li><a class="dropdown-item" >Action</a></li>--%>
<%--                        <li><a class="dropdown-item" >Another action</a></li>--%>
<%--                        <li><hr class="dropdown-divider"></li>--%>
<%--                        <li><a class="dropdown-item" >Something else</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
                <li class="nav-item">
                    <a class="nav-link active" >Bộ Sưu Tập</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" >Bảo Hành và Hỗ Trợ</a>
                </li>
            </ul>
            <form class="d-flex me-auto" role="search">
                <input class="form-control me-2" type="search" placeholder="search..." aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <div class="me-4 d-flex">
                <a href="/TrangChu/User/Login" class="nav-link"><i class="fa-solid fa-user"></i></a>
            </div>
        </div>
    </div>
</nav>
<div class="container-fluid">
<div class="row">
    <c:forEach items="${listCTSP}" var="ctsp">
        <div class="col-3 mt-4">
            <div class="card" style="width: 18rem;">
                <img src="data:image/jpeg;base64,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"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">${ctsp.idSP.tenSP}</h5>
                    <p>${ctsp.giaBan}đ</p>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.</p>
                    <form action="/hdct/add?id=${ctsp.id}" method="post">
                    <button type="submit" class="btn btn-primary">Mua Ngay</button>
                    </form>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
</div>
</body>
</html>
