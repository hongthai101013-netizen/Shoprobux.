<?php
include_once 'nav.php';
// Trang thêm mới sản phẩm
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Xử lý lưu thông tin sản phẩm
    $name = $_POST['product_name'] ?? '';
    // ... Thêm logic xử lý DB tại đây ...
}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Sản Phẩm</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2>Thêm Sản Phẩm Mới</h2>
        <form action="" method="POST" class="mt-3">
            <div class="form-group">
                <label>Tên sản phẩm:</label>
                <input type="text" name="product_name" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success">Thêm mới</button>
        </form>
    </div>
</body>
</html>
