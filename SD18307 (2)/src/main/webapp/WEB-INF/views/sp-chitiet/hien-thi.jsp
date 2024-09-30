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

<form action="/sp-chitiet" method="post">
    <div class="mb-3">
        <label class="form-lable">id san pham</label>
        <input type="text" class="form-control" name="sanpham">
    </div>

    <div class="mb-3">
        <label class="form-lable">id mau sac</label>
        <input type="text" class="form-control" name="mausac">
    </div>
    <div class="mb-3">
        <label class="form-lable">id size</label>
        <input type="text" class="form-control" name="size">
    </div>
    <div class="mb-3">
        <label class="form-lable">gia ban</label>
        <input type="text" class="form-control" name="giaban">
    </div>



    <div>
        <label>trangthai</label>
        <input type="radio" name="trangthai" value="hoatdong" checked/>
        <label>hoatdong</label>
        <input type="radio" name="trangthai" value="ngunghoatdong" />
        <label>khonghoatdong</label>
    </div>
    <div class="mb-3">
        <label class="form-lable">ngaytao</label>
        <input type="date" class="form-control" name="ngaytao">
    </div>
    <div class="mb-3">
        <label class="form-lable">ngaysua</label>
        <input type="date" class="form-control" name="ngaysua">
    </div>
    <div class="mb-3">
        <label class="form-lable">soluong ton</label>
        <input type="text" class="form-control" name="soluongton">
    </div>

    <div>
        <button onclick="return confirm('them thanh cong')">Submit</button>
    </div>
</form>
<div style="display: flex; justify-content: end; gap: 10px; margin-bottom: 10px">
    <a class="btn btn-outline-primary" href="/sp-chitiet/hien-thi?page=0"> << </a>
    <a class="btn btn-outline-primary" href="/sp-chitiet/hien-thi?page=${pages.number-1}"
    ${pages.number-1 < 0} ? 'id="demo"' : ''}
    > < </a>
    <a class="btn btn-outline-primary" href="/sp-chitiet/hien-thi?page=${pages.number+1}"
    ${pages.number+1 >= pages.totalPages} ? 'style="pointer-events: none; color: #ccc"' : ''}
    > > </a>
    <a class="btn btn-outline-primary" href="/sp-chitiet/hien-thi?page=${pages.totalPages-1}"> >> </a>
</div>
<table class="table">
    <thead>
    <tr>
        <td>id</td>
        <td>id san pham</td>
        <td>id mau sac</td>
        <td>id size</td>
        <td>gia ban</td>
        <td>so luong ton</td>
        <td>trang thai</td>
        <td>ngay sua</td>
        <td>ngay tao</td>


    </tr>
    </thead>
    <tbody>
    <C:forEach items="${pages.content}"  var="spct">
        <tr>


            <td>${spct.id}</td>
            <td>${spct.sanpham.id}</td>
            <td>${spct.mausac.id}</td>
            <td>${spct.size.id}</td>
            <td>${spct.giaban}</td>
            <td>${spct.soluongton}</td>
            <td>${spct.trangthai}</td>
            <td>${spct.ngaysua}</td>
            <td>${spct.ngaytao}</td>





            <td><a href="/sp-chitiet/hien-thi/delete?id=${spct.id}"onclick="return confirm('ban muon xoa')"><button>xoa</button></a> </td>

            <td><a href="/sp-chitiet/update?id=${spct.id}" onclick="return confirm('ban muon sua')"><button>sua</button></a> </td>

        </tr>
    </C:forEach>
    </tbody>

</table>



</body>
</html>