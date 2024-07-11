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
<form action="/ctsp/add" method="post">
    <div class="mb-3">
        <label  class="form-label">Ten San Pham</label>
        <select class="form-select" name="idSP">
            <c:forEach items="${listSP}" var="sp">
                <option value="${sp.id}">${sp.tenSP}</option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3">
        <label  class="form-label">Ten Mau Sac</label>
        <select class="form-select" name="idMauSac">
            <c:forEach items="${listMS}" var="ms">
                <option value="${ms.id}">${ms.tenMau}</option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3">
        <label  class="form-label">Ten Size</label>
        <select class="form-select" name="idSize">
            <c:forEach items="${listSize}" var="s">
                <option value="${s.id}">${s.tenSize}</option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3">
        <label  class="form-label">Gia Ban</label>
        <input type="text" class="form-control" name="giaBan">
    </div>
    <div class="mb-3">
        <label  class="form-label">So Luong Ton</label>
        <input type="text" class="form-control" name="soLuongTon">
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
        <th scope="col">ten san pham</th>
        <th scope="col">ten mau sac</th>
        <th scope="col">ten size</th>
        <th scope="col">gia ban</th>
        <th scope="col">so luong ton</th>
        <th scope="col">trang thai</th>
        <th scope="col">ngay Tao</th>
        <th scope="col">ngay Sua</th>
        <th scope="col">Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listCTSP}" var="ctsp">
        <tr>
            <th>${ctsp.id}</th>
            <td>${ctsp.idSP.tenSP}</td>
            <td>${ctsp.idMauSac.tenMau}</td>
            <td>${ctsp.idSize.tenSize}</td>
            <td>${ctsp.giaBan}</td>
            <td>${ctsp.soLuongTon}</td>
            <td>${ctsp.trangThai}</td>
            <td>${ctsp.ngayTao}</td>
            <td>${ctsp.ngaySua}</td>
            <td>
                <a class="btn btn-info" href="/ctsp/edit?id=${ctsp.id}">Chi tiết</a>
                <a class="btn btn-success" href="/ctsp/delete?id=${ctsp.id}">Xoá</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>