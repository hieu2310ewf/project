<!-- File: admin-layout.jsp -->
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            ;
        }
        .sidebar {
            width: 250px; /* Chiều rộng của sidebar */
            background-color: #343a40; /* Màu nền của sidebar */
            color: white; /* Màu chữ */
            height: 100vh; /* Chiều cao bằng 100% viewport */
            padding: 20px; /* Padding cho sidebar */
        }
        .sidebar .nav-link {
            color: #fff;
        }
        .sidebar .nav-link.active {
            background-color: #495057;
            color: #fff;
        }
        .main-content {
            padding: 20px;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-2 d-none d-md-block sidebar">
            <div class="position-sticky pt-3">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="/admin/dashboard">
                            Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/mau-sac/hien-thi">
                           <label>Quản lý màu sắc</label>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/size/hien-thi">
                            <label>quản lý Size</label>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/danh-muc/hien-thi">
                            <label>quản lý danh mục</label>
                        </a>
                    </li>


                    <!-- Các mục khác trong sidebar -->
                </ul>

            </div>

        </nav>


        <!-- Main Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Admin Dashboard</h1>
            </div>

            <!-- Nội dung động -->
            <jsp:include page="${pageContent}"></jsp:include>

        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gyb9sM6xwB6qZ4Z6N7A9uB7F8b9qY5gKOkjG4F+yp5xW4O4l4f" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-s2G+N1tPEhTPJ4+Q8/vf+ukdGfRbltxx8s7eyD1iHw4PChTPbB8cDFxg0/uc/0t0" crossorigin="anonymous"></script>
</body>
</html>
