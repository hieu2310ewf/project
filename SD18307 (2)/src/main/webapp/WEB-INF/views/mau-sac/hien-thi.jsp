<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<meta charset="UTF-8">
<!doctype html>
<html lang="en">
<form action="/mau-sac/save" method="post">

    <div class="mb-3">
        <label class="form-label">Tên</label>
        <input type="text" class="form-control" name="ten">
    </div>
    <div>
        <label>trangthai</label>
        <input type="radio" name="trangthai" value="0" checked/>
        <label>hoạt động</label>
        <input type="radio" name="trangthai" value="1" />
        <label>không hoạt động</label>
    </div>


    <div>
        <button class="btn btn-primary">Submit</button>
    </div>
</form>



<div style="display: flex; justify-content: end; gap: 10px; margin-bottom: 10px">
    <a class="btn btn-outline-primary" href="/mau-sac/hien-thi?page=0"> << </a>
    <a class="btn btn-outline-primary" href="/mau-sac/hien-thi?page=${pages.number-1}"
    ${pages.number-1 < 0} ? 'id="demo"' : ''}
    > < </a>
    <a class="btn btn-outline-primary" href="/mau-sac/hien-thi?page=${pages.number+1}"
    ${pages.number+1 >= pages.totalPages} ? 'style="pointer-events: none; color: #ccc"' : ''}
    > > </a>
    <a class="btn btn-outline-primary" href="/mau-sac/hien-thi?page=${pages.totalPages-1}"> >> </a>
</div>

<table class="table">
    <thead>
    <form action="/mau-sac/hien-thi" method="get">
        <input type="text" name="ten" placeholder="Tìm kiếm màu sắc" value="${param.ten}">
        <button type="submit">Tìm Kiếm</button>
    </form>
    <a href="/mau-sac/hien-thi" class="btn btn-secondary">Trở về</a>
    <tr>
        <td>ID</td>
        <td>Tên</td>
        <td>Trạng thái</td>
        <td>Thao tác</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${pages.content}" var="mausac">
        <tr>
            <td>${mausac.id}</td>
            <td>${mausac.ten}</td>
            <td>${mausac.trangthai}</td>
            <td>
                <a href="/mau-sac/hien-thi/delete?id=${mausac.id}" onclick="return confirm('Bạn có chắc muốn xóa?')">
                    <button class="btn btn-danger">Xóa</button>
                </a>
                <a href="/mau-sac/update?id=${mausac.id}" onclick="return confirm('Bạn có chắc muốn sửa?')">
                    <button class="btn btn-warning">Sửa</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>


</table>

</body>
</html>