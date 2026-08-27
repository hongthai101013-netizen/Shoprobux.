<?php
// Xử lý xóa mục/sản phẩm
$id = $_GET['id'] ?? null;
if ($id) {
    // Logic xóa khỏi DB
    header("Location: listBank.php");
    exit();
}
?>
