<!-- 
	Template Name: Tìm kiếm
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
	$selecttimkiem = $wpdb->get_results("SELECT * FROM timkiem",ARRAY_N);
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
	        <li class="active"><?php  echo '<a href="'.admin_url().'">'.'<i class="fa fa-user"></i> '.$current_user->user_login.'</a>'; ?></li>
	        <li><a href="<?php echo home_url().'/xem-thong-tin' ?>"><i class="fa fa-briefcase"></i> Xem thông tin</a> </li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      	<li><a href="<?php echo admin_url(); ?>"><i class="fa fa-cog"></i> Quản lý tài khoản</a></li>
	        <li><a href="<?php echo wp_logout_url( home_url() ); ?>">Đăng xuất <i class="fa fa-sign-out"></i></a></li>
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
			<form action="<?php echo home_url().'/tim-kiem'; ?>" method="post">
				<div class="col-sm-10 col-sm-offset-1">
					<table cellpadding="2" cellspacing="0" class="search table table-striped table-hover">
						<tr>
							<td colspan="4" align="center">Tìm kiếm thông tin Kiểm định viên</td>
						</tr>
						<tr class="success" style="font-size:15px;">
							<td></td>
							<td align="center">Loại tìm kiếm</td>
							<td align="center">Điều kiện</td>
							<td align="center">Từ khóa</td>
						</tr>
						<tr class="dong">
							<td></td>
							<td align="center">
								<select name="loaitimkiem1" id="doituongtimkiem1" class="form-control">
								<option value="">Chọn loại tìm kiếm</option>
								<?php foreach ($selecttimkiem as $data): ?>
									<option value="<?php echo $data[2];	 ?>"><?php echo $data[1]; ?></option>
								<?php endforeach ?>
								</select>
							</td>
							<td align="center">
								<select name="dieukien1" id="dieukien1" class="form-control">
									<option value="">Chọn điều kiện</option>
								</select>
							</td>
							<td align="center">
								<input type="text" name="tukhoa1" class="form-control">
							</td>
						</tr>
					</table>
				</div>
				<div class="col-sm-3 col-sm-offset-1">
					<input type="hidden" name="count" value="" id="count">
					<input type="button" name="" value="Thêm điều kiện" class="themdieukien btn btn-primary">
					<input type="submit" value="Tìm kiếm" name="submit" class="btn btn-primary">
				</div>
			</form>
			<?php if (isset($_POST['submit'])): ?>
				<?php 
					$count = !empty($_POST['count']) ? $_POST['count'] : 1;
					require_once ("query-join-multi-table.php");
					$primaryData = getPrimaryData($count);
					$tableNamesAndFields = buildTableNamesAndFields($primaryData[0],$primaryData[1]);
					$tables = buildInputTables($tableNamesAndFields);
					// echo $lastTableName;
					// echo "<br>";
					// echo $name;
					// echo "<br>";
					// $table1 = new Table($tableNamesAndFields[0][0],$tableNamesAndFields[1][0]);
					// $table2 = new Table($tableNamesAndFields[0][1],$tableNamesAndFields[1][1]);
					// $tables = array($table1,$table2);
					$query = buildQuery($tables);
					// echo $nameAfterJoin;
					// echo "<br>";
					// echo $countTables;
					$conditions = buildConditions($primaryData[0],$primaryData[2],$primaryData[3],$primaryData[4],$nameAfterJoin,$lastTableName,$countTables);
					// echo "<pre>";
					// print_r($primaryData);
					// print_r($tableNamesAndFields);
					// print_r($tables);
					// print_r($query);
					// print_r($conditions);
					$query = $query.$conditions;
					// echo "</pre>";
					// print_r($query);
					$output = $wpdb->get_results($query,ARRAY_N);
					$soluongketqua = count($output);
					echo "Tìm thấy ".$soluongketqua." kết quả";
					echo '<div class="col-sm-10 col-sm-offset-1">';
					echo "<table class='table table-striped table-hover'>";
					echo "<tr><td>STT</td><td>Họ và tên</td><td></td></tr>";
					$n=1;
					foreach ($output as $key) {
						echo "<tr>
								<td>$n</td>
								<td>".$key[1]." ".$key[2]."</td>
								<td><a href='ket-qua-tim-kiem/?ID=".$key[0]."'>Xem chi tiết</a></td>
							</tr>";
						$n++;
					}
					echo "</table>";
					echo '</div>';
				 ?>
			<?php endif ?>
		</div>
	</div>
	<script src="<?php echo bloginfo('template_directory').'/js/jquery-ui.min.js'; ?>"></script>
	<script >
	$(function(){
		$(".dong").each(function(){
					$(this).find("[id^='doituongtimkiem']").change(function(){
					var dieukien = $(this).val();
					$(this).parent().parent().find("[id^='dieukien']").load("lay-dieu-kien?dieukien="+ dieukien);
						});

				});
	});

	$(function(){
		var count = 2;
		$('.themdieukien').click(function(){
				$(".search tr:last").after(
						'<tr class="dong">'+
						'<td align="center">'+
							'<select name="kethop'+count+'" id="" class="form-control">'+
								'<option value="and">và</option>'+
								'<option value="or">hoặc</option>'+
							'</select>'+
						'</td>'+
						'<td align="center">'+
							'<select name="loaitimkiem'+count+'" id="doituongtimkiem'+count+'" class="form-control">'+
							'<option value="">Chọn loại tìm kiếm</option>'+
							'<?php foreach ($selecttimkiem as $data): ?>'+
								'<option value="<?php echo $data[2];	 ?>"><?php echo $data[1]; ?></option>'+
							'<?php endforeach ?>'+
							'</select>'+
						'</td>'+
						'<td align="center">'+
							'<select name="dieukien'+count+'" id="dieukien'+count+'" class="form-control">'+
								'<option value="">Chọn điều kiện</option>'+
							'</select>'+
						'</td>'+
						'<td align="center">'+
							'<input type="text" name="tukhoa'+count+'" class="form-control">'+
						'</td>'+
					'</tr>'
					);
				$('#count').val(count);
				count++;
				$(".dong").each(function(){
					$(this).find("[id^='doituongtimkiem']").change(function(){
					var dieukien = $(this).val();
					$(this).parent().parent().find("[id^='dieukien']").load("lay-dieu-kien?dieukien="+ dieukien);
						});

				});
			});
	});

	</script>

<?php 
	get_footer();
	} else { 
	get_header();
	$alert = "Quyền tài khoản không được phép sử dụng!";
	$alert.= '<br><a href='.home_url().'/xem-thong-tin><span style="color:white"><i class="fa fa-arrow-left"></i> Quay lại</span></a>'; ?>
	<?php get_footer(); } ?>
<?php if (!empty($alert)) { ?>
<script type="text/javascript">
		function show_error(type,content) {
		$("#error_message .modal-header h4").html(type);
		$("#error_message .modal-body ul").append('<li><strong>'+content+'</strong></li>');
		$("#error_message").modal('show');
		}
		show_error('Thông báo','<?php echo $alert; ?>');
</script>
<?php } ?>