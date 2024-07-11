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
<form action="/ctsp/update" method="post">
    <div>
        <label  class="form-label">ID</label>
        <input type="text" class="form-control" name="id" value="${ctsp.id}" readonly>
    </div>
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
        <input type="text" class="form-control" name="giaBan" value="${ctsp.giaBan}">
    </div>
    <div class="mb-3">
        <label  class="form-label">So Luong Ton</label>
        <input type="text" class="form-control" name="soLuongTon" value="${ctsp.soLuongTon}">
    </div>
    <div>
        <p>trangThai</p>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="trangThai" id="inlineRadio1" value="Active"
                   <c:if test="${ctsp.trangThai == 'Active'}">checked</c:if>
            >
            <label class="form-check-label" for="inlineRadio1">Active</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="trangThai" id="inlineRadio2" value="Inactive"
                   <c:if test="${ctsp.trangThai == 'Inactive'}">checked</c:if>
            >
            <label class="form-check-label" for="inlineRadio2">Inactive</label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">update</button>
</form>
</body>
</html>