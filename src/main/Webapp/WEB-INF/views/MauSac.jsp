<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--	<%@ page contentType="text/html; charset=UTF-8" %>-->
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<form action="/mausac/add" method="post">
    <div class="mb-3">
        <label  class="form-label">maMau</label>
        <input type="text" class="form-control" name="maMau">
    </div>
    <div class="mb-3">
        <label  class="form-label">tenMau</label>
        <input type="text" class="form-control" name="tenMau">
    </div>
    <div>
        <p>trangThai</p>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="trangThai" id="inlineRadio1" value="Active" checked>
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
        <th scope="col">ma mau sac</th>
        <th scope="col">ten mau sac</th>
        <th scope="col">trangThai</th>
        <th scope="col">ngay tao</th>
        <th scope="col">ngay sua</th>
        <th scope="col">Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listMS}" var="ms">
        <tr>
            <th scope="row">${ms.id}</th>
            <td>${ms.maMau}</td>
            <td>${ms.tenMau}</td>
            <td>${ms.trangThai}</td>
            <td>${ms.ngayTao}</td>
            <td>${ms.ngaySua}</td>
            <td>
                <a class="btn btn-info" href="/mausac/edit?id=${ms.id}">Chi tiết</a>
                <a class="btn btn-success" href="/mausac/delete?id=${ms.id}">Xoá</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>