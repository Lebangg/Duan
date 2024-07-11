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
<form action="/size/update" method="post">
    <div class="mb-3">
        <label  class="form-label">ID</label>
        <input type="text" class="form-control" name="id" value="${s.id}" readonly>
    </div>
    <div class="mb-3">
        <label  class="form-label">ma Size</label>
        <input type="text" class="form-control" name="maSize" value="${s.maSize}">
    </div>
    <div class="mb-3">
        <label  class="form-label">ten Size</label>
        <input type="text" class="form-control" name="tenSize" value="${s.tenSize}">
    </div>
    <div>
        <p>trangThai</p>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="trangThai" id="inlineRadio1" value="Active"
                   <c:if test="${s.trangThai == 'Active'}">checked</c:if>
            >
            <label class="form-check-label" for="inlineRadio1">Active</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="trangThai" id="inlineRadio2" value="Inactive"
                   <c:if test="${s.trangThai == 'Inactive'}">checked</c:if>
            >
            <label class="form-check-label" for="inlineRadio2">Inactive</label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">update</button>
</form>
</body>
</html>