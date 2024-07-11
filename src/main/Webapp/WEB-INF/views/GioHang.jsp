<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-dpuaG1suU0eT09tx5plTaGMLBsfDLzUCCUXOY2j/LSvXYuG6Bqs43ALlhIqAJVRb" crossorigin="anonymous">
</head>
<body>
    <h1>Gio Hang</h1>
    <table class="table">
        <thead>
            <tr>
                <td>Hình Ảnh</td>
                <td>Sản Phẩm</td>
                <td>Màu Sắc</td>
                <td>Size</td>
                <td>Số Lượng</td>
                <td>Thành tiền</td>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${listGH}" var="gh">
            <tr>
                <td>
                    <img src="https://vn.yamaha.com/vi/files/up_product_u3_po-ebo_2693fba06ec03751b7c9f0a69e77e16a.jpg?impolicy=resize&imwid=2000&imhei=2000"
                         class="card-img-top" alt="..."></td>
                <td>${gh.ctsp.idSP.tenSP}</td>
                <td>${gh.ctsp.idMauSac.tenMau}</td>
                <td>${gh.ctsp.idSize.tenSize}</td>
                <td>${gh.soLuong}</td>
                <td>${gh.giaBan}</td>
            </tr>
            <hr>
        <tr>
            <td>Tổng tiền</td>
        </tr>
        </tbody>
        </c:forEach>

    </table>
</body>
</html>