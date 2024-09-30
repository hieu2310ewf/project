<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<!doctype html>
<html lang="en">
<form action="/danh-muc/save" method="post">

    <div class="mb-3">
        <label class="form-label">Tên</label>
        <input type="text" class="form-control" name="ten">
    </div>

    <div>
        <button class="btn btn-primary">Submit</button>
    </div>
</form>



<table class="table">
    <thead>
    <tr>
        <td>ID</td>
        <td>Tên</td>
        <td>Trạng thái</td>
        <td>Thao tác</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${pages.content}" var="danhmuc">
        <tr>
            <td>${danhmuc.id}</td>
            <td>${danhmuc.ten}</td>
            <td>${danhmuc.trangthai}</td>
            <td>
                <a href="/danh-muc/hien-thi/delete?id=${danhmuc.id}" onclick="return confirm('Bạn có chắc muốn xóa?')">
                    <button class="btn btn-danger">Xóa</button>
                </a>
                <a href="/danh-muc/update?id=${danhmuc.id}" onclick="return confirm('Bạn có chắc muốn sửa?')">
                    <button class="btn btn-warning">Sửa</button>
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>

</table>
</body>
</html>