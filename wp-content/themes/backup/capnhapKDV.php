<!-- 
	Template Name: Cập nhật KĐV
 -->
 <?php
 	session_start();
 	$user = wp_get_current_user();
	$allowed_roles = array('editor', 'administrator');
 	if ($_GET['capnhat']==thatbai) {
	$alert='Cập nhật dữ liệu thất bại';
    }
    if (!empty($alert)) {
	echo '<script>alert("' . $alert . '");</script>';
	}
  	if (!is_user_logged_in()) {
 		wp_redirect(wp_login_url());
 	} else {
 	get_header();
	global $wpdb;
	$get_ID = $_GET['ID_KDV'];
	$selectthongtinchung= $wpdb->get_row("SELECT * FROM thongtinchung WHERE ID = $get_ID",ARRAY_N);
	$selecttrinhdongoaingu = $wpdb->get_results("SELECT * FROM trinhdongoaingu WHERE ID = $get_ID",ARRAY_N);
	$counttrinhdongoaingu = $wpdb->num_rows;
	$selectquatrinhcongtac = $wpdb->get_results("SELECT * FROM quatrinhcongtac WHERE ID = $get_ID",ARRAY_N);
	$countquatrinhcongtac = $wpdb->num_rows;
	$selectcackhoahoc = $wpdb->get_results("SELECT * FROM cackhoahoc WHERE ID = $get_ID",ARRAY_N);
	$countkhoahoc= $wpdb->num_rows;
	$selectthamgiadgn = $wpdb->get_results("SELECT * FROM thamgiadgn WHERE ID = $get_ID",ARRAY_N);
	$countthamgiadgn = $wpdb->num_rows;
	$selectcacdonvitochucdgn = $wpdb->get_results("SELECT * FROM cacdonvitochucdgn",ARRAY_N);
	$selecttrinhdothacsi = $wpdb->get_results("SELECT * FROM trinhdothacsi WHERE ID = $get_ID",ARRAY_N);
	$counttrinhdothacsi = $wpdb->num_rows;
	$selecttrinhdotiensi = $wpdb->get_results("SELECT * FROM trinhdotiensi WHERE ID = $get_ID",ARRAY_N);
	$counttrinhdotiensi = $wpdb->num_rows;
	$selectnhanxet = $wpdb->get_results("SELECT * FROM nhanxet WHERE ID = $get_ID",ARRAY_N);
	$countnhanxet = $wpdb->num_rows;
	$current_user = wp_get_current_user();

 ?>
 <?php 
 	if (isset($_POST['capnhat_KDV'])&&$_POST['capcha_KDV'] == $_SESSION['security_code']) { 
	 		// &&$_POST['capcha'] == $_SESSION['security_code']
	 		// echo "<script>alert('good');</script>";
	 		$noicongtac = $_POST['noicongtac'];
	 		// echo $noicongtac;
	 		$thamniencongtac = $_POST['thamniencongtac'];
	 		$diachilienhe = $_POST['diachilienhe'];
	 		$dienthoaicodinh = $_POST['dienthoaicodinh'];
	 		$dienthoaididong = $_POST['dienthoaididong'];
	 		$emaillienhe = $_POST['emaillienhe'];
	 		$fax = $_POST['fax'];
	 		$trinhdotinhoc = $_POST['trinhdotinhoc'];
	 		$kinhnghiemkhac = $_POST['kinhnghiemkhac'];
	 		$linhvucchuyenmon = $_POST['linhvucchuyenmon'];
	 		$wpdb->update( 
				'thongtinchung', 
				array( 
					'noicongtac' => $noicongtac,	// string
					'thamniencongtac' => $thamniencongtac,
					'diachilienhe' => $diachilienhe,
					'dienthoaicodinh' => $dienthoaicodinh,
					'dienthoaididong' =>$dienthoaididong,
					'emaillienhe' => $emaillienhe,
					'fax' =>$fax,
					'trinhdotinhoc' => $trinhdotinhoc,
					'kinhnghiemkhac' => $kinhnghiemkhac,
					'linhvucchuyenmon' => $linhvucchuyenmon
				), 
				array( 'ID' => $get_ID ), 
				array( 
					'%s',	// value1
					'%s',	// value2
					'%s',
					'%s',
					'%s',
					'%s',
					'%s',
					'%s',
					'%s',
					'%s'
				),
				array( '%d' ) 
			);
 	
		 	//////Nhap du lieu vao bang cackhoahoc	
			$count2 = !empty($_POST['hidden2']) ? $_POST['hidden2'] : 0;
			for ($j=$countkhoahoc; $j <= $count2 ; $j++) {

			$khoahoc ='khoahoc'.$j; 
			$$khoahoc = !empty($_POST[$khoahoc]) ? $_POST[$khoahoc]: null;
			$thoigiankh ='thoigiankh'.$j;
			$$thoigiankh = !empty($_POST[$thoigiankh]) ? $_POST[$thoigiankh]:null;
			$noidaotao ='noidaotao'.$j;
			$$noidaotao = !empty($_POST[$noidaotao]) ? $_POST[$noidaotao] :null;
			$checkkhoahoc=false;
			if ($$khoahoc!=null&&$$thoigiankh!=null&&$$noidaotao!=null) {
				$insert_cackhoahoc = $wpdb->insert( 'cackhoahoc',
				array(
					'ID'=>$get_ID,
					'tenkhoahoc'=>$$khoahoc,
					'thoigian'=>$$thoigiankh,
					'noidaotao'=>$$noidaotao
					),
				array( 
					'%d',
					'%s',
					'%s',
					'%s'
					)  
				);
			}

			}

			//////Nhap du lieu vao bang thamgiadgn
			$countthamgiadgn_insert = !empty($_POST['countthamgiadgn']) ? $_POST['countthamgiadgn'] : 0;
			$countthamgiadgn++;
			for ($l=$countthamgiadgn; $l <= $countthamgiadgn_insert ; $l++) {
				$donvitochuc ='donvitochuc'.$l;
				$$donvitochuc = !empty($_POST[$donvitochuc])? $_POST[$donvitochuc]: null;
				$donviduocdanhgia ='donviduocdanhgia'.$l;
				$$donviduocdanhgia = !empty($_POST[$donviduocdanhgia]) ? $_POST[$donviduocdanhgia]: null;
				$vaitrotrongdoan ='vaitrotrongdoan'.$l;
				$$vaitrotrongdoan = !empty($_POST[$vaitrotrongdoan])? $_POST[$vaitrotrongdoan]: null;
				$tieuchuanduocphancong="";
				$rowdgnname='row'.$l.'tc';
				$rowdgn= !empty($_POST[$rowdgnname]) ? $_POST[$rowdgnname] : array();
				foreach ($rowdgn as $value) {
					$tieuchuanduocphancong=$tieuchuanduocphancong.$value.",";
				}
				$tieuchuanduocphancong=substr($tieuchuanduocphancong,0,-1);
				if ($$donviduocdanhgia!=null) {
					$insert_thamgiadgn = $wpdb->insert( 'thamgiadgn',
					array(
						'ID'=>$get_ID,
						'donvitochuc'=>$$donvitochuc,
						'donviduocdanhgia'=>$$donviduocdanhgia,
						'vaitrotrongdoan'=>$$vaitrotrongdoan,
						'tieuchuanduocphancong'=>$tieuchuanduocphancong
						),
					array( 
						'%d',
						'%d',
						'%s',
						'%d',
						'%s'
						)  
					);
				}
					
			}
			//Nhap du lieu vao bang trinhdothacsi
			$counttrinhdothacsi_insert = !empty($_POST['counttrinhdothacsi']) ? $_POST['counttrinhdothacsi'] : 0;
			$counttrinhdothacsi++;
			for ($l=$counttrinhdothacsi; $l <= $counttrinhdothacsi_insert ; $l++) {
				$chuyennganhthacsi ='chuyennganhthacsi'.$l;
				$chuyennganhthacsi = !empty($_POST[$chuyennganhthacsi])? $_POST[$chuyennganhthacsi]: null;
				$noidaotaothacsi ='noidaotaothacsi'.$l;
				$noidaotaothacsi = !empty($_POST[$noidaotaothacsi]) ? $_POST[$noidaotaothacsi]: null;
				$namcapbangthacsi ='namcapbangthacsi'.$l;
				$namcapbangthacsi = !empty($_POST[$namcapbangthacsi])? $_POST[$namcapbangthacsi]: null;
				if ($chuyennganhthacsi!=null || $noidaotaothacsi !=null || $namcapbangthacsi !=null ) {
					$insert_trinhdothacsi = $wpdb->insert( 'trinhdothacsi',
					array(
						'ID'=>$get_ID,
						'chuyennganhthacsi'=>$chuyennganhthacsi,
						'noidaotaothacsi'=>$noidaotaothacsi,
						'namcapbangthacsi'=>$namcapbangthacsi,
						),
					array( 
						'%d',
						'%s',
						'%s',
						'%s'
						)  
					);
				}
					
			}	
			//Nhap du lieu vao bang trinhdotiensi
			$counttrinhdotiensi_insert = !empty($_POST['counttrinhdotiensi']) ? $_POST['counttrinhdotiensi'] : 0;
			$counttrinhdotiensi++;
			for ($l=$counttrinhdotiensi; $l <= $counttrinhdotiensi_insert ; $l++) {
				$chuyennganhtiensi ='chuyennganhtiensi'.$l;
				$chuyennganhtiensi = !empty($_POST[$chuyennganhtiensi])? $_POST[$chuyennganhtiensi]: null;
				$noidaotaotiensi ='noidaotaotiensi'.$l;
				$noidaotaotiensi = !empty($_POST[$noidaotaotiensi]) ? $_POST[$noidaotaotiensi]: null;
				$namcapbangtiensi ='namcapbangtiensi'.$l;
				$namcapbangtiensi = !empty($_POST[$namcapbangtiensi])? $_POST[$namcapbangtiensi]: null;
				if ($chuyennganhtiensi!=null || $noidaotaotiensi !=null || $namcapbangtiensi !=null ) {
					$insert_trinhdotiensi = $wpdb->insert( 'trinhdotiensi',
					array(
						'ID'=>$get_ID,
						'chuyennganhtiensi'=>$chuyennganhtiensi,
						'noidaotaotiensi'=>$noidaotaotiensi,
						'namcapbangtiensi'=>$namcapbangtiensi,
						),
					array( 
						'%d',
						'%s',
						'%s',
						'%s'
						)  
					);
				}
					
			}

			//////Nhap du lieu vao bang quatrinhcongtac
			$count1 = !empty($_POST['countquatrinhcongtac']) ? $_POST['countquatrinhcongtac'] : 0;
			$countquatrinhcongtac++;
			for ($i=$countquatrinhcongtac; $i <= $count1 ; $i++) {
				$thoigianct ='thoigianct'.$i;
				$thoigianct = !empty($_POST[$thoigianct])? $_POST[$thoigianct]: null;
				$noicongtac ='noicongtac'.$i;
				$noicongtac = !empty($_POST[$noicongtac]) ? $_POST[$noicongtac]: null;
				$chucvu ='chucvu'.$i;
				$chucvu = !empty($_POST[$chucvu])? $_POST[$chucvu]: null;
				if ($thoigianct!=null && $noicongtac!=null && $chucvu!=null) {
					$insert_quatrinhcongtac = $wpdb->insert( 'quatrinhcongtac',
					array(
						'ID'=>$get_ID,
						'thoigian'=>$thoigianct,
						'donvicongtac'=>$noicongtac,
						'chucvu'=>$chucvu
						),
					array(
						'%d',
						'%s',
						'%s',
						'%s'
						)  
					);
				}		
			}
			//////Nhap du lieu vao bang nhanxet
			$count1 = !empty($_POST['hiddennhanxet']) ? $_POST['hiddennhanxet'] : 0;
			for ($i=$countnhanxet; $i <= $count1 ; $i++) {
				$donviduocdanhgia ='donviduocdanhgia'.$i;
				$$donviduocdanhgia = !empty($_POST[$donviduocdanhgia])? $_POST[$donviduocdanhgia]: null; //echo $$thoigian;
				$thoigiandanhgia ='thoigiandanhgia'.$i;
				$$thoigiandanhgia = !empty($_POST[$thoigiandanhgia]) ? $_POST[$thoigiandanhgia]: null; //echo $$noicongtac;
				$nhanxet ='nhanxet'.$i;
				$$nhanxet = !empty($_POST[$nhanxet])? $_POST[$nhanxet]: null; //echo $$chucvu;
				if ($$donviduocdanhgia!=null&&$$thoigiandanhgia!=null&&$$nhanxet!=null) {
					$insert_quatrinhcongtac = $wpdb->insert( 'nhanxet',
					array(
						'ID'=>$get_ID,
						'donviduocdanhgia'=>$$donviduocdanhgia,
						'thoigian'=>$$thoigiandanhgia,
						'nhanxet'=>$$nhanxet
						),
					array(
						'%d', 
						'%s',
						'%s',
						'%s'
						)  
					);
				}		
			}
			//Nhap du lieu trinhdongoaingu
			$count4 = !empty($_POST['hidden4'])?$_POST['hidden4']:0;
			for ($j=$counttrinhdongoaingu; $j <= $count4 ; $j++) {
			$ngoaingu ='ngoaingu'.$j;
			$$ngoaingu = $_POST[$ngoaingu];
			$ngoaingukhac ='ngoaingukhac'.$j;
			$$ngoaingukhac = $_POST[$ngoaingukhac];
			$nghe ='nghe'.$j;
			$$nghe = $_POST[$nghe];
			$noi ='noi'.$j;
			$$noi = $_POST[$noi]; 
			$doc ='doc'.$j;
			$$doc = $_POST[$doc];
			$viet ='viet'.$j;
			$$viet = $_POST[$viet];
			if ( ($$ngoaingu == 1) || ($$ngoaingu == 2) || ($$ngoaingu == 3) || ($$ngoaingu == 4) || isset($_POST[$ngoaingukhac])) {
						if ($$ngoaingu!=5) {
					// $sql2 = "INSERT INTO trinhdongoaingu (ID,tenngoaingu,nghe,noi,doc,viet)
					// VALUES (100,'${$ngoaingu}',${$nghe},${$noi},${$doc},${$viet})";
						$insert_trinhdongoaingu = $wpdb->insert( 'trinhdongoaingu',
							array(
								'ID'=>$get_ID,
								'tenngoaingu'=>$$ngoaingu,
								'nghe'=>$$nghe,
								'noi'=>$$noi,
								'doc'=>$$doc,
								'viet'=>$$viet
								),
							array( 
								'%d',
								'%s',
								'%d',
								'%d',
								'%d',
								'%d'
								)  
							);

					} else {
						// $sql2 = "INSERT INTO trinhdongoaingu (ID,tenngoaingu,nghe,noi,doc,viet)
						// VALUES (100,'${$ngoaingukhac}',${$nghe},${$noi},${$doc},${$viet})";
						$insert_trinhdongoaingu = $wpdb->insert( 'trinhdongoaingu',
							array(
							'ID'=>$get_ID,
							'tenngoaingu'=>$$ngoaingukhac,
							'nghe'=>$$nghe,
							'noi'=>$$noi,
							'doc'=>$$doc,
							'viet'=>$$viet
							),
							array( 
							'%d',
							'%s',
							'%d',
							'%d',
							'%d',
							'%d'
							)  
						);
						} //end else
			}
			}//end for ?>
			<div class="container-fluid">
					<div class="headerimg">
						<img src="<?php echo bloginfo('template_directory').'/img/logo.jpg'; ?>" alt="" class="img-responsive" style="margin:10px auto">
					</div>
					<div class="headertitle alert-warning">
						<h1>THÔNG TIN KIỂM ĐỊNH VIÊN</h1>
					</div>
				</div>
			</div>
			
				<div class="alert alert-success text-center">
					<a href="<?php echo home_url().'/ket-qua-tim-kiem/?ID='.$get_ID; ?>"> Xem thông tin đã cập nhật</a>
				</div>
			
<?php

			// echo '<a href="'.home_url().'/ket-qua-tim-kiem/?ID='.$get_ID.'">Xem lại thông tin</a>';
			die;

	}
	
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
	        <?php if( array_intersect($allowed_roles, $user->roles ) ): ?>
                <li><a href="<?php echo home_url() . '/tim-kiem'; ?>"><i class="fa fa-search"></i> Tìm kiếm thông tin KĐV</a></li>
            <?php endif; ?>
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
	</div>
	<form class="form-inline" action="" method="post" accept-charset="utf-8" name="formkdv" id="formkdv" onSubmit="">	
	<div class="container">

		<div class="login" style="margin:10px 40px 0 40px">
			<p>Trung tâm Kiểm định chất lượng giáo dục ĐHQG-HCM xin chân thành cảm ơn quý thầy/cô đã dành thời gian cung cấp thông tin đến Trung tâm</p>
		</div>
		<div class="header container-fluid">
		<div class="content">

			<div class="alert-info alert">
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
					<blockquote><p>Nơi công tác: <input class="form-control" type="text" name="noicongtac" value="<?php echo $selectthongtinchung[6]; ?>" placeholder=""></p></blockquote>
				</div> <!-- noicongtac -->
				<div class="thamniencongtac">
					<blockquote><p>Thâm niên công tác: <input class="form-control" type="text" name="thamniencongtac" value="<?php echo $selectthongtinchung[7]; ?>" placeholder=""></p></blockquote>
				</div> <!-- thamniencongtac -->
			<div class="alert alert-info">
				<h4>Phần II: Thông tin liên lạc</h4>
			</div> <!-- title -->
				<div class="diachilienhe">
					<blockquote><p>Địa chỉ liên hệ: <input class="form-control" type="text" name="diachilienhe" value="<?php echo $selectthongtinchung[8]; ?>" placeholder=""></p></blockquote>
				</div> <!-- diachilienhe -->
				<div class="dienthoaicodinh">
					<blockquote><p>Điện thoại cố định: <input  class="form-control" type="text" name="dienthoaicodinh" value="<?php echo $selectthongtinchung[9]; ?>" placeholder=""></p></blockquote>
				</div> <!-- dienthoaicodinh -->
				<div class="dienthoaididong">
					<blockquote><p>Điện thoại di động: <input class="form-control" type="text" name="dienthoaididong" value="<?php echo $selectthongtinchung[10]; ?>" placeholder=""></p></blockquote>
				</div> <!-- dienthoadidong -->
				<div class="email">
					<blockquote><p>Email liên hệ: <input class="form-control" type="text" name="emaillienhe" value="<?php echo $selectthongtinchung[11]; ?>" placeholder=""></p></blockquote>
				</div> <!-- email -->
					<div class="fax">
						<blockquote><p>Fax: <input class="form-control" type="text" name="fax" value="<?php echo $selectthongtinchung[12]; ?>" placeholder=""></p></blockquote>
					</div> <!-- fax -->
			<div class="alert alert-info">
				<h4>Phần III: Trình độ chuyên môn, nghiệp vụ</h4>
			</div> <!-- title -->
				<div class="hochamhocvi">
					<blockquote><p>Chức danh: <span style="color:red;"><?php echo $selectthongtinchung[13]; ?></span></p></blockquote>
					<blockquote><p>Học vị: <span style="color:red;"><?php echo $selectthongtinchung[14]; ?></span></p></blockquote>
				</div> <!-- hochamhocvi -->
				<div class="linhvucchuyenmon">
					<?php 
						$datalinhvucchuyenmon = $wpdb->get_results("SELECT * from danhmucmanganh",ARRAY_N);
					?>
					<blockquote>
						Lĩnh vực chuyên môn <select name="linhvucchuyenmon" class="form-control" id="linhvucchuyenmon">
							<?php
							foreach ($datalinhvucchuyenmon as $key ) { ?>
								<option value="<?php echo $key[1]; ?>" <?php if ($key[1]==$selectthongtinchung[25]) { echo 'selected="selected"';} ?> ><?php echo $key[1]; ?></option>
							<?php } ?>
					 	</select>
					 </blockquote>
				</div> <!-- end .linhvucchuyenmon -->
				<div class="chuyennganhdaotaobacthacsi">
					<blockquote><p>Chuyên ngành đào tạo bậc thạc sĩ:</p></blockquote>

					<table class="table table-striped table-hover trinhdothacsi">
						<tr class="success">
							<td align="center">STT</td>
							<td align="center">Chuyên ngành đào tạo thạc sĩ</td>
							<td align="center">Nơi đào tạo thạc sĩ</td>
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
					<button class="themtrinhdothacsi btn btn-primary" type="button" id="themtrinhdothacsi">Thêm</button>
					<input type="hidden" name="counttrinhdothacsi" id="counttrinhdothacsi" value="<?php echo $counttrinhdothacsi; ?>">
					
				</div> <!-- chuyennganhdaotaobacthacsi -->
				<div class="chuyennganhdaotaobactiensi">
					<blockquote><p>Chuyên ngành đào tạo bậc tiến sĩ:</p></blockquote>
					<table class="table table-striped table-hover trinhdotiensi">
						<tr class="success">
							<td align="center">STT</td>
							<td align="center">Chuyên ngành đào tạo tiến sĩ</td>
							<td align="center">Nơi đào tạo tiến sĩ</td>
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
					<button class="themtrinhdotiensi btn btn-primary" type="button" id="themtrinhdotiensi" >Thêm</button>
					<input type="hidden" name="counttrinhdotiensi" id="counttrinhdotiensi" value="<?php echo $counttrinhdotiensi; ?>">
				</div>
				
				<?php if ($selectthongtinchung[15]==1) {?>
					<div class="chungchidaotaokiemdinhvien">
					<blockquote><p>Chứng chỉ đào tạo Kiểm định viên: <span style="color:red;">Số thẻ: <?php echo $selectthongtinchung[16]; ?> Ngày cấp: <?php echo $selectthongtinchung[17]!='0000-00-00'? date("d-m-Y", strtotime($selectthongtinchung[17])) :''; ?></span></p></blockquote>
					</div> <!-- cckiemdinhvien -->
				<?php } ?>
				<?php if ($selectthongtinchung[18]==1) {?>
				<div class="thekiemdinhvien">
					<blockquote><p>Thẻ Kiểm định viên: <span style="color:red;">Số thẻ: <?php echo $selectthongtinchung[19]; ?> Ngày cấp: <?php echo $selectthongtinchung[20]!='0000-00-00'? date("d-m-Y", strtotime($selectthongtinchung[20])) :''; ?> </span></p></blockquote>
				</div> <!-- thekiemdinhvien -->
				<?php } ?>
				<div class="trinhdongoaingu">
					<blockquote><p>Trình độ ngoại ngữ</p></blockquote>
					<table class="ngoaingu table table-striped table-hover"  cellpadding="2" cellspacing="0">
							
							<tr class="success" style="font-weight:bold; font-size:18px;">
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
						<button id="buttonngoaingu" class="btn btn-primary" type="button">Thêm</button>
						<input type="hidden" id="counttrinhdongoaingu" name="" value="<?php echo $counttrinhdongoaingu; ?>">
				</div> <!-- trinhdongoaingu -->
				<div class="trinhdotinhoc">
					<blockquote><p>Trình độ tin học: <span style="color:red;"><input class="form-control" type="text" name="trinhdotinhoc" value="<?php echo $selectthongtinchung[21]; ?>" placeholder=""></span></p></blockquote>
				</div> <!-- trinhdotinhoc -->
			<div class="alert alert-info">
				<h4>Phần IV: Quá trình công tác</h4>	
			</div> <!-- title -->
				<div class="quatrinhcongtac"  style="padding-top:20px">
					<table cellpadding="2" cellspacing="0"  width="800px" class="table table-striped table-hover">
						<tr class="success" style="font-weight:bold; font-size:18px;">
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
					<button class="themquatrinhcongtac btn btn-primary" type="button" >Thêm</button>
					<input type="hidden" id="countquatrinhcongtac" name="countquatrinhcongtac" value="<?php echo $countquatrinhcongtac; ?>">
				</div> <!-- quatrinhcongtac -->
			<div class="alert alert-info" style="margin-top:20px">
				<h4>Phần V: Kinh nghiệm trong Đảm bảo và Kiểm định chất lượng</h4>			
			</div> <!-- title -->
				<div class="thamgiadgn">
					<blockquote><p>Kinh nghiệm tham gia đánh giá ngoài: <span style="color:red;"><?php echo $selectthongtinchung[22]==1 ? 'Đã từng tham gia đoàn ĐGN' :'Chưa từng tham gia đoàn ĐGN'; ?></span></p></blockquote>		
				</div>	<!-- thamggiadgn -->
				<div class="bangthamgiadgn ">
					<table  cellpadding="2" cellspacing="0" class="thamgiadgn table table-striped table-hover">
						<tr class="success" style="font-weight:bold; font-size:18px;">
							<td align="center">STT</td>
							<td align="center">Đơn vị tổ chức</td>
							<td align="center">Đơn vị được đánh giá</td>
							<td align="center">Vai trò trong đoàn</td>
							<td align="center">Tiêu chuẩn được phân công</td>
						</tr>
						<?php if ($countthamgiadgn == 0): ?>
							<tr class="lv1">
								<td align="center">1</td>
								<td align="center">
									<select name="donvitochuc1" class="donvitochuc1 form-control" >
												<?php
													$kq_select_don_vi_to_chuc = $wpdb->get_results( 'SELECT * FROM cacdonvitochucdgn',ARRAY_N);
													foreach ($kq_select_don_vi_to_chuc as $row) {
														echo '<option value="'. $row[0] . '">' .$row[1] . '</option>'; 
													}
												 ?>
												
												<!-- <option value="4">Đơn vị khác</option> -->
									</select>
								</td>
								<td align="center">
									<input type="text" name="donviduocdanhgia1" value="" placeholder="" class="form-control">		
								</td>
								<td align="center">
									<select name="vaitrotrongdoan1" class="vaitrotrongdoan1 form-control" >
												<option value="1">Trưởng đoàn</option>
												<option value="2">Thư ký Đoàn</option>
												<option value="3">Thành viên Đoàn</option>
												<option value="4">Tổ thư ký</option>
												<option value="5">Quan sát viên</option>
									</select>	
								</td>
								<td align="center" >
									<table>
											<tr>
												<td>1</td>
												<td>2</td>
												<td>3</td>
												<td>4</td>
												<td>5</td>
												<td>6</td>
												<td>7</td>
												<td>8</td>
												<td>9</td>
												<td>10</td>
											</tr>
											<tr>
												<td><input type="checkbox" name="row1tc[]" value="1"></td>
												<td><input type="checkbox" name="row1tc[]" value="2"></td>
												<td><input type="checkbox" name="row1tc[]" value="3"></td>
												<td><input type="checkbox" name="row1tc[]" value="4"></td>
												<td><input type="checkbox" name="row1tc[]" value="5"></td>
												<td><input type="checkbox" name="row1tc[]" value="6"></td>
												<td><input type="checkbox" name="row1tc[]" value="7"></td>
												<td><input type="checkbox" name="row1tc[]" value="8"></td>
												<td><input type="checkbox" name="row1tc[]" value="9"></td>
												<td><input type="checkbox" name="row1tc[]" value="10"></td>
											</tr>
									</table>
								</td>
							</tr>
						<?php endif ?>
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
				<button id="button3" class ="btn btn-primary" type="button" >Thêm</button>
				<input type="hidden" id="countthamgiadgn" name="countthamgiadgn" value="<?php echo $countthamgiadgn; ?>">
				</div> <!-- bangthamgiadgn -->
				<div class="kinhnghiemvietbc" style="margin-top:10px;">
					<blockquote><p>Kinh nghiệm viết báo cáo: <span style="color:red;"><?php echo $selectthongtinchung[23]==1 ? 'Đã có kinh nghiệm viết báo cáo TĐG' :'Chưa có kinh nghiệm viết báo cáo TĐG'; ?></p></p></blockquote>	
				</div> <!-- kinhnghiemvietbc -->
				<div class="cackhoahocdambaovakiemdinhchatluong">
					<blockquote><p>Các khóa học liên quan đến Đảm bảo và Kiểm định chất lượng mà Thầy/Cô đã từng tham gia</p></blockquote>
					<table cellpadding="2" cellspacing="0"  width="800px" class="table table-striped table-hover">
						<tr class="success" style="font-weight:bold; font-size:18px;">
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
					<button class="themkhoahoc btn btn-primary" type="button" >Thêm</button>
					<input type="hidden" id="countkhoahoc" name="" value="<?php echo $countkhoahoc; ?>">
				</div> <!-- cackhoahocdambaovakiemdinhchatluong -->
				<?php if ($selectthongtinchung[24]!='') { ?>
					<blockquote><p>Những kinh nghiệm khác liên quan đến Đảm bảo và Kiểm định chất lượng giáo dục</p></blockquote>
				<div class="kinhnghiemkhac" style="margin-top:10px;">
					<textarea name="kinhnghiemkhac" rows="4" style="width:100%"><?php echo $selectthongtinchung[24]; ?></textarea>
				</div> <!-- nhungkinhnghiemkhac -->
				<?php } ?>
				<br>
				<div class="alert alert-info" style="margin-top:20px">
				Phần VI: Nhận xét			
				</div> <!-- title -->
				<div class="nhanxet">
					<table cellpadding="2" cellspacing="0"  width="800px" class="table table-striped table-hover">
						<tr class="success" style="font-weight:bold; font-size:18px;">
							<td width="40px" align="center">STT</td>
							<td width="250px" align="center">Đơn vị được đánh giá</td>
							<td width="300px" align="center">Thời gian</td>
							<td width="200px" align="center">Nhận xét</td>
						</tr>
						<?php $stt2=1; foreach ($selectnhanxet as $col) { ?>
						<tr>
							<td align="center"><?php echo $stt2; ?></td>
							<td><?php echo $col[2]; ?></td>
							<td><?php echo $col[3]; ?></td>
							<td><?php echo $col[4]; ?></td>
						</tr>
						<?php $stt2++; } ?>
					</table>
					<button class="themnhanxet btn btn-primary" type="button" >Thêm</button>
					<input type="hidden" id="countnhanxet" name="" value="<?php echo $countnhanxet; ?>">
				</div> <!-- nhanxet -->
				<div class="capcha"><label for="captcha">Captcha (*)</label>
			      	<input name="capcha_KDV" type="text" id="capcha" value="<?php  echo $_POST["capcha"]; ?>"  maxlength="10" /><font color="#FF0000">
			      				     	<img src="<?php echo bloginfo('template_directory').'/random_image.php'; ?>" />
			      				     	<span id="capcha_error"> </span> </font>
			     </div> <!-- capcha -->
			      <div class="capnhat">
			  
				<br>
					<input type="submit" value="Cập nhật" name="capnhat_KDV" id="capnhat" class="btn btn-primary">
				</div>
				<input type="hidden" name="hidden1" id="hidden1" />
				<!-- Dung de lay so luong dong cho bang cac khoa hoc -->
				<input type="hidden" name="hidden2" id="hidden2" />
				<input type="hidden" name="hidden3" id="hidden3" />
				<input type="hidden" name="hidden4" id="hidden4" />
				<input type="hidden" name="hidden5" id="hidden5" />
				<input type="hidden" name="hiddennhanxet" id="hiddennhanxet" />
				<input type="hidden" name="" id="security_code" value="<?php echo $_SESSION['security_code']; ?>">
		</div>
		</form>
	</div> <!-- container --><script type="text/javascript" src="<?php echo bloginfo('template_directory').'/js/jquery-1.11.2.min.js'; ?>"></script>
						<script src="<?php echo bloginfo('template_directory').'/js/jquery-ui.min.js'; ?>"></script>
						<script src="<?php echo bloginfo('template_directory').'/js/bootstrap.min.js'; ?>"></script>
					  		<script  type="text/javascript">

							$(function(){
							$('input[name=thekdv]').change(function(){
					  				var thekdv_value= $(this).val();
					  				if (thekdv_value==1)
					  					 {$("input[name=sothekdv]").prop('disabled', false); $("input[name=ngaycapthe]").prop('disabled', false);} 
					  					else {$("input[name=sothekdv]").prop('disabled', true); $("input[name=ngaycapthe]").prop('disabled', true); };
					  				
					  		});
					  		$('input[name=cckdv]').change(function(){
					  				var cckdv_value= $(this).val();
					  				if (cckdv_value==1)
					  					 {$("input[name=sochungchi]").prop('disabled', false); $("input[name=ngaycapcc]").prop('disabled', false);} 
					  					else {$("input[name=sochungchi]").prop('disabled', true); $("input[name=ngaycapcc]").prop('disabled', true); };

					  		});
					  		$('input[name=thamgiadgn]').change(function(){
					  				var thamgiadgn_value= $(this).val();
					  				if (thamgiadgn_value==1)
					  					 {
					  					 	$(".bangthamgiadgn").show();	
					  					 }
					  					else {
					  						$(".bangthamgiadgn").hide();	
					  					}

					  		});
					  		});
					//Them qua trinh cong tac
							$(function(){
								var count = $('#countquatrinhcongtac').val();
								count++;
								$(".themquatrinhcongtac").click(function(){
					   				$(".quatrinhcongtac tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
					   					'<td><input class="form-control" type="text" name="thoigianct'+count+'" placeholder="   Thời gian"  ></td>'+
					   					'<td><input class="form-control" type="text" name="noicongtac'+count+'"  placeholder="   Nơi công tác"  ></td>'+
										'<td><input class="form-control" type="text" name="chucvu'+count+'" placeholder="   Chức vụ"  ></td>'+
					   					'</tr>');
					   				$("#countquatrinhcongtac").val(count);
					   				count++;
					   			});

							});
					//Them nhan xet
							$(function(){
								var count = $('#countnhanxet').val();
								count++;
								$(".themnhanxet").click(function(){
					   				$(".nhanxet tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
					   					'<td><input class="form-control" type="text" name="donviduocdanhgia'+count+'" placeholder="   Đơn vị được đánh giá"  ></td>'+
					   					'<td><input class="form-control" type="text" name="thoigiandanhgia'+count+'"  placeholder="   Thời gian"  ></td>'+
										'<td><input class="form-control" type="text" name="nhanxet'+count+'" placeholder="   Nhận xét"  ></td>'+
					   					'</tr>');
					   				$("#hiddennhanxet").val(count);
					   				count++;
					   			});

							});

							//Them khoa hoc
							$(function(){
								var count = $('#countkhoahoc').val();
								count++;
								$(".themkhoahoc").click(function(){
					   				$(".cackhoahocdambaovakiemdinhchatluong tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
					   					'<td><input class="form-control" type="text" name="khoahoc'+count+'" placeholder="   Nhập tên khóa học" ></td>'+
					   					'<td><input class="form-control" type="text" name="thoigiankh'+count+'"  placeholder="   Thời gian"  ></td>'+
										'<td><input class="form-control" type="text" name="noidaotao'+count+'" placeholder="   Nơi đào tạo"  ></td>'+
					   					'</tr>');
					   				$("#hidden2").val(count);
					   				count++;
					   			});

							});		 



							  $(function() {
							   $(".datepicker").datepicker({yearRange:'1930:2015',
								numberOfMonths: 1,  dateFormat: 'dd-mm-yy',
								monthNames: ['Một','Hai','Ba','Tư','Năm','Sáu','Bảy','Tám','Chín', 
								'Mười','Mười một','Mười hai'] ,
								monthNamesShort: ['Tháng 1','Tháng 2','Tháng 3','Tháng 4','Tháng 5',
								'Tháng 6','Tháng 7','Tháng 8','Tháng 9','Tháng 10','Tháng 11','Tháng 12'] ,
								dayNames: ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm',
								 'Thứ sáu', 'Thứ bảy'],
								dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
								// showOn: 'both',
								changeMonth: true , changeYear: true,
								currentText: 'Hôm nay', weekHeader: 'Tuần'
								});
								});

							  $(function(){
								//var count=2;
								var count = $('#counttrinhdongoaingu').val();
								count++;	
								$("#buttonngoaingu").click(function(){
					   				$(".ngoaingu tr:last").after(
					   					'<tr>'+
					   									'<td align="center">'+
					   										count+
					   									'</td>'+
														'<td align="center">'+
															'<select name="ngoaingu' + count + '" class="ngoaingu' + count + ' form-control" >'+
																'<option value="1">Tiếng Anh</option>'+
																'<option value="2">Tiếng Pháp</option>'+
																'<option value="3">Tiếng Nga</option>'+
																'<option value="4">Tiếng Đức</option>'+
																'<option value="5" >Ngoại ngữ khác</option>'+
															'</select>'+
															'<input  type="text"  name="ngoaingukhac' + count + '" value="" placeholder="" class="ngoaingukhac' + count + ' form-control" style="display: none;none;margin-top:5px;">'+
														'</td>'+
														'<td align="center">'+
															'<select class="form-control" name="nghe' + count + '">'+
																'<option value="1">Tốt</option>'+
																'<option value="2">Khá</option>'+
																'<option value="3">Trung bình</option>'+
																'<option value="4">Yếu</option>'+
															'</select>'+
														'</td>'+
														'<td align="center">'+
															'<select  class="form-control" name="noi' + count + '">'+
																'<option value="1">Tốt</option>'+
																'<option value="2">Khá</option>'+
																'<option value="3">Trung bình</option>'+
																'<option value="4">Yếu</option>'+
															'</select>'+
														'</td>'+
														'<td align="center">'+
															'<select class="form-control" name="doc' + count + '" >'+
																'<option value="1">Tốt</option>'+
																'<option value="2">Khá</option>'+
																'<option value="3">Trung bình</option>'+
																'<option value="4">Yếu</option>'+
															'</select>'+
														'</td>'+
														'<td align="center">'+
															'<select class="form-control" name="viet' + count + '">'+
																'<option value="1">Tốt</option>'+
																'<option value="2">Khá</option>'+
																'<option value="3">Trung bình</option>'+
																'<option value="4">Yếu</option>'+
															'</select>'+
														'</td>'+
													'</tr>'
					   					);
					   				$("#hidden4").val(count);
					   				var i =count;
											$('.ngoaingu'+i).on('change',function(){
												if ($('.ngoaingu'+i).val()==5) {
													$('.ngoaingukhac'+i).css("display","block");
												} else {
													$('.ngoaingukhac'+i).css("display","none");
													   }
											});	
					   						
										count++;
					   			});

							$('.ngoaingu1').on('change',function(){
												if ($('.ngoaingu1').val()==5) {
													$('.ngoaingukhac1').css("display","block");
												} else {
													$('.ngoaingukhac1').css("display","none");
													   }
											});	
								
							});
							
							$('.donvitochuc1').on('change',function(){
												if ($('.donvitochuc1').val()==4) {
													$('.donvitochuckhac1').css("display","block");
												} else {
													$('.donvitochuckhac1').css("display","none");
													   }
							});
							$(function(){
								var count = $('#countthamgiadgn').val();
								if (count == 0) { count = 1;}
								count++;
								$("#button3").click(function(){
									$('.thamgiadgn  tr[class="lv1"]:last').after(
					   							'<tr class="lv1">'+
					   							'<td align="center">'+count+'</td>'+
												'<td align="center">'+
													'<select name="donvitochuc'+ count +'" class="donvitochuc'+ count +'  form-control">'+
																	'<?php
																	$kq_select_don_vi_to_chuc = $wpdb->get_results( 'SELECT * FROM cacdonvitochucdgn',ARRAY_N);
																	foreach ($kq_select_don_vi_to_chuc as $row) {
																		echo '<option value="'. $row[0] . '">' .$row[1] . '</option>'; 
																	}
																 ?>'
													+
													'</select>'	+
													'<input type="text" name="donvitochuckhac1" class="donvitochuckhac'+ count +' form-control" value="" placeholder="" style="display:none">'+
												'</td>'+
												'<td align="center">'+
													'<input type="text" name="donviduocdanhgia'+ count +'" value="" placeholder="" class="form-control">'	+
												'</td>'+
												'<td align="center">'+
													'<select name="vaitrotrongdoan'+ count +'" class="vaitrotrongdoan'+ count +'  form-control" >'+
																'<option value="1">Trưởng đoàn</option>'+
																'<option value="2">Thư ký Đoàn</option>'+
																'<option value="3">Thành viên Đoàn</option>'+
																'<option value="4">Tổ thư ký</option>'+
																'<option value="5">Quan sát viên</option>'+
													'</select>'+	
												'</td>'+
												'<td align="center">'+
													'<table>'+
															'<tr>'+
																'<td>1</td>'+
																'<td>2</td>'+
																'<td>3</td>'+
																'<td>4</td>'+
																'<td>5</td>'+
																'<td>6</td>'+
																'<td>7</td>'+
																'<td>8</td>'+
																'<td>9</td>'+
																'<td>10</td>'+
															'</tr>'+
															'<tr>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="1"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="2"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="3"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="4"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="5"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="6"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="7"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="8"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="9"></td>'+
																'<td><input type="checkbox" name="row'+ count +'tc[]" value="10"></td>'+
															'</tr>'+
													'</table>'+
												'</td>'+
											'</tr>'
					   					);
								count++;
								$("#countthamgiadgn").val(count);
					   			});
								
							});
						$(function(){
							$('#formkdv').submit(function(event) {
									if ($('#capcha').val()=='') {
										$('.capcha').after('<p class="errors"> Vui lòng nhập mã lệnh </p>');	
										$('#capcha').focus();
										event.preventDefault();
									};
								 });
						});

						//Them trinh do thac si
							$(function(){
								var count=$("#counttrinhdothacsi").val();
								count++;
								$("#themtrinhdothacsi").click(function(){
					   				$(".trinhdothacsi tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
					   					'<td align="center"><input type="text" class="form-control" name="chuyennganhthacsi'+count+'" placeholder="Chuyên ngành đào tạo" name="chuyennganhthacsi'+count+'" ></td>'+
					   					'<td align="center"><input type="text" class="form-control" name="noidaotaothacsi'+count+'"  placeholder="Nơi đào tạo" name="noidaotaothacsi'+count+'" ></td>'+
										'<td align="center"><input type="text" class="form-control" name="namcapbangthacsi'+count+'" placeholder="Năm cấp bằng" name="namcapbangthacsi'+count+'" ></td>'+
					   					'</tr>');
					   				$("#counttrinhdothacsi").val(count);
					   				count++;
					   			});

							});
						//Them trinh do tien si
							$(function(){
								var count=$("#counttrinhdotiensi").val();
								count++;
								$("#themtrinhdotiensi").click(function(){
					   				$(".trinhdotiensi tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
					   					'<td align="center"><input type="text" class="form-control" name="chuyennganhtiensi'+count+'" placeholder="Chuyên ngành đào tạo" name="chuyennganhthacsi'+count+'" ></td>'+
					   					'<td align="center"><input type="text" class="form-control" name="noidaotaotiensi'+count+'"  placeholder="Nơi đào tạo" name="noidaotaothacsi'+count+'" ></td>'+
										'<td align="center"><input type="text" class="form-control" name="namcapbangtiensi'+count+'" placeholder="Năm cấp bằng" name="namcapbangthacsi'+count+'" ></td>'+
					   					'</tr>');
					   				$("#counttrinhdotiensi").val(count);
					   				count++;
					   			});

							});		
						</script>
<?php } 