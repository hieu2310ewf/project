<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</head>
<body class="container">
<form action="/size/save" method="post">

    <div class="mb-3">
        <label class="form-label">Tên</label>
        <input type="text" class="form-control" name="ten">
    </div>
    <div>
        <label>trangthai</label>
        <input type="radio" name="trangthai" value="1" checked/>
        <label>true</label>
        <input type="radio" name="trangthai" value="0" />
        <label>false</label>
    </div>


    <div>
        <button class="btn btn-primary">Submit</button>
    </div>
</form>



<div style="display: flex; justify-content: end; gap: 10px; margin-bottom: 10px">
    <a class="btn btn-outline-primary" href="/size/hien-thi?page=0"> << </a>
    <a class="btn btn-outline-primary" href="/mau-sac/hien-thi?page=${pages.number-1}"
    ${pages.number-1 < 0} ? 'id="demo"' : ''}
    > < </a>
    <a class="btn btn-outline-primary" href="/size/hien-thi?page=${pages.number+1}"
    ${pages.number+1 >= pages.totalPages} ? 'style="pointer-events: none; color: #ccc"' : ''}
    > > </a>
    <a class="btn btn-outline-primary" href="/size/hien-thi?page=${pages.totalPages-1}"> >> </a>
</div>

<table class="table">
    <thead>
    <form action="/size/hien-thi" method="get">
        <input type="text" name="ten" placeholder="Tìm kiếm màu sắc" value="${param.ten}">
        <button type="submit">Tìm Kiếm</button>
    </form>
    <a href="/size/hien-thi" class="btn btn-secondary">Trở về</a>
    <tr>
        <td>ID</td>
        <td>Tên</td>
        <td>Trạng thái</td>
        <td>Thao tác</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${pages.content}" var="size">
        <tr>
            <td>${size.id}</td>
            <td>${size.ten}</td>
            <td>${size.trangthai}</td>
            <td>
                <a href="/size/hien-thi/delete?id=${size.id}" onclick="return confirm('Bạn có chắc muốn xóa?')">
                    <button class="btn btn-danger">Xóa</button>
                </a>
                <a href="/size/update?id=${size.id}" onclick="return confirm('Bạn có chắc muốn sửa?')">
                    <button class="btn btn-warning">Sửa</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>


</table>
</body>
</html>