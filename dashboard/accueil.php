<!-- accueil.php -->
<?php include 'template/header.php';
if (!isset($_SESSION['isLoggedIn'])) {
	echo '<script>window.location="login.php"</script>';
}
?>

<body>
	<section class="body">
		<!-- start: header -->
		<?php include 'template/top-bar.php'; ?>
		<!-- end: header -->
		<div class="inner-wrapper">
			<!-- start: sidebar -->
			<?php include 'template/left-bar.php'; ?>
			<!-- end: sidebar -->
			<section role="main" class="content-body">
				<header class="page-header">
					<h2>Dashboard</h2>
					<div class="right-wrapper pull-right">
						<ol class="breadcrumbs">
							<li>
								<a href="accueil.php">
									<i class="fa fa-home"></i>
								</a>
							</li>
							<li><span>Dashboard</span></li>
							<li><span>Daftar Reservasi</span></li>
						</ol>
						<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
					</div>
				</header>
				<!-- start: page -->
				<section class="panel">
					<header class="panel-heading">
						<div class="panel-actions">
							<a href="#" class="fa fa-caret-down"></a>
							<a href="#" class="fa fa-times"></a>
						</div>
						<h2 class="panel-title">Selamat Datang di Panel Admin <span class="name"><?php echo $_SESSION['name']; ?></span> !</h2> <br>
						<p class="panel-subtitle">
							Di sini Anda dapat <code>mengelola</code> halaman kedai dan pemesanan : Jenis Meja, Jumlah setiap meja, Item menu, Pemesanan Reservasi.
							<hr>
							Untuk menerima <code>pemesanan</code>, silakan gunakan <code>Aksi</code>. <br>
							<code>Surat konfirmasi</code> akan dikirim ke pelanggan, dengan rincian pemesanan. <br>
							Anda dapat membuka detail pemesanan dengan mengklik tombol <code>"Detail"</code>.
						</p>
					</header>
					<div class="panel-body">
						<table class="table table-bordered table-striped mb-none" id="datatable-tabletools" data-swf-path="assets/vendor/jquery-datatables/extras/TableTools/swf/copy_csv_xls_pdf.swf" data-plugin-options='{"searchPlaceholder": "Search"}'>
							<thead>
								<tr>
									<th>No</th>
									<th>Nama Depan</th>
									<th>Nama Belakang</th>
									<th>Phone</th>
									<th>E-Mail</th>
									<th>Tanggal</th>
									<th>Jam</th>
									<th class="hidden-phone">Status</th>
									<th class="hidden-phone">Aksi</th>
									<th class="hidden-phone">Detail Meja/Orang</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$count = 1;
								include 'dbCon.php';
								$con = connect();
								$res_id = $_SESSION['id'];
								$sql = "SELECT * FROM `booking_details` WHERE res_id = '$res_id'  ORDER BY make_date DESC;";
								$result = $con->query($sql);
								foreach ($result as $r) {
								?>
									<tr class="gradeX">
										<td class="center hidden-phone"><?php echo $count; ?></td>
										<td><?php echo $r['name']; ?></td>
										<td><?php echo $r['first_name']; ?></td>
										<td><?php echo $r['phone']; ?></td>
										<td><?php echo $r['email']; ?></td>
										<td><?php echo $r['booking_date']; ?></td>
										<td><?php echo $r['booking_time']; ?></td>
										<td class="left hidden-phone">
											<?php
											$status = $r['status'];
											if ($status == 0) {
											?>
												<p class="text-danger"><i class="far fa-calendar-times"></i> Ditolak</p>
											<?php } else { ?>
												<p class="text-success"><i class="far fa-calendar-check"></i> Dikonfirmasi</p>
											<?php } ?>
										</td>
										<td class="center hidden-phone">
											<?php
											if ($status == 1) {
											?>
												<a href="approve-reject.php?breject_id=<?php echo $r['id']; ?>&booking-number=<?php echo $r['booking_id']; ?>" class="btn btn-danger btn-sm btn-block" onclick="if (!Done()) return false; ">Tolak</a>
											<?php } else { ?>
												<a href="approve-reject.php?bapprove_id=<?php echo $r['id']; ?>&booking-number=<?php echo $r['booking_id']; ?>" class="btn btn-success btn-sm btn-block" onclick="if (!Done()) return false; ">Konfirmasi</a>
											<?php } ?>
										</td>
										<td class="center hidden-phone">
											<a href="invoice.php?booking-number=<?php echo $r['booking_id']; ?>" class="btn btn-warning btn-sm btn-block">Detail</a>
										</td>
									</tr>
								<?php $count++;
								} ?>
							</tbody>
						</table>
					</div>
				</section>
				<!-- end: page -->
			</section>
		</div>

	<?php include 'template/right-bar.php'; ?>
	</section>
	<script type="text/javascript">
		function Done() {
			return confirm("Are you sure?");
		}
	</script>

	<?php include 'template/script-res.php'; ?>
</body>

</html>