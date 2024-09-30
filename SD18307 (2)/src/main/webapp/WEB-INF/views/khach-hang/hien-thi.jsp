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

<form action="/khach-hang/save" method="post">

    <div class="mb-3">
        <label class="form-lable">ten</label>
        <input type="text" class="form-control" name="ten">
    </div>


    <div>
        <label>trangthai</label>
        <input type="radio" name="trangthai" value="hoatdong" checked/>
        <label>hoatdong</label>
        <input type="radio" name="trangthai" value="khonghoatdong" />
        <label>khong hoat dong</label>
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
        <label class="form-lable">so dien thoat</label>
        <input type="text" class="form-control" name="sdt">
    </div>
    <div class="mb-3">
        <label class="form-lable">dia chi</label>
        <input type="text" class="form-control" name="diachi">
    </div>

    <div>
        <button onclick="return confirm('them thanh cong')">Submit</button>
    </div>
</form>
<div style="display: flex; justify-content: end; gap: 10px; margin-bottom: 10px">
<a class="btn btn-outline-primary" href="/khach-hang/hien-thi?page=0"> << </a>
<a class="btn btn-outline-primary" href="/khach-hang/hien-thi?page=${pages.number-1}"
${pages.number-1 < 0} ? 'id="demo"' : ''}
> < </a>
<a class="btn btn-outline-primary" href="/khach-hang/hien-thi?page=${pages.number+1}"
${pages.number+1 >= pages.totalPages} ? 'style="pointer-events: none; color: #ccc"' : ''}
> > </a>
<a class="btn btn-outline-primary" href="/khach-hang/hien-thi?page=${pages.totalPages-1}"> >> </a>
</div>
    <table class="table">
        <thead>
        <tr>
            <td>id</td>
            <td>ten</td>
            <td>diachi</td>
            <td>sdt</td>
            <td>trangthai</td>
            <td>ngay sua</td>
            <td>ngay tao</td>

        </tr>
        </thead>
        <tbody>

        <C:forEach items="${pages.content}"  var="khachhang" >
            <tr>


                <td>${khachhang.id}</td>
                <td>${khachhang.ten}</td>
                <td>${khachhang.diachi}</td>
                <td>${khachhang.sdt}</td>
                <td>${khachhang.trangthai}</td>
                <td>${khachhang.ngaytao}</td>
                <td>${khachhang.ngaysua}</td>

                <td><a href="/khach-hang/hien-thi/delete?id=${khachhang.id}" onclick="return confirm('ban muon xoa')"><button>xoa</button></a> </td>
                <td><a href="/khach-hang/update?id=${khachhang.id}" onclick="return confirm('ban muon sua')"><button>sua</button></a> </td>

            </tr>
        </C:forEach>
        </tbody>
        <h1>Kết Quả Tìm Kiếm</h1>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Trạng Thái</th>
            </tr>
            </thead>
            <tbody>
            <C:forEach items="${mauSacs}" var="mauSac">
                <tr>
                    <td>${mauSac.id}</td>
                    <td>${mauSac.ten}</td>
                    <td>${mauSac.trangthai}</td>
                </tr>
            </C:forEach>
            </tbody>
        </table>
        <a href="/mau-sac/form">Quay lại</a>

    </table>



</body>
</html>