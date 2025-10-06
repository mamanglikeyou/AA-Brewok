<!-- accueil.php -->
<?php include 'dbCon.php'; ?>
<?php include 'template/header.php'; ?>

<body>

	<?php include 'template/nav-bar.php'; ?>
	<?php include 'template/search-header.php'; ?>
	<!-- End Header -->

	<!-- Row Offers -->
	<div class="newmian">
		<div class="content-box-new">
			<div class="fe-box commen">
				<h4>Penawaran Akhir Tahun</h4>
				<div class="title-t">
					<p>Diskon -10% !</p>
					<div class="clear"></div>
				</div>
				<ul>
					<!-- Loop FOR, display each card with database restaurant's infos-->
					<?php
					$role = 1;
					$id = 1;
					$con = connect();
					for ($i = 1; $i < 15; $i++) {
						$sql = "SELECT * FROM `rc_info` WHERE id = $i AND role = $role;";
						// Include cards template
						echo include 'box.php';
					}
					?>
				</ul>
			</div>
		</div>
	</div>
	<!--  -->
	<!-- Row World food -->
	<div class="newmian">
		<div class="content-box-new">
			<div class="fe-box commen">
				<h4>Ramai Pengunjung</h4>
				<div class="title-t">
					<p>Ingin Menambah Sensasi ?</p>
					<div class="clear"></div>
				</div>
				<ul>
					<?php
					$role = 1;
					$category = 11;
					$id = 1;
					$con = connect();
					?>
					<!-- Loop display each card with database infos-->
					<?php
					for ($i = 2; $i < 3; $i++) {
						$sql = "SELECT * FROM `rc_info` WHERE id = $id ORDER BY id DESC;";
						echo include 'box.php';
					}
					?>
				</ul>
			</div>
		</div>
	</div>
	<!--  -->
	<section class="section-padding ftco-section bg-light">
		<div class="container special-dish">
			<h4 style="text-align: center;">
				<i class="fas fa-head-side-mask"></i> Tentang Aa`Brewok
			</h4>
			<small style="text-align: center;">
			 Perjalanan rasa kopi yang menggoda dimulai di jantung kota Garut di Jalan Guntur, dan kini merambah ke empat kota lainnya. Aa Brewok bukan sekadar kedai kopi, melainkan itu adalah perjumpaan dengan kehangatan, kelembutan, dan kenikmatan kopi sejati.<br>

			Di Aa Brewok, kami berkomitmen untuk menyajikan pengalaman kopi yang unik dan tak terlupakan. Setiap cangkir kopi kami adalah perpaduan sempurna antara biji kopi berkualitas tinggi, sentuhan ahli dari para barista berbakat kami, dan atmosfer yang hangat untuk menciptakan momen-momen yang berkesan.<br>

			Biji kopi pilihan kami berasal dari petani terbaik, menjadikan setiap tegukan sebagai perjalanan melintasi aroma dan cita rasa yang luar biasa. Dari espresso yang kaya dan penuh karakter hingga kopi manual yang diseduh dengan cinta, setiap minuman di Aa Brewok adalah sebuah karya seni yang kami banggakan.<br>


			Aa Brewok bukan hanya tentang kopi; kami juga menawarkan berbagai pilihan makanan ringan yang lezat untuk menemani setiap hidangan kopi. Dari kudapan yang menyegarkan hingga hidangan penutup yang memanjakan lidah, menu kami dirancang untuk memenuhi selera setiap pelanggan.<br>

			Selamat datang di Aa Brewok, tempat di mana kopi bertemu kenangan. Bergabunglah dengan kami untuk merayakan kehidupan, bersama cinta kopi yang tak terbatas. <br>
			</small>
		</div>
	</section>

	<?php include 'template/instagram.php'; ?>

	<?php include 'template/footer.php'; ?>

	<?php include 'template/bootstrap.php'; ?>

	<?php include 'template/script.php'; ?>

	<script src="dashboard/assets/vendor/jquery/jquery.js"></script>
	<script src="dashboard/assets/vendor/select2/select2.js"></script>
	<script src="dashboard/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
	<script src="js/owl.carousel.min.js"></script>

</body>

</html>