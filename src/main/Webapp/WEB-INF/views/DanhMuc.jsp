<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--	<%@ page contentType="text/html; charset=UTF-8" %>-->
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<form action="/danh-muc/add" method="post">
    <div class="mb-3">
        <label  class="form-label">ID</label>
        <input type="text" class="form-control" name="id">
    </div>
    <div class="mb-3">
        <label  class="form-label">ma danh muc</label>
        <input type="text" class="form-control" name="maDanhMuc">
    </div>
    <div class="mb-3">
        <label  class="form-label">ten danh muc</label>
        <input type="text" class="form-control" name="tenDanhMuc">
    </div>
<%--        <div class="mb-3">--%>
<%--            <label  class="form-label">ngayTao</label>--%>
<%--            <input type="text" class="form-control" name="ngayTao">--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label  class="form-label">ngaySua</label>--%>
<%--            <input type="text" class="form-control" name="ngaySua">--%>
<%--        </div>--%>
    <div>
        <p>trangThai</p>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="trangThai" id="inlineRadio1" value="Active">
            <label class="form-check-label" for="inlineRadio1">Active</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="trangThai" id="inlineRadio2" value="Inactive">
            <label class="form-check-label" for="inlineRadio2">Inactive</label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">add</button>
</form>

<table class="table">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">ma danh muc</th>
        <th scope="col">ten danh muc</th>
        <th scope="col">trangThai</th>
        <th scope="col">ngay tao</th>
        <th scope="col">ngay sua</th>
        <th scope="col">Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listDM}" var="dm">
        <tr>
            <th scope="row">${dm.id}</th>
            <td>${dm.maDanhMuc}</td>
            <td>${dm.tenDanhMuc}</td>
            <td>${dm.trangThai}</td>
            <td>${dm.ngayTao}</td>
            <td>${dm.ngaySua}</td>
            <td>
                <a class="btn btn-info" href="/danh-muc/edit?id=${dm.id}">Chi tiết</a>
                <a class="btn btn-success" href="/danh-muc/delete?id=${dm.id}">Xoá</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>