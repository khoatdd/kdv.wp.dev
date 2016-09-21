<!-- 
	Template Name: Kết quả tìm kiêm
 -->

<?php
	session_start(); 
	global $wpdb;
	$get_ID = get_current_user_id();
	$user = wp_get_current_user();
	$allowed_roles = array('editor', 'administrator');
	if( array_intersect($allowed_roles, $user->roles ) ) {
	$selectid = $wpdb->get_results( 
	"
	SELECT ID
	FROM thongtinchung
	WHERE ID = '$get_ID'
	"
	);
	$check =$wpdb->num_rows;
	$ketqua = $_GET['ID'];
	$selectthongtinchung = $wpdb->get_row("SELECT * FROM thongtinchung WHERE ID = '$ketqua'",ARRAY_N);
	$selecttrinhdongoaingu = $wpdb->get_results("SELECT * FROM trinhdongoaingu WHERE ID = $ketqua",ARRAY_N);
	$selectquatrinhcongtac = $wpdb->get_results("SELECT * FROM quatrinhcongtac WHERE ID = $ketqua",ARRAY_N);
	$selectcackhoahoc = $wpdb->get_results("SELECT * FROM cackhoahoc WHERE ID = $ketqua",ARRAY_N);
	$selectthamgiadgn = $wpdb->get_results("SELECT * FROM thamgiadgn WHERE ID = $ketqua",ARRAY_N);
	$selectcacdonvitochucdgn = $wpdb->get_results("SELECT * FROM cacdonvitochucdgn",ARRAY_N);
	$selecttrinhdothacsi = $wpdb->get_results("SELECT * FROM trinhdothacsi WHERE ID = $ketqua",ARRAY_N);
	$selecttrinhdotiensi = $wpdb->get_results("SELECT * FROM trinhdotiensi WHERE ID = $ketqua",ARRAY_N);
	get_header();
?>	
<body>
	<nav class="navbar navbar-inverse">
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active"><?php  echo '<a href="'.admin_url().'">'.'Xin chào '.$current_user->user_login.'</a>'; ?></li>
	        <li><a href="<?php echo home_url().'/tim-kiem'; ?>">Quay lại trang tìm kiếm</a></li>
	        <li><a href="<?php echo home_url().'/cap-nhat-kdv?ID_KDV='.$_GET['ID']; ?>">Cập nhật thông tin cho KĐV này</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="<?php echo wp_logout_url( home_url() ); ?>">Đăng xuất</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="headerimg">
			<img src="<?php echo bloginfo('template_directory').'/img/logo.jpg'; ?>" alt="" class="img-responsive" style="margin:10px auto">
		</div>
		<div class="headertitle alert-warning">
			<h1>THÔNG TIN KIỂM ĐỊNH VIÊN</h1>
		</div>
	</div>
	<div class="container">
		<div class="content">
		<div class="alert alert-info">
			<h4>Phần I: Thông tin cá nhân</h4>
		</div> <!-- title -->
		<div class="hovaten">
		<blockquote><p>Họ và tên Kiểm định viên: <span style="color:red;"><?php echo $selectthongtinchung[1]; ?> <?php echo $selectthongtinchung[2]; ?></span></p></blockquote>
		</div> <!-- hovaten -->
		<div class="ngaysinh">
		 	<blockquote><p>Ngày sinh: <span style="color:red;"><?php echo date("d-m-Y", strtotime($selectthongtinchung[3])); ?></span></p></blockquote>
		 	 </div>
		<div class="gioitinh">
			<blockquote><p>Giới tính: <span style="color:red;"><?php if($selectthongtinchung[4]==1) {echo "Nam";} else {echo "Nữ";}?></span></p></blockquote>
		</div> <!-- gioitinh -->
		<div class="quequan">
			<blockquote><p>Quê quán: <span style="color:red;"><?php echo $selectthongtinchung[5]; ?></span></p></blockquote>
		</div> <!-- quequan -->
		<div class="noicongtac">
			<blockquote><p>Nơi công tác: <span style="color:red;"><?php echo $selectthongtinchung[6]; ?></span></p></blockquote>
		</div> <!-- noicongtac -->
		<div class="thamniencongtac">
			<blockquote><p>Thâm niên công tác: <span style="color:red;"><?php echo $selectthongtinchung[7]; ?></span></p></blockquote>
		</div> <!-- thamniencongtac -->
		<div class="alert alert-info">
			<h4>Phần II: Thông tin liên lạc</h4>
		</div> <!-- title -->
		<div class="diachilienhe">
			<blockquote><p>Địa chỉ liên hệ: <span style="color:red;"><?php echo $selectthongtinchung[8]; ?></span></p></blockquote>
		</div> <!-- diachilienhe -->
		<div class="dienthoaicodinh">
			<blockquote><p>Điện thoại cố định: <span style="color:red;"><?php echo $selectthongtinchung[9]; ?></span></p></blockquote>
		</div> <!-- dienthoaicodinh -->
		<div class="dienthoaididong">
			<blockquote><p>Điện thoại di động: <span style="color:red;"><?php echo $selectthongtinchung[10]; ?></span></p></blockquote>
		</div> <!-- dienthoadidong -->
		<div class="email">
			<blockquote><p>Email liên hệ: <span style="color:red;"><?php echo $selectthongtinchung[11]; ?></span></p></blockquote>
		</div> <!-- email -->
		<div class="fax">
			<blockquote><p>Fax: <span style="color:red;"><?php echo $selectthongtinchung[12]; ?></span></p></blockquote>
		</div> <!-- fax -->
		<div class="alert alert-info">
			<h4>Phần III: Trình độ chuyên môn, nghiệp vụ</h4>
		</div> <!-- title -->
		<div class="hochamhocvi">
			<blockquote><p>Chức danh: <span style="color:red;"><?php echo $selectthongtinchung[13]; ?></span></p></blockquote>
			<blockquote><p>Học vị : <span style="color:red;"><?php echo $selectthongtinchung[14]; ?></span></p></blockquote>
		</div> <!-- hochamhocvi -->
		<div class="linhvucchuyenmon">
			<blockquote><p>Lĩnh vực chuyên môn : <span style="color:red;"><?php echo $selectthongtinchung[25]; ?></span></p></blockquote>
		</div>
		<div class="chuyennganhdaotaobacthacsi">
			<blockquote><p>Chuyên ngành đào tạo bậc thạc sĩ:</p></blockquote>
				<table class="table table-striped table-hover table-bordered"  cellpadding="2" cellspacing="0">
					<tr class="success">
						<td align="center">STT</td>
						<td align="center">Chuyên ngành đào tạo</td>
						<td align="center">Nơi đào tạo</td>
						<td align="center">Năm cấp bằng</td>
					</tr>
				<?php $sttthacsi=1; foreach ($selecttrinhdothacsi as $data): ?>
						
							<tr>
								<td align="center"><?php echo $sttthacsi; ?></td>
								<td align="center"><?php echo $data[2]; ?></td>
								<td align="center"><?php echo $data[3]; ?></td>
								<td align="center"><?php echo $data[4]; ?></td>
							</tr>
						
				<?php $sttthacsi++; endforeach ?>
				</table>
			
		</div> <!-- chuyennganhdaotaobacthacsi -->
		<div>
			<blockquote><p>Chuyên ngành đào tạo bậc tiến sĩ:</p></blockquote>
				<table class="table table-striped table-hover table-bordered"  cellpadding="2" cellspacing="0">
					<tr class="success">
						<td align="center">STT</td>
						<td align="center">Chuyên ngành đào tạo</td>
						<td align="center">Nơi đào tạo</td>
						<td align="center">Năm cấp bằng</td>
					</tr>
				<?php $stttiensi=1; foreach ($selecttrinhdotiensi as $data): ?>
						
							<tr>
								<td align="center"><?php echo $stttiensi; ?></td>
								<td align="center"><?php echo $data[2]; ?></td>
								<td align="center"><?php echo $data[3]; ?></td>
								<td align="center"><?php echo $data[4]; ?></td>
							</tr>
						
				<?php $stttiensi++; endforeach ?>
				</table>
		</div> <!-- chuyennganhdaotaobactiensi -->
			<div class="chungchidaotaokiemdinhvien">
			<blockquote><p>Chứng chỉ đào tạo Kiểm định viên: <span style="color:red;"><b>Số thẻ:</b> <?php echo $selectthongtinchung[16]!='' ? $selectthongtinchung[16] : 'dữ liệu trống'; ?> <b>Ngày cấp:</b> <?php echo $selectthongtinchung[17]!='0000-00-00'? date("d-m-Y", strtotime($selectthongtinchung[17])) :'dữ liệu trống'; ?></span></p></blockquote>
			</div> <!-- cckiemdinhvien -->
		<div class="thekiemdinhvien">
			<blockquote><p>Thẻ Kiểm định viên: <span style="color:red;">Số thẻ: <?php echo $selectthongtinchung[19]; ?> Ngày cấp: <?php echo $selectthongtinchung[20]!='0000-00-00'? date("d-m-Y", strtotime($selectthongtinchung[20])) :''; ?></span></p></blockquote>
		</div> <!-- thekiemdinhvien -->
		<div class="trinhdongoaingu">
			<blockquote><p>Trình độ ngoại ngữ:</p></blockquote>
			<table class="ngoaingu table table-striped table-hover table-bordered"  cellpadding="2" cellspacing="0">
					<tr class="success">
							<td width="40" style="text-align:center">STT</td>
							<td width="100" style="text-align:center">Ngoại ngữ</td>
							<td width="100" style="text-align:center">Nghe</td>
							<td width="100" style="text-align:center">Nói</td>
							<td width="100" style="text-align:center">Đọc</td>
							<td width="100" style="text-align:center">Viết</td>
					</tr>
					<tr>
						<?php $stt=1; foreach ($selecttrinhdongoaingu as $col) { ?>
							<td align="center"><?php echo $stt; ?></td>
							<td align="center">
								<p><?php switch ($col[2]) {
									case '1':
										echo 'Tiếng Anh';
										break;
									case '2':
										echo 'Tiếng Pháp';
										break;
									case '3':
										echo 'Tiếng Nga';
										break;
									case '4':
										echo 'Tiếng Đức';
										break;
									default:
										echo $col[2];
										break;
								}  ?></p>	
							</td>
							<td align="center">
								<p><?php switch ($col[3]) {
									case '1':
										echo 'Tốt';
										break;
									case '2':
										echo 'Khá';
										break;
									case '3':
										echo 'Trung bình';
										break;
									default:
										echo 'Yếu';
										break;
								}   ?></p>
							</td>
							<td align="center">
								<p><?php switch ($col[4]) {
									case '1':
										echo 'Tốt';
										break;
									case '2':
										echo 'Khá';
										break;
									case '3':
										echo 'Trung bình';
										break;
									default:
										echo 'Yếu';
										break;
							}  ?></p>
							</td>
							<td align="center">
								<p><?php switch ($col[5]) {
									case '1':
										echo 'Tốt';
										break;
									case '2':
										echo 'Khá';
										break;
									case '3':
										echo 'Trung bình';
										break;
									default:
										echo 'Yếu';
										break;
								$stt++;}   ?></p>
							</td>
							<td align="center">
								<p><?php switch ($col[6]) {
									case '1':
										echo 'Tốt';
										$stt++;
										break;
									case '2':
										echo 'Khá';
										$stt++;
										break;
									case '3':
										echo 'Trung bình';
										$stt++;
										break;
									default:
										echo 'Yếu';
										$stt++;
										break;
								}   ?></p>
							</td>
							</tr>
							<?php } ?>
			</table>
		</div> <!-- trinhdongoaingu -->
		<div class="trinhdotinhoc">
			<blockquote><p>Trình độ tin học: <span style="color:red;"><?php echo $selectthongtinchung[21]; ?></p></blockquote>
		</div> <!-- trinhdotinhoc -->
		<div class="alert alert-info">
			<h4>Phần IV: Quá trình công tác</h4>	
		</div> <!-- title -->
		<div class="quatrinhcongtac"  style="padding-top:20px">
			<table cellpadding="2" cellspacing="0"  width="800px" class="table table-striped table-hover table-bordered">
				<tr class="success">
					<td width="40px" align="center">STT</td>
					<td width="250px" align="center">Thời gian</td>
					<td width="300px" align="center">Nơi công tác</td>
					<td width="200px" align="center">Chức vụ</td>
				</tr>
				<?php $stt2=1; foreach ($selectquatrinhcongtac as $col) { ?>
				<tr>
					<td align="center"><?php echo $stt2; ?></td>
					<td><?php echo $col[2]; ?></td>
					<td><?php echo $col[3]; ?></td>
					<td><?php echo $col[4]; ?></td>
				</tr>
				<?php $stt2++; } ?>
			</table>
		</div> <!-- quatrinhcongtac -->
		<div class="alert alert-info">
			<h4>Phần V: Kinh nghiệm trong Đảm bảo và Kiểm định chất lượng</h4>	
		</div> <!-- title -->
		<div class="thamgiadgn">
			<blockquote><p>Kinh nghiệm tham gia đánh giá ngoài: <span style="color:red;"><?php echo $selectthongtinchung[22]==1 ? 'Đã từng tham gia đoàn ĐGN' :'Chưa từng tham gia đoàn ĐGN'; ?></span></p></blockquote>
		</div>	<!-- thamggiadgn -->
		<div class="bangthamgiadgn ">
			<table  cellpadding="2" cellspacing="0" class="thamgiadgn table table-striped table-hover table-bordered">
				<tr class="success">
					<td align="center">STT</td>
					<td align="center">Đơn vị tổ chức</td>
					<td align="center">Đơn vị được đánh giá</td>
					<td align="center">Vai trò trong đoàn</td>
					<td align="center">Tiêu chuẩn được phân công</td>
				</tr>
				<?php $stt4=1; foreach ($selectthamgiadgn as $col) { ?>
				<tr class="lv1">
				<td align="center"><?php echo $stt4; ?></td>
				<td align="center">
					<?php foreach ($selectcacdonvitochucdgn as $key) {
						if ($col[2]==$key[0]) {
							echo $key[1];
						}
					} ?>
				</td>
				<td align="center">
					<?php echo $col[3]; ?>	
				</td>
				<td align="center">
					<?php 
						switch ($col[4]) {
							case 1:
								echo 'Trưởng đoàn';
								break;
							case 2:
								echo 'Thư ký đoàn';
								break;
							case 3:
								echo 'Thành viên đoàn';
								break;
							case 4:
								echo 'Tổ thư ký';
								break;	
							default:
								echo 'Quan sát viên';
								break;
						}
					 ?>	
				</td>
				<td align="center" >
					<?php echo $col[5]; ?>
				</td>
				</tr>
				<?php $stt4++;} ?>	
			</table>
		</div> <!-- bangthamgiadgn -->
		<div class="kinhnghiemvietbc" style="margin-top:10px;">
			<blockquote><p>Kinh nghiệm viết báo cáo: <span style="color:red;"><?php echo $selectthongtinchung[23]==1 ? 'Đã có kinh nghiệm viết báo cáo TĐG' :'Chưa có kinh nghiệm viết báo cáo TĐG'; ?></p></p></blockquote>
		</div> <!-- kinhnghiemvietbc -->
		<div class="cackhoahocdambaovakiemdinhchatluong">
			<blockquote><p>Các khóa học liên quan đến Đảm bảo và Kiểm định chất lượng mà Thầy/Cô đã từng tham gia</p></blockquote>
			<table cellpadding="2" cellspacing="0" class="table table-striped table-hover table-bordered">
				<tr class="success">
					<td width="40px" align="center">STT</td>
					<td width="300px" align="center">Tên khóa học</td>
					<td width="200px" align="center">Thời gian</td>
					<td width="250px" align="center">Nơi đào tạo</td>
				</tr>
				<?php $stt3=1; foreach ($selectcackhoahoc as $col) { ?>
				<tr>
					<td align="center"><?php echo $stt3; ?></td>
					<td><?php echo $col[2]; ?></td>
					<td><?php echo $col[3]; ?></td>
					<td><?php echo $col[4]; ?></td>
				</tr>
				<?php $stt3++; } ?>
				
			</table>
		</div> <!-- cackhoahocdambaovakiemdinhchatluong -->
		<?php if ($selectthongtinchung[24]!='') { ?>
			<blockquote><p>Những kinh nghiệm khác liên quan đến Đảm bảo và Kiểm định chất lượng giáo dục</p></blockquote>
		<div class="kinhnghiemkhac" style="border:1px solid red; margin-top:10px; padding:10px;">
				<p><?php echo $selectthongtinchung[24]; ?></p>
		</div> <!-- nhungkinhnghiemkhac -->
		<?php } ?>
		<blockquote><p>Nhận xét</p></blockquote>
		<?php 
		$sqlnhanxet = "SELECT * FROM nhanxet WHERE ID = $ketqua";
		$nhanxet = $wpdb->get_results($sqlnhanxet,ARRAY_N);
			if (count($nhanxet)>0) { ?>
			<table cellpadding="2" cellspacing="0" class="table table-striped table-hover table-bordered">
				<tr class="success">
					<td width="40px" align="center">STT</td>
					<td width="300px" align="center">Đơn vị được đánh giá</td>
					<td width="200px" align="center">Thời gian</td>
					<td width="250px" align="center">Nhận xét</td>
				</tr>
				<?php foreach ($nhanxet as $col) { ?>
				<tr>
					<td align="center"><?php echo $stt3; ?></td>
					<td><?php echo $col[2]; ?></td>
					<td><?php echo $col[3]; ?></td>
					<td><?php echo $col[4]; ?></td>
				</tr>
				<?php } ?>
			</table>
		<?php } else echo "<p>Chưa có nhận xét nào</p>";
		 ?>
		</div>
	</div>
	
<?php 
	get_footer();
	} else { ?>
		<script>
		alert("Quyền tài khoản không được phép truy cập");
		</script>
		<a href="<?php echo home_url(); ?>">Quay lại trang chủ</a>
	<?php
	}	
 ?>