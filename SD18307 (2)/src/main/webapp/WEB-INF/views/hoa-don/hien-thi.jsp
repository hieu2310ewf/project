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

<form action="/hoa-don" method="post">



    <div>
        <label>trangthai</label>
        <input type="radio" name="trangthai" value="dathanhtoan" checked/>
        <label>dathanhtoan</label>
        <input type="radio" name="trangthai" value="chuathanhtoan" />
        <label>chuathanhtoan</label>
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
        <label class="form-lable">id khach hang</label>
        <input type="text" class="form-control" name="khachhang">
    </div>
    <div class="mb-3">
        <label class="form-lable">dia chi</label>
        <input type="text" class="form-control" name="diachi">
    </div>
    <div class="mb-3">
        <label class="form-lable">so dien thoai</label>
        <input type="text" class="form-control" name="sdt">
    </div>

    <div>
        <button onclick="return confirm('them thanh cong')">Submit</button>
    </div>
</form>
<div style="display: flex; justify-content: end; gap: 10px; margin-bottom: 10px">
    <a class="btn btn-outline-primary" href="/hoa-don/hien-thi?page=0"> << </a>
    <a class="btn btn-outline-primary" href="hoa-don/hien-thi?page=${pages.number-1}"
    ${pages.number-1 < 0} ? 'id="demo"' : ''}
    > < </a>
    <a class="btn btn-outline-primary" href="/hoa-don/hien-thi?page=${pages.number+1}"
    ${pages.number+1 >= pages.totalPages} ? 'style="pointer-events: none; color: #ccc"' : ''}
    > > </a>
    <a class="btn btn-outline-primary" href="/hoa-don/hien-thi?page=${pages.totalPages-1}"> >> </a>
</div>
    <table class="table">
        <thead>
        <tr>
            <td>id</td>
            <td>id khach hang</td>
            <td>trang thai</td>
            <td>ngay sua</td>
            <td>ngay tao</td>
            <td>dia chi</td>
            <td>sdt</td>



        </tr>
        </thead>
        <tbody>
        <C:forEach items="${pages.content}"  var="hoadon" >
            <tr>


                <td>${hoadon.id}</td>
                <td>${hoadon.khachhang.id}</td>
                <td>${hoadon.trangthai}</td>
                <td>${hoadon.ngaysua}</td>
                <td>${hoadon.ngaytao}</td>
                <td>${hoadon.diachi}</td>
                <td>${hoadon.sdt}</td>





                <td><a href="/hoa-don/hien-thi/delete?id=${hoadon.id}" onclick="return confirm('ban muon xoa')"><button>xoa</button></a> </td>
                <td><a href="/hoa-don/update?id=${hoadon.id}" onclick="return confirm('ban muon sua')"><button>edi</button></a> </td>

            </tr>
        </C:forEach>
        </tbody>

    </table>



</body>
</html>