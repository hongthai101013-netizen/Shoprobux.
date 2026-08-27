<?php
include_once 'nav.php';
// Trang quản lý danh sách Ngân hàng
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Ngân hàng</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2>Danh Sách Ngân Hàng</h2>
        <table class="table table-bordered mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên Ngân Hàng</th>
                    <th>Logo</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Vietcombank</td>
                    <td><img src="images/bankPV1.png" alt="Bank" width="50"></td>
                    <td><a href="delete.php?id=1" class="btn btn-danger btn-sm">Xóa</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
