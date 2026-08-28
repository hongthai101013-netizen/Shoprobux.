<?php include('head.php'); ?>
<?php include('nav.php'); ?>

<div class="row mb-2">
	<div class="col-sm-12">
		<br>

	</div><!-- /.col -->
</div><!-- /.row -->
<?php
include_once '../Layout/config.php';
?>
<?php
$products = pdo_query_one("SELECT COUNT(*) FROM `products`")['COUNT(*)'];
$orders = pdo_query_one("SELECT COUNT(*) FROM `order`")['COUNT(*)'];
$users = pdo_query_one("SELECT COUNT(*) FROM `users`")['COUNT(*)'];
$amount = pdo_query_one("SELECT SUM(`price`) FROM `users`")['SUM(`price`)'];
?>

<div class="row">

	<div class="col-lg-3 col-3">

		<div class="card card-service box-service-panel">
			<div class="card-body" data-toggle="tooltip" data-placement="bottom" title="Trao đổi người theo dõi profile để kiếm tiền.">
				<div class="box-body text-center">
					<a>Sản Phẩm </a><br>
					<h3><?= $products ?></h3>
					<hr>
					<a rel="nofollow" href="/admin/addProducts.php"><button class="btn btn-danger btn-block">Xem Ngay</button></a>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3 col-3">
		<div class="card card-service box-service-panel">
			<div class="card-body" data-toggle="tooltip" data-placement="bottom" title="Trao đổi người theo dõi profile để kiếm tiền.">
				<div class="box-body text-center">
					<a>Đơn Hàng </a><br>
					<h3><?= $orders ?></h3>
					<hr>
					<a rel="nofollow" href="/admin/orderProducts.php"><button class="btn btn-success btn-block">Xem Ngay</button></a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-3">
		<div class="card card-service box-service-panel">
			<div class="card-body" data-toggle="tooltip" data-placement="bottom" title="Trao đổi người theo dõi profile để kiếm tiền.">
				<div class="box-body text-center">
					<a>Thành Viên </a><br>
					<h3><?= $users ?></h3>
					<hr>
					<a rel="nofollow" href="/admin/orderProducts.php"><button class="btn btn-info btn-block">Xem Ngay</button></a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-3">
		<div class="card card-service box-service-panel">
			<div class="card-body" data-toggle="tooltip" data-placement="bottom" title="Trao đổi người theo dõi profile để kiếm tiền.">
				<div class="box-body text-center">
					<a>Tổng Thu Được </a><br>
					<h3><?= number_format($amount) ?></h3>
					<hr>
					<a rel="nofollow" href="/admin/orderProducts.php"><button class="btn btn-primary btn-block">Xem Ngay</button></a>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		$("#datatable2").DataTable({
			"responsive": false,
			"autoWidth": false,
		});
	});
</script>
<?php include('foot.php'); ?>