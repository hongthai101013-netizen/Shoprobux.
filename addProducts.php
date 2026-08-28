<?php include('head.php'); ?>
<?php include('nav.php'); ?>

<?php
include_once '../Layout/config.php';

function huydev($strTitle)
{
    $strTitle = strtolower($strTitle);
    $strTitle = trim($strTitle);
    $strTitle = str_replace(' ', '-', $strTitle);
    $strTitle = preg_replace("/(ò|ó|ọ|ỏ|õ|ơ|ờ|ớ|ợ|ở|ỡ|ô|ồ|ố|ộ|ổ|ỗ)/", 'o', $strTitle);
    $strTitle = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ|Ô|Ố|Ổ|Ộ|Ồ|Ỗ)/", 'o', $strTitle);
    $strTitle = preg_replace("/(à|á|ạ|ả|ã|ă|ằ|ắ|ặ|ẳ|ẵ|â|ầ|ấ|ậ|ẩ|ẫ)/", 'a', $strTitle);
    $strTitle = preg_replace("/(À|Á|Ạ|Ả|Ã|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ|Â|Ấ|Ầ|Ậ|Ẩ|Ẫ)/", 'a', $strTitle);
    $strTitle = preg_replace("/(ề|ế|ệ|ể|ê|ễ|é|è|ẻ|ẽ|ẹ)/", 'e', $strTitle);
    $strTitle = preg_replace("/(Ể|Ế|Ệ|Ể|Ê|Ễ|É|È|Ẻ|Ẽ|Ẹ)/", 'e', $strTitle);
    $strTitle = preg_replace("/(ừ|ứ|ự|ử|ư|ữ|ù|ú|ụ|ủ|ũ)/", 'u', $strTitle);
    $strTitle = preg_replace("/(Ừ|Ứ|Ự|Ử|Ư|Ữ|Ù|Ú|Ụ|Ủ|Ũ)/", 'u', $strTitle);
    $strTitle = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $strTitle);
    $strTitle = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'i', $strTitle);
    $strTitle = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $strTitle);
    $strTitle = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'y', $strTitle);
    $strTitle = str_replace('đ', 'd', $strTitle);
    $strTitle = str_replace('Đ', 'd', $strTitle);
    $strTitle = preg_replace("/[^-a-zA-Z0-9]/", '', $strTitle);
    return $strTitle;
}
if (isset($_POST['submit'])) {
    $imgProducts = $_POST['imgProducts'];
    $nameProducts = $_POST['nameProducts'];
    $priceProducts = $_POST['priceProducts'];
    $discountProducts = $_POST['discountProducts'];
    $linkProducts = $_POST['linkProducts'];
    $describeProducts = $_POST['describeProducts'];
    $noidungProducts = $_POST['noidungProducts'];
    $typeProducts = $_POST['typeProducts'];
    $code = huydev($nameProducts);
    if (empty($imgProducts) || empty($nameProducts) || empty($priceProducts) || empty($describeProducts) || empty($discountProducts) || empty($noidungProducts) || empty($typeProducts) || empty($linkProducts)) {
        echo '<script type="text/javascript">swal("Thất Bại","Để Trống Bị Ăn Đấm !","error")</script>';
    } else {
        $sql = "INSERT INTO `products`(imgProducts,code,nameProducts,priceProducts,discountProducts,linkProducts,describeProducts,noidungProducts,typeProducts) VALUES ('$imgProducts','$code','$nameProducts','$priceProducts','$discountProducts','$linkProducts','$describeProducts','$noidungProducts','$typeProducts')";
        echo $sql;
        $query = pdo_execute($sql);
        echo '<script type="text/javascript">alert("Thêm Thành Công");
        setTimeout(function(){ location.href = "" },1000);</script>';
    }
}

?>


<div class="row mb-2">
    <div class="col-sm-6">
    </div><!-- /.col -->
</div><!-- /.row -->

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">NHÓM SẢN PHẨM</h3>
                <div class="text-right">
                    <a type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default" class="btn btn-info">TẠO SẢN PHẨM</a>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div class="table-responsive">
                    <table id="datatable1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width:10px">STT</th>
                                <th>Hình Ảnh</th>
                                <th>Tên Sản Phẩm</th>
                                <th>Giá Chính</th>
                                <th>Giá Cũ</th>
                                <th>Link Download</th>
                                <th>Mô Tả Sản Phẩm</th>
                                <th>Nội Dung Sản Phẩm</th>
                                <th>Danh Mục Sản Phẩm</th>
                                <th>Xóa</th>
                                <th>Sửa</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            $sql = "SELECT * FROM products,category WHERE products.typeProducts = category.codeCategory ORDER BY id_products DESC";
                            //   echo $sql;
                            $request = pdo_query($sql);
                            foreach ($request as $row1) {
                            ?>
                                <tr>
                                    <td class="text-center">
                                        <?= $i++; ?>
                                    </td>
                                    <td class="text-center">
                                        <img style="width:200px" src="<?= $row1['imgProducts'] ?>">
                                    </td>
                                    <td class="text-center">
                                        <?= $row1['nameProducts']; ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $row1['priceProducts']; ?>
                                    </td>
                                     <td class="text-center">
                                        <?= $row1['discountProducts']; ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $row1['linkProducts']; ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $row1['describeProducts']; ?>
                                    </td>
                                      <td class="text-center" style="display: -webkit-box;-webkit-line-clamp: 5;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">
                                        <?= $row1['noidungProducts']; ?>
                                    </td>
                                    <td class="text-center">
                                        <?= $row1['nameCategory']; ?>
                                    </td>
                                    <td class="text-center">
                                        <a href='delete.php?huydeleidt=<?= $row1['id_products']; ?>' class="btn btn-default">Delete</a>
                                    </td>
                                    <td class="text-center">
                                        <a href='editProducts.php?updateid=<?= $row1['id_products']; ?>' class="btn btn-default">Edit</a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                VUI LÒNG THAO TÁC CẨN THẬN
            </div>
        </div>
        <!-- /.card -->
    </div>
    <!-- /.col -->
</div>
<!-- /.row huydeV -->

<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Thêm Sản Phẩm</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form role="form" action="" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Hình Ảnh</label>
                        <input type="text" class="form-control" name="imgProducts" placeholder="Nhập Link Ảnh" required="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên Sản Phẩm</label>
                        <input type="text" class="form-control" name="nameProducts" placeholder="Nhập Tên Sản Phẩm" required="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Giá Chính</label>
                        <input type="number" class="form-control" name="priceProducts" placeholder="Nhập Giá Sản Phẩm" required="">
                    </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Giá Cũ</label>
                        <input type="number" class="form-control" name="discountProducts" placeholder="Nhập Giá Sản Phẩm" required="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Link Download</label>
                        <input type="text" class="form-control" name="linkProducts" placeholder="Nhập Link Code" required="">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">THỂ LOẠI</label>
                        <select class="custom-select" name="typeProducts">
                            <?php
                            $spl_danhmuc = "SELECT * FROM category ORDER BY id_category DESC";
                            $query_danhmuc = pdo_query($spl_danhmuc);
                            foreach ($query_danhmuc as $row) {
                            ?>
                                <option value="<?= $row['codeCategory'] ?>">
                                    <?= $row['nameCategory'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Mô Tả Sản Phẩm</label>
                        <textarea name="describeProducts" placeholder="Nhập Mô tả" class="textarea" required=""></textarea>
                    </div>
                       <div class="form-group">
                        <label for="exampleInputEmail1">Nội Dung Sản Phẩm</label>
                        <textarea name="noidungProducts" placeholder="Nhập Nội Dung" class="textarea" required=""></textarea>
                    </div>

            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="submit" name="submit" class="btn btn-primary">Thêm Sản Phẩm</button>
            </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<?php include('foot.php'); ?>