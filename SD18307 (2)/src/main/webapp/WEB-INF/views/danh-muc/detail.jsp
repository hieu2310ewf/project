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

<form action="/danh-muc/edit" method="post">
    <div class="mb-3">
        <label class="form-lable">id</label>
        <input type="text" class="form-control" name="id" value="${objInput.id}">
    </div>
    <div class="mb-3">
        <label class="form-lable">ma</label>
        <input type="text" class="form-control" name="ma" value="${objInput.ma}">
    </div>
    <div class="mb-3">
        <label class="form-lable">ten</label>
        <input type="text" class="form-control" name="ten" value="${objInput.ten}">
    </div>

    <div>
        <label>trangthai</label>
        <input type="radio" name="trangthai" value="hoatdong"
        ${objInput.trangthai == 'hoatdong' ? 'checked' : ''}
        />
        <label>hoatdong</label>
        <input type="radio" name="trangthai" value="ngunghoatdong"
        ${objInput.trangthai == 'ngunghoatdong' ? 'checked' : ''}
        />
        <label>khonghoatdong</label>
    </div>
    <div class="mb-3">
        <label class="form-lable">ngaytao</label>
        <input type="date" class="form-control" name="ngaytao" value="${danhmuc.ngaytao}">
    </div>
    <div class="mb-3">
        <label class="form-lable">ngaysua</label>
        <input type="date" class="form-control" name="ngaysua" value="${danhmuc.ngaysua}">
    </div>



    <div>
        <button onclick="return confirm('sua thanh cong')">Submit</button>
    </div>
</form>
</body>
</html>