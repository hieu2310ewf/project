<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body>

<form action="/nhan-vien" method="post">
    <div class="mb-3">
        <label class="form-lable">stt</label>
        <input type="text" class="form-control" name="stt">
    </div>
    <div class="mb-3">
        <label class="form-lable">id</label>
        <input type="text" class="form-control" name="id">
    </div>
    <div class="mb-3">
        <label class="form-lable">hoten</label>
        <input type="text" class="form-control" name="hoten">
    </div>
    <div class="mb-3">
        <label class="form-lable">luong</label>
        <input type="text" class="form-control" name="luong">
    </div>

    <diV>
        <label>gioitinh</label>
        <input type="radio" name="gioitinh" value="nam" checked/>
        <label>nam</label>
        <input type="radio" name="gioitinh" value="nu" checked/>
        <label>nu</label>
    </diV>
    <div class="mb-3">
        <label class="form-lable">phongban</label>
        <input type="text" class="form-control" name="phongban">
    </div>
    <div>
        <label>trangthai</label>
        <input type="radio" name="trangthai" value="hoatdong" checked/>
        <label>hoatdong</label>
        <input type="radio" name="trangthai" value="ngunghoatdong" checked/>
        <label>ngunghoatdong</label>
    </div>
    <div>
        <button>Submit</button>
    </div>
    <table class="table">
        <thead>
        <tr>
            <td>stt</td>
            <td>id</td>
            <td>hoten</td>
            <td>luong</td>
            <td>gioitinh</td>
            <td>phongban</td>
            <td>trangthai</td>
        </tr>
        </thead>
        <tbody>
        <C:forEach items="${ds}" varStatus="i" var="nhanvien">
            <tr>
                <td>${nhanvien.stt}</td>
                <td>${nhanvien.id}</td>
                <td>${nhanvien.hoten}</td>
                <td>${nhanvien.luong}</td>
                <td>${nhanvien.gioitinh}</td>
                <td>${nhanvien.phongban}</td>
                <td>${nhanvien.trangthai}</td>
                <td><a href="/nhan-vien/delete?id=${nhanvien.id}" ><button>xoa</button></a> </td>
                <td><a href="/nhan-vien/detail?id=${nhanvien.id}" ><button>edit</button></a> </td>
            </tr>
        </C:forEach>
        </tbody>

    </table>


</form>
</body>
</html>