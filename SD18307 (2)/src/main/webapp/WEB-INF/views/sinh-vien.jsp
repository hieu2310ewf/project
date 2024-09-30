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
<body class="container">

<form action="/sinh-vien" method="post">
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


    <diV>
        <label>gioitinh</label>
        <input type="radio" name="gioitinh" value="nam" checked/>
        <label>nam</label>
        <input type="radio" name="gioitinh" value="nu" checked/>
        <label>nu</label>
    </diV>
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

        </tr>
        </thead>
        <tbody>
        <C:forEach items="${ds}"  var="sinhvien">
            <tr>

                <td>${sinhvien.id}</td>
                <td>${sinhvien.hoten}</td>
                <td>${sinhvien.diachi}</td>
                <td>${sinhvien.gioitinh}</td>
                <td>${sinhvien.trangthai}</td>


                <td><a href="/sinh-vien/delete?id=${sinhvien.id}" ><button>xoa</button></a> </td>

            </tr>
        </C:forEach>
        </tbody>

    </table>


</form>
</body>
</html>