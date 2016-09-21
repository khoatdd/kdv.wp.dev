<?php session_start(); ?>
<?php if (!is_user_logged_in()) { 

				//auth_redirect();
				wp_redirect(wp_login_url());
				exit;

			} else {
get_header(); 

ini_set('display_errors', 0);

			$current_user = wp_get_current_user(); ?>
			<div class="login" style="margin:auto">
				<span style="color:red"><?php  echo 'Xin chào '.'<a href="'.admin_url().'">'.$current_user->user_login.'</a>'; ?></span>	|

				<a href="<?php echo wp_logout_url( home_url() ); ?>">Đăng xuất</a>
			</div>
			<?php
			
	ini_set('display_errors',0);
	if (isset($_POST['hoantat'])) {
				global $wpdb;
				if (1==1) {//$_POST['capcha'] == $_SESSION['security_code']
						//$wpdb->query('BEGIN');
						//$wpdb->query('SET AUTOCOMMIT = 0');
					$wpdb->query('START TRANSACTION');
						
						$get_ID = get_current_user_id();
						$count1 = !empty($_POST['hidden1']) ? $_POST['hidden1'] : 1;
				   		//echo $count1;
				   		$test1=0;
						for ($i=1; $i <= $count1 ; $i++) {

							$thoigianct ='thoigianct'.$i;
							$$thoigianct = !empty($_POST[$thoigianct])? $_POST[$thoigianct]: null; //echo $$thoigian;
							$noicongtac ='noicongtac'.$i;
							$$noicongtac = !empty($_POST[$noicongtac]) ? $_POST[$noicongtac]: null; //echo $$noicongtac;
							$chucvu ='chucvu'.$i;
							$$chucvu = !empty($_POST[$chucvu])? $_POST[$chucvu]: null; //echo $$chucvu;
							
							if ($$thoigianct!=null&&$$noicongtac!=null&&$$chucvu!=null) {
								$insert_quatrinhcongtac = $wpdb->insert( 'quatrinhcongtac',
								array(
									'ID'=>$get_ID,
									'thoigian'=>$$thoigianct,
									'noicongtac'=>$$noicongtac,
									'chucvu'=>$$chucvu
									),
								array( 
									'%s',
									'%s',
									'%s'
									)  
								);
									//if ($insert_quatrinhcongtac) {
									//$test1++;
									//	}
							}
								
						}
						$count2 = !empty($_POST['hidden2']) ? $_POST['hidden2'] : 1;;
				   		//echo $count2;
				   		$test2=0;
						for ($j=1; $j <= $count2 ; $j++) {

							$khoahoc ='khoahoc'.$j;
							$$khoahoc = !empty($_POST[$khoahoc]) ? $_POST[$khoahoc]: null;// echo $$khoahoc;
							$thoigiankh ='thoigiankh'.$j;
							$$thoigiankh = !empty($_POST[$thoigiankh]) ? $_POST[$thoigiankh]:null;// echo $$thoigiankh;
							$noidaotao ='noidaotao'.$j;
							$$noidaotao = !empty($_POST[$noidaotao]) ? $_POST[$noidaotao] :null;// echo $$noidaotao;

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
									//if ($insert_cackhoahoc) {
									//	$test2++;
									//}	
							}
							
						}

						// start thongtincanhan
						$hovatendem = !empty($_POST['hovatendem']) ? $_POST['hovatendem'] : null; //echo $hovatendem."---";
						$ten = !empty($_POST['ten']) ? $_POST['ten'] : null; //tương tự như trên
						$ngaysinh = !empty($_POST['ngaysinh']) ? $_POST['ngaysinh'] : null; //nt echo
						$gioitinh = !empty($_POST['gioitinh']) ? $_POST['gioitinh'] : null; //echo $gioitinh."---";
						$quequan = !empty($_POST['quequan']) ? $_POST['quequan'] : null; //nt
						$noicongtac = !empty($_POST['noicongtac']) ? $_POST['noicongtac'] : null; //nt
						$thamniencongtac = !empty($_POST['thamniencongtac']) ? $_POST['thamniencongtac'] : null;
						// end thongtincanhan

						// start thongtinlienlac
						$diachilienhe= !empty($_POST['diachilienhe']) ? $_POST['diachilienhe'] : null;
						$dienthoaicodinh=!empty($_POST['dienthoaicodinh']) ? $_POST['dienthoaicodinh'] : '';
						$dienthoaididong=!empty($_POST['dienthoaididong']) ? $_POST['dienthoaididong'] : null;
						$emaillienhe=!empty($_POST['emaillienhe']) ? $_POST['emaillienhe'] : null;
						$fax=!empty($_POST['fax']) ? $_POST['fax'] : '';
						// end thongtinlienlac

						// start trinhdochuyenmonnghiepvu
						$hocham=!empty($_POST['hocham']) ? $_POST['hocham'] : null;
						$hocvi=!empty($_POST['hocvi']) ? $_POST['hocvi'] : null;
						$chuyennganhthacsi=!empty($_POST['chuyennganhthacsi']) ? $_POST['chuyennganhthacsi'] : null;
						$noidaotaothacsi=!empty($_POST['noidaotaothacsi']) ? $_POST['noidaotaothacsi'] : null;
						$chuyennganhtiensi=!empty($_POST['chuyennganhtiensi']) ? $_POST['chuyennganhtiensi'] : '';
						$noidaotaotiensi=!empty($_POST['noidaotaotiensi']) ? $_POST['noidaotaotiensi'] : '';
						$cckdv=!empty($_POST['cckdv']) ? $_POST['cckdv'] : null ;
						$sochungchi=!empty($_POST['sochungchi']) ? $_POST['sochungchi'] : '' ;
						$ngaycapcc=!empty($_POST['ngaycapcc']) ? $_POST['ngaycapcc'] : '' ;
						$thekdv=!empty($_POST['thekdv']) ? $_POST['thekdv'] : null;
						$sothekdv=!empty($_POST['sothekdv']) ? $_POST['sothekdv'] : '';
						$ngaycapthe=!empty($_POST['ngaycapthe']) ? $_POST['ngaycapthe'] : '';
						$tienganh=!empty($_POST['tienganh']) ? $_POST['tienganh'] : 0;
						$tiengphap=!empty($_POST['tiengphap']) ? $_POST['tiengphap'] : 0;
						$tiengnga=!empty($_POST['tiengnga']) ? $_POST['tiengnga'] : 0;
						$tiengduc=!empty($_POST['tiengduc']) ? $_POST['tiengduc'] : 0;
						$ngoaingukhac =!empty($_POST['ngoaingukhac']) ? $_POST['ngoaingukhac'] : 0;
						$ngoaingukhac_mucdo =!empty($_POST['ngoaingukhac_mucdo']) ? $_POST['ngoaingukhac_mucdo'] : 0;
						$trinhdotinhoc=!empty($_POST['trinhdotinhoc']) ? $_POST['trinhdotinhoc'] : null;
						// end trinhdochuyenmonnghiepvu

						// start kinh nghiem trong dam bao chat luong va kiem dinh chat luong
						$thamgiadgn = !empty($_POST['thamgiadgn']) ? $_POST['thamgiadgn'] : null;//echo $thamgiadgn."---";
						$donvi = !empty($_POST['donvithamgiadgn']) ? $_POST['donvithamgiadgn'] : array();
						$donvithamgiadgn="";
						foreach ($donvi as $donvitemp ) { //
							$donvithamgiadgn=$donvithamgiadgn.$donvitemp.",";
						}
						$donvithamgiadgn=substr($donvithamgiadgn, 0,-1);
						$donvithamgiadgn_khac=$_POST['donvithamgiadgn_khac'];
						$vitri= !empty($_POST['vitrithamgiadgn']) ? $_POST['vitrithamgiadgn'] : array();
						$vitrithamgiadgn="";
						foreach ($vitri as $vitritemp) {
							$vitrithamgiadgn=$vitrithamgiadgn.$vitritemp.",";
						}
						$vitrithamgiadgn=substr($vitrithamgiadgn,0,-1); echo $vitrithamgiadgn."---";
						$kinhnghiemvietbc=!empty($_POST['kinhnghiemvietbc']) ? $_POST['kinhnghiemvietbc'] : null;

						$kinhnghiemkhac= !empty($_POST['kinhnghiemkhac']) ? $_POST['kinhnghiemkhac'] : ''; //echo $kinhnghiemkhac;
						// end kinh nghiem trong dam bao chat luong va kiem dinh chat luong
						$insert_thongtinchung = $wpdb->insert( 'thongtinchung',
								array(
									'ID'=>$get_ID,//1
									'hovatendem'=>$$hovatendem,
									'ten'=>$ten,
									'ngaysinh'=>$ngaysinh,
									'gioitinh'=>$gioitinh,//5
									'quequan'=>$quequan,
									'noicongtac'=>$noicongtac,
									'thamniencongtac'=>$thamniencongtac,
									'diachilienhe'=>$diachilienhe,
									'dienthoaicodinh'=>$dienthoaicodinh,//10
									'dienthoaididong'=>$dienthoaididong,
									'emaillienhe'=>$emaillienhe,
									'fax'=>$fax,
									'hocham'=>$hocham,
									'hocvi'=>$hocvi,//15
									'chuyennganhthacsi'=>$chuyennganhthacsi,
									'noidaotaothacsi'=>$noidaotaothacsi,
									'chuyennganhtiensi'=>$chuyennganhtiensi,
									'noidaotaotiensi'=>$noidaotaotiensi,
									'cckdv'=>$cckdv,//20
									'sochungchi'=>$sochungchi,//21
									'ngaycapcc'=>$ngaycapcc,
									'thekdv'=>$thekdv,//23
									'sothekdv'=>$sothekdv,
									'ngaycapthe'=>$ngaycapthe,//25
									'tienganh'=>$tienganh,//26
									'tiengphap'=>$tiengphap,//27
									'tiengnga'=>$tiengnga,//28
									'tiengduc'=>$tiengduc,//29
									'ngoaingukhac'=>$ngoaingukhac,//30
									'ngoaingukhac_mucdo'=>$ngoaingukhac_mucdo,//31
									'trinhdotinhoc'=>$trinhdotinhoc,
									'thamgiadgn'=>$thamgiadgn,//33
									'donvithamgiadgn'=>$donvithamgiadgn,
									'donvithamgiadgn_khac'=>$donvithamgiadgn_khac,
									'vitrithamgiadgn'=>$vitrithamgiadgn,//36
									'kinhnghiemvietbc'=>$kinhnghiemvietbc,//37
									'kinhnghiemkhac'=>$kinhnghiemkhac
									),
								array( 
									'%d','%s','%s','%s','%d',//1
									'%s','%s','%s','%s','%s',//2
									'%s','%s','%s','%s','%s',//3
									'%s','%s','%s','%s','%d',//4
									'%s','%s','%d','%s','%s',//5
									'%d','%d','%d','%d','%s',//6
									'%d','%s','%d','%s','%s',//7
									'%s','%d','%s'		 //8
									)  
								);
						
						
							if (
								$hovatendem!=null&&$ten!=null&&$ngaysinh!=null
								&&$gioitinh!=null&&$quequan!=null&&$noicongtac!=null
								&&$thamniencongtac!=null&&$diachilienhe!=null&&$dienthoaididong!=null
								&&$emaillienhe!=null&&$hocvi!=null&&$chuyennganhthacsi!=null
								&&$noidaotaothacsi!=null&&$cckdv!=null&&$thekdv!=null
								&&$trinhdotinhoc!=null&&$thamgiadgn!=null&&$kinhnghiemvietbc!=null

								) {
								//mysql_query("COMMIT");
								$wpdb->query('COMMIT');
								$alert='Tạo cơ sở dữ liệu thành công!';
							} else {
								//mysql_query("ROLLBACK");
								$wpdb->query('ROLLBACK');
								$alert='Tạo cơ sở dữ liệu thất bại!';
							}
								//if (!empty($alert)) {
	  							//			echo '<script>alert("' . $alert . '");</script>';
	  							//}
					}
	}

	// if (isset($_POST['hoantat'])) {

	// 	// start thongtincanhan
	// 	$hovatendem = !empty($_POST['hovatendem']) ? $_POST['hovatendem'] : null;
	// 	$ten = !empty($_POST['ten']) ? $_POST['ten'] : null; //tương tự như trên
	// 	$ngaysinh = !empty($_POST['ngaysinh']) ? $_POST['ngaysinh'] : null; //nt
	// 	$gioitinh = !empty($_POST['gioitinh']) ? $_POST['gioitinh'] : null; //nt
	// 	$quequan = !empty($_POST['quequan']) ? $_POST['quequan'] : null; //nt
	// 	$noicongtac = !empty($_POST['noicongtac']) ? $_POST['noicongtac'] : null; //nt
	// 	$thamniencongtac = !empty($_POST['thamniencongtac']) ? $_POST['thamniencongtac'] : null; //nt
	// 	$sql1 = "INSERT INTO thongtincanhan (taikhoan,matkhau,xacnhanmatkhau,hovatendem,ten,ngaysinh,gioitinh,quequan,noicongtac,thamniencongtac)
	// 	VALUES ('$taikhoan','$matkhau','$xacnhanmatkhau','$hovatendem','$ten','$ngaysinh',$gioitinh,'$quequan','$noicongtac', '$thamniencongtac')";
	// 	// end thongtincanhan

	// 	// start thongtinlienlac
	// 	$diachilienhe= !empty($_POST['diachilienhe']) ? $_POST['diachilienhe'] : null;
	// 	$dienthoaicodinh=!empty($_POST['dienthoaicodinh']) ? $_POST['dienthoaicodinh'] : '';
	// 	$dienthoaididong=!empty($_POST['dienthoaididong']) ? $_POST['dienthoaididong'] : null;
	// 	$emaillienhe=!empty($_POST['emaillienhe']) ? $_POST['emaillienhe'] : null;
	// 	$fax=!empty($_POST['fax']) ? $_POST['fax'] : '';
	// 	$sql2="INSERT INTO thongtinlienlac (diachilienhe,dienthoaicodinh,dienthoaididong,emaillienhe,fax)
	// 	VALUES ('$diachilienhe','$dienthoaicodinh','$dienthoaididong','$emaillienhe','$fax')";
	// 	// end thongtinlienlac

	// 	// start trinhdochuyenmonnghiepvu
	// 	$hocham=!empty($_POST['hocham']) ? $_POST['hocham'] : null;
	// 	$hocvi=!empty($_POST['hocvi']) ? $_POST['hocvi'] : null;
	// 	$chuyennganhthacsi=!empty($_POST['chuyennganhthacsi']) ? $_POST['chuyennganhthacsi'] : null;
	// 	$noidaotaothacsi=!empty($_POST['noidaotaothacsi']) ? $_POST['noidaotaothacsi'] : null;
	// 	$chuyennganhtiensi=!empty($_POST['chuyennganhtiensi']) ? $_POST['chuyennganhtiensi'] : '';
	// 	$noidaotaotiensi=!empty($_POST['noidaotaotiensi']) ? $_POST['noidaotaotiensi'] : '';
	// 	$cckdv=!empty($_POST['cckdv']) ? $_POST['cckdv'] : null ;
	// 	$sochungchi=!empty($_POST['sochungchi']) ? $_POST['sochungchi'] : '' ;
	// 	$ngaycapcc=!empty($_POST['ngaycapcc']) ? $_POST['ngaycapcc'] : '' ;
	// 	$thekdv=!empty($_POST['thekdv']) ? $_POST['thekdv'] : null;
	// 	$sothekdv=!empty($_POST['sothekdv']) ? $_POST['sothekdv'] : '';
	// 	$ngaycapthe=!empty($_POST['ngaycapthe']) ? $_POST['ngaycapthe'] : '';
	// 	$tienganh=!empty($_POST['tienganh']) ? $_POST['tienganh'] : 0;
	// 	$tiengphap=!empty($_POST['tiengphap']) ? $_POST['tiengphap'] : 0;
	// 	$tiengnga=!empty($_POST['tiengnga']) ? $_POST['tiengnga'] : 0;
	// 	$tiengduc=!empty($_POST['tiengduc']) ? $_POST['tiengduc'] : 0;
	// 	$ngoaingukhac =!empty($_POST['ngoaingukhac']) ? $_POST['ngoaingukhac'] : 0;
	// 	$ngoaingukhac_mucdo =!empty($_POST['ngoaingukhac_mucdo']) ? $_POST['ngoaingukhac_mucdo'] : 0;
	// 	$trinhdotinhoc=!empty($_POST['trinhdotinhoc']) ? $_POST['trinhdotinhoc'] : null;
	// 	$sql3="INSERT INTO trinhdochuyenmonnghiepvu (hocham,hocvi,chuyennganhthacsi,noidaotaothacsi,chuyennganhtiensi,noidaotaotiensi,cckdv,sochungchi,ngaycapcc,thekdv,sothekdv,ngaycapthe,tienganh,tiengphap,tiengnga,tiengduc,ngoaingukhac,ngoaingukhac_mucdo,trinhdotinhoc)
	// 	VALUES ('$hocham','$hocvi','$chuyennganhthacsi','$noidaotaothacsi','$chuyennganhtiensi','$noidaotaotiensi',$cckdv,'$sochungchi','$ngaycapcc',$thekdv,'$sothekdv','$ngaycapthe',$tienganh,$tiengphap,$tiengnga,$tiengduc,'$ngoaingukhac',$ngoaingukhac_mucdo,'$trinhdotinhoc')";
	// 	// end trinhdochuyenmonnghiepvu
	// 	$sql4="INSERT INTO quatrinhcongtac (thoigianct1,noicongtac1,chucvu1,thoigianct2,noicongtac2,chucvu2,thoigianct3,noicongtac3,chucvu3,thoigianct4,noicongtac4,chucvu4,thoigianct5,noicongtac5,chucvu5)
	// 	VALUES ('$thoigianct1','$noicongtac1','$chucvu1','$thoigianct2','$noicongtac2','$chucvu2','$thoigianct3','$noicongtac3','$chucvu3','$thoigianct4','$noicongtac4','$chucvu4','$thoigianct5','$noicongtac5','$chucvu5')";
	// 	// kinh nghiem trong dam bao chat luong va kiem dinh chat luong	

	// 	$thamgiadgn = !empty($_POST['thamgiadgn']) ? $_POST['thamgiadgn'] : null;

	// 	$donvi = !empty($_POST['donvithamgiadgn']) ? $_POST['donvithamgiadgn'] : array();
	// 	$donvithamgiadgn="";
	// 	foreach ($donvi as $donvitemp ) { //
	// 		$donvithamgiadgn=$donvithamgiadgn.$donvitemp.",";
	// 	}
	// 	$donvithamgiadgn=substr($donvithamgiadgn, 0,-1);
	// 	$donvithamgiadgn_khac=$_POST['donvithamgiadgn_khac'];
	// 	$vitri= !empty($_POST['vitrithamgiadgn']) ? $_POST['vitrithamgiadgn'] : array();
	// 	$vitrithamgiadgn="";
	// 	foreach ($vitri as $vitritemp) {
	// 		$vitrithamgiadgn=$vitrithamgiadgn.$vitritemp.",";
	// 	}
	// 	$vitrithamgiadgn=substr($vitrithamgiadgn,0,-1);
	// 	$kinhnghiemvietbc=!empty($_POST['kinhnghiemvietbc']) ? $_POST['kinhnghiemvietbc'] : '';

	// 	$kinhnghiemkhac= !empty($_POST['kinhnghiemkhac']) ? $_POST['kinhnghiemkhac'] : '';
	// 	$sql5="INSERT INTO kinhnghiemdbclkdcl (thamgiadgn,donvithamgiadgn,donvithamgiadgn_khac,vitrithamgiadgn,kinhnghiemvietbc,khoahoc1,thoigiankh1,noidaotao1,khoahoc2,thoigiankh2,noidaotao2,khoahoc3,thoigiankh3,noidaotao3,khoahoc4,thoigiankh4,noidaotao4,khoahoc5,thoigiankh5,noidaotao5,kinhnghiemkhac)
	// 	VALUES ($thamgiadgn,'$donvithamgiadgn','$donvithamgiadgn_khac','$vitrithamgiadgn',$kinhnghiemvietbc,'$khoahoc1','$thoigiankh1','$noidaotao1','$khoahoc2','$thoigiankh2','$noidaotao2','$khoahoc3','$thoigiankh3','$noidaotao3','$khoahoc4','$thoigiankh4','$noidaotao4','$khoahoc5','$thoigiankh5','$noidaotao5','$kinhnghiemkhac')";		

	// 	if ($matkhau!=$xacnhanmatkhau) {
	// 		$alert = 'Mật khẩu và xác nhận mật khẩu không giống nhau';
	// 		}
	// 	else {
	// 		$lenh = "select * from thongtincanhan where taikhoan='$taikhoan'";
	// 		$kq = mysql_query($lenh);
	// 		$n = mysql_num_rows($kq);
	// 		if($n > 0 &&isset($_POST['taikhoan']))
	// 			{ 
	// 			$alert='Tài khoản này đã tồn tại!';
	// 			}
	// 		else {
	// 			if (isset($_POST['hoantat'])) {
	// 				if($_POST['capcha'] == $_SESSION['security_code']) {
	// 					mysql_query("BEGIN");
	// 					mysql_query("SET AUTOCOMMIT = 0");
	// 					$insert = mysql_query($sql);
					
	// 					if ($insert) {
	// 						mysql_query("COMMIT");
	// 						//header('Location: index.php?success=true');		
	//  						}
	// 					else {
	// 						mysql_query("ROLLBACK");
	// 						$alert='Tạo cơ sở dữ liệu thất bại!';
	// 					}
						
	// 						var_dump($insert);
	// 						// print_r("\n" . $sql3);
	// 						print_r($_POST['vitrithamgiadgn']);
	// 					}
	// 				}
	// 			}
	// 		}
	// 	}
	// elseif ($_GET['success'] == 'true') {
	// 	$alert ='Tạo cơ sở dữ liệu thành công!'; //done,
	// 	print_r($_POST['vitrithamgiadgn']);
	// }

?>
	
  <?php
  	//sửa lại đống script alert trên nở của mi thành gán cho biến alert
  	//check có alert thì mới dùng script in alert ra
  	//if (!empty($alert)) {
  		//echo '<script>alert("' . $alert . '");</script>';
  	//}

  ?>
  
</head>

<body>
	<div class="header container-fluid">
			<div class="headerimg">
				<img src="<?php echo bloginfo('template_directory').'/img/logo.jpg'; ?>" alt="" height="110px" width="850">
			</div>
			<div class="headertitle alert-warning">
				<h1 style="line-height:75px">THÔNG TIN KIỂM ĐỊNH VIÊN</h1>
			</div>
			<div class="luuy">
				<i>Lưu ý:<br>
				Quý Thầy/Cô vui lòng nhập đầy đủ thông tin vào các mục được đánh dấu (*)
				</i>
			</div>
		</div>
	<div class="container">
		<?php
			// if (isset($_POST['hoantat'])&&$_POST['capcha'] == $_SESSION['security_code']) {
			// if (!empty($success)) {
			// 	echo '<div class="alert alert-success" id="success">' . $success . '</div>';
			// }
			// if (!empty($error)) {
			// 	echo '<div class="alert alert-danger">' . $error.'<br/></div>';
			// } }
		?>
		<!-- <div class="header">
			<div class="headerimg">
				<img src="img/logo.jpg" alt="" height="110px" width="850">
			</div>
			<div class="headertitle alert-warning">
				<h1 style="line-height:75px">THÔNG TIN KIỂM ĐỊNH VIÊN</h1>
			</div>
			<div class="luuy">
				<p>Lưu ý:</p>
				<p> Quý Thầy/Cô vui lòng nhập đầy đủ các mục có dấu (*)</p>
			</div>
		</div> -->
		<div class="content">
			<form action="index.php" method="post" name="formkdv" id="formkdv" onSubmit="return checksignup()" class="form-horizontal">				
			<div class="alert  title">
				Phần I: Thông tin cá nhân
			</div> <!-- title -->

					<div class="hovaten">
					<h4>1. Họ và tên Kiểm định viên (*)</h4>
							Họ và tên đệm
							<input type="text" name="hovatendem" id="hovatendem" size="25" value="<?php  echo $_POST['hovatendem'];  ?>">
							Tên
							<input type="text" name="ten" id="ten" size="10" value="<?php  echo $_POST['ten'];  ?>">
							<span style="color:red;display:none;" id="hovatendem_error"></span>
							<span style="color:red;display:none;" id="ten_error"></span>
			
					</div> <!-- hovaten -->
				<div class="ngaysinh">
				 	<h4>2. Ngày sinh (*)</h4>
				 			<span style="color:red;display:none;" id="ngaysinh_error"></span>
				 	 		<input type="text" class="datepicker" name="ngaysinh" id="ngaysinh" size="7" value="<?php  echo $_POST['ngaysinh'];  ?>">
				 	 </div>
			
				<div class="gioitinh">
					<h4>3. Giới tính (*)</h4>
					<?php if($_POST['gioitinh']==1)
			      echo"<input type='radio' name='gioitinh' id='nam' value='1' checked/>
			      Nam 
			        <input type='radio' name='gioitinh' id='nu' value='2' />
			      Nữ";
				  elseif ($_POST['gioitinh']==2){
				   echo"<input type='radio' name='gioitinh' id='nam' value='1'/>
			      Nam 
			        <input type='radio' name='gioitinh' id='nu' value='2'  checked/>
			      Nữ";}
			     else echo "<input type='radio' name='gioitinh' id='nam' value='1'/>
			      Nam 
			        <input type='radio' name='gioitinh' id='nu' value='2'/>
			      Nữ";
			      ?>
				</div> <!-- gioitinh -->
				<div class="quequan">
					<h4>4. Quê quán (*)</h4>
					<input type="text" name="quequan" value="<?php  echo $_POST['quequan'];  ?>">
					<span style="color:red;display:none;" id="quequan_error"></span>
				</div> <!-- quequan -->
				<div class="noicongtac">
					<h4>5. Nơi công tác (*)</h4>
					<input type="text" name="noicongtac" style="" value="<?php  echo $_POST['noicongtac'];  ?>">
					<span style="color:red;display:none;" id="noicongtac_error"></span>
				</div> <!-- noicongtac -->
				<div class="thamniencongtac">
					<h4>6. Thâm niên công tác (*)</h4>
					<input type="text" name="thamniencongtac" style="" size="5" value="<?php  echo $_POST['thamniencongtac'];  ?>">
					<span style="color:red;display:none;" id="thamniencongtac_error"></span>
				</div> <!-- thamniencongtac -->
			<div class="alert  title">
				Phần II: Thông tin liên lạc
			</div> <!-- title -->
				<div class="diachilienhe">
					<h4>7. Địa chỉ liên hệ (*)</h4>
					<input type="text" name="diachilienhe" style="" size="50" value="<?php  echo $_POST['diachilienhe'];  ?>">
					<span style="color:red;display:none;" id="diachilienhe_error"></span>
				</div> <!-- diachilienhe -->
				<div class="dienthoaicodinh">
					<h4>8. Điện thoại cố định</h4>
					<input type="text" name="dienthoaicodinh" style="" size="11" value="<?php  echo $_POST['dienthoaicodinh'];  ?>">
				</div> <!-- dienthoaicodinh -->
				<div class="dienthoaididong">
					<h4>9. Điện thoại di động (*)</h4>
					<input type="text" name="dienthoaididong" style="" size="11" value="<?php  echo $_POST['dienthoaididong'];  ?>">
					<span style="color:red;display:none;" id="dienthoaididong_error"></span>
				</div> <!-- dienthoadidong -->
				<div class="email">
					<h4>10. Email liên hệ (*)</h4>
					<input type="text" name="emaillienhe" style="" size="25" value="<?php  echo $_POST['emaillienhe'];  ?>">
					<span style="color:red;display:none;" id="emaillienhe_error"></span>
				</div> <!-- email -->
				<div class="fax">
					<h4>11. Fax</h4>
					<input type="text" name="fax" style="" size="11" value="<?php  echo $_POST['fax'];  ?>">
				</div> <!-- fax -->
			<div class="alert  title">
				Phần III: Trình độ chuyên môn, nghiệp vụ
			</div> <!-- title -->
				<div class="hochamhocvi">
					<h4>12. Học hàm và học vị (*)</h4>
					<span>Học hàm </span><input type="text" name="hocham" style="" value="<?php  echo $_POST['hocham'];  ?>">
					<span> Học vị </span><input type="text" name="hocvi" style="" value="<?php  echo $_POST['hocvi'];  ?>">
					<span style="color:red;display:none;" id="hocvi_error"></span>
				</div> <!-- hochamhocvi -->
				<div class="chuyennganhdaotaobacthacsi">
					<h4>13. Chuyên ngành đào tạo bậc thạc sĩ (*)</h4>
					<input type="text" name="chuyennganhthacsi" style="" value="<?php  echo $_POST['chuyennganhthacsi'];  ?>">
					<span style="color:red;display:none;" id="chuyennganhthacsi_error"></span>
				</div> <!-- chuyennganhdaotaobacthacsi -->
				<div class="noidaotaothacsi">
					<h4>14. Nơi đào tạo thạc sĩ (*)</h4>
					<input type="text" name="noidaotaothacsi" style="" value="<?php  echo $_POST['noidaotaothacsi'];  ?>">
					<span style="color:red;display:none;" id="noidaotaothacsi_error"></span>
				</div>
				<div class="chuyennganhdaotaobactiensi">
					<h4>15. Chuyên ngành đào tạo bậc tiến sĩ</h4>
					<input type="text" name="chuyennganhtiensi" style="" value="<?php  echo $_POST['chuyennganhtiensi'];  ?>">
				</div> <!-- chuyennganhdaotaobactiensi -->
				<div class="noidaotaotiensi">
					<h4>16. Nơi đào tạo tiến sĩ</h4>
					<input type="text" name="noidaotaotiensi" style="" value="<?php  echo $_POST['noidaotaotiensi'];  ?>">
				</div>
				<div class="chungchidaotaokiemdinhvien">
					<h4>17.Chứng chỉ đào tạo Kiểm định viên (*)</h4>
					<?php 
					if ($_POST['cckdv']==1) {
					echo ' <input type="radio" name="cckdv" value="1" checked /> Có
					<input type="radio" name="cckdv" value="2" /> Không';
					 }
					 elseif ($_POST['cckdv']==2) {
					 	echo ' <input type="radio" name="cckdv" value="1"  /> Có
					<input type="radio" name="cckdv" value="2" checked /> Không';
					 }
					 else echo ' <input type="radio" name="cckdv" value="1"  /> Có
					<input type="radio" name="cckdv" value="2" /> Không';
					  ?>
					  <div id="sochungchi">
						<span>Số chứng chỉ</span> <input type="text" name="sochungchi" <?php echo $_POST['cckdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
						'sochungchi']; ?>">
						<span> Ngày cấp chứng chỉ</span> <input type="text" class="datepicker" name="ngaycapcc" size="7" <?php echo $_POST['cckdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
						'ngaycapcc']; ?>">
					</div> <!-- sothe -->

				</div> <!-- cckiemdinhvien -->
				<div class="thekiemdinhvien">
					<h4>18. Thẻ Kiểm định viên (*)</h4>
					<?php 
					if ($_POST['thekdv']==1) {
					 	echo ' <input type="radio" name="thekdv" value="1" checked /> Có
					<input type="radio" name="thekdv" value="2" /> Không';
					 }
					 elseif ($_POST['thekdv']==2) {
					 	echo ' <input type="radio" name="thekdv" value="1"  /> Có
					<input type="radio" name="thekdv" value="2" checked /> Không';
					 }
					 else echo ' <input type="radio" name="thekdv" value="1"  /> Có
					<input type="radio" name="thekdv" value="2" /> Không';
					  ?>
					<div id="sothe">
						<span>Số thẻ</span> <input type="text" name="sothekdv" <?php echo $_POST['thekdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
						'sothekdv']; ?>">
						<span> Ngày cấp thẻ</span> <input type="text" class="datepicker" name="ngaycapthe" size="7" <?php echo $_POST['thekdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
						'ngaycapthe']; ?>">
					</div> <!-- sothe -->
				</div> <!-- thekiemdinhvien -->
				<div class="trinhdongoaingu">
					<h4>19. Trình độ ngoại ngữ (*)</h4>
					<table border="1">
					  <tr>
					    <td style="font-weight:bold" colspan="2" width="60%">Trình độ ngoại ngữ</td>
					    <td width="10%" align="center">Tốt</td>
					    <td width="10%" align="center">Khá</td>
					    <td width="20" align="center">Trung bình</td>
					  </tr>
					  <tr>
					    <td colspan="2">Tiếng Anh</td>
					    <td align="center"><input type="radio" name="tienganh" value="1" />
					    <label for="radio"></label></td>
					    <td align="center"><input type="radio" name="tienganh" value="2" />
					    <label for="radio"></label></td>
					   <td align="center"><input type="radio" name="tienganh" value="3" />
					    <label for="radio"></label></td>
					  </tr>
					  <tr>
					    <td colspan="2">Tiếng Pháp</td>
					    <td align="center"><input type="radio" name="tiengphap" value="1" />
					    <label for="radio"></label></td>
					   <td align="center"><input type="radio" name="tiengphap" value="2" />
					    <label for="radio"></label></td>
					   <td align="center"><input type="radio" name="tiengphap" value="3" />
					    <label for="radio"></label></td>
					  </tr>
					  <tr>
					    <td colspan="2">Tiếng Nga</td>
					   <td align="center"><input type="radio" name="tiengnga" value="1" />
					    <label for="radio"></label></td>
					    <td align="center"><input type="radio" name="tiengnga" value="2" />
					    <label for="radio"></label></td>
					    <td align="center"><input type="radio" name="tiengnga" value="3" />
					    <label for="radio"></label></td>
					  </tr>
					  <tr>
					    <td colspan="2">Tiếng Đức</td>
					    <td align="center"><input type="radio" name="tiengduc" value="1" />
					    <label for="radio"></label></td>
					    <td align="center"><input type="radio" name="tiengduc" value="2" />
					    <label for="radio"></label></td>
					    <td align="center"><input type="radio" name="tiengduc" value="3" />
					    <label for="radio"></label></td>
					  </tr>
					  <tr>
					    <td>Ngoại ngữ khác</td>
					    <td valign="middle" style="padding:0"><label for="textfield"></label>
					    <input type="text" name="ngoaingukhac" size="14" value="<?php  echo $_POST['ngoaingukhac'];  ?>"></td>
					    <td align="center"><input type="radio" name="ngoaingukhac_mucdo" value="1" />
					    <label for="radio"></label></td>
					    <td align="center"><input type="radio" name="ngoaingukhac_mucdo" value="2" />
					    <label for="radio"></label></td>
					    <td align="center"><input type="radio" name="ngoaingukhac_mucdo" value="3" />
					    <label for="radio"></label></td>
			
					  </tr>
					</table>
				</div> <!-- trinhdongoaingu -->
				<div class="trinhdotinhoc">
					<h4>20. Trình độ tin học (*)</h4>
					<input type="text" name="trinhdotinhoc" style="" value="<?php  echo $_POST['trinhdotinhoc'];  ?>">
					<span style="color:red;display:none;" id="trinhdotinhoc_error"></span>
				</div> <!-- trinhdotinhoc -->
			<div class="alert  title">
				Phần IV: Quá trình công tác			
			</div> <!-- title -->
				<div class="quatrinhcongtac"  style="padding-top:20px">
					<table cellpadding="2" cellspacing="0" border="2" width="800px">
						<tr style="font-weight:bold; font-size:17px;">
							<td width="50px" align="center">STT</td>
							<td width="250px" align="center">Thời gian</td>
							<td width="300px" align="center">Nơi công tác</td>
							<td width="200px" align="center">Chức vụ</td>
						</tr>
						<tr>
							<td align="center">1</td>
							<td><input type="text" name="thoigianct1" placeholder="   Thời gian" size="26" value="<?php  echo $_POST['thoigianct1'];?>" ></td>
							<td><input type="text" name="noicongtac1"  placeholder="   Nơi công tác" size="35" value="<?php  echo $_POST['noicongtac1'];?>"></td>
							<td><input type="text" name="chucvu1" placeholder="   Chức vụ" size="22" value="<?php  echo $_POST['chucvu1'];?>"></td>
						</tr>
			
					</table>
					<button class="themquatrinhcongtac" type="button" style="margin-top:5px">Thêm</button>
				</div> <!-- quatrinhcongtac -->
			<div class="alert  title">
				Phần V: Kinh nghiệm trong Đảm bảo và Kiểm định chất lượng			
			</div> <!-- title -->
				<div class="thamgiadgn">
					<h4>21. Thầy/Cô đã từng tham gia đoàn Đánh giá ngoài (ĐGN) chưa?  (*)</h4>
					<?php if ($_POST['thamgiadgn']==1) {
			
						echo '<input type="radio" name="thamgiadgn" value="1" checked/> Có
					<input type="radio" name="thamgiadgn" value="2" /> Không';
					}
					elseif ($_POST['thamgiadgn']==2) {
						echo '<input type="radio" name="thamgiadgn" value="1" /> Có
					<input type="radio" name="thamgiadgn" value="2" checked/> Không';	
					}
					else echo '<input type="radio" name="thamgiadgn" value="1" /> Có
					<input type="radio" name="thamgiadgn" value="2"/> Không';	
			
					?>
					
				</div>	<!-- thamggiadgn -->
				<div class="donvitochucdgn">
					<h4>22. Nếu có, đơn vị tổ chức ĐGN nào dưới đây các Thầy/Cô đã từng tham gia?</h4>
					<p style="font-style:italic">(Có thể chọn nhiều phương án)</p>
					<ul>
						<li>
							<input type="checkbox" name="donvithamgiadgn[]" value="1" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(1,$_POST['donvithamgiadgn']) !=false ? 'checked="checked"' : ''; ?>> Bộ GĐ&ĐT
						</li>
						<li>
							<input type="checkbox" name="donvithamgiadgn[]" value="2" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(2,$_POST['donvithamgiadgn']) !=false ? 'checked="checked"' : ''; ?>> ĐHQG-HN hoặc ĐHQG-HCM
						</li>
						<li>
							<input type="checkbox" name="donvithamgiadgn[]" value="3" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(3,$_POST['donvithamgiadgn']) !=false ? 'checked="checked"' : ''; ?>> ĐGN thử nghiệm trong khuôn khổ các dự án
						</li>
						<li>
							Khác <input type="text" name="donvithamgiadgn_khac" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?>>
						</li>
					</ul>
				</div> <!-- donvitochucdg -->
				<div class="vitrithamgiadgn">
					<h4>23. Vị trí khi tham gia các Đoàn ĐGN  (*)</h4>
					<p style="font-style:italic">(Có thể chọn nhiều phương án)</p>
					<ul>
						<li>
							<input type="checkbox" name="vitrithamgiadgn[]" value="1" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(1,$_POST['vitrithamgiadgn']) !=false ? 'checked="checked"' : ''; ?>> Trưởng Đoàn
						</li>
						<li>
							<input type="checkbox" name="vitrithamgiadgn[]" value="2" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(2,$_POST['vitrithamgiadgn']) != false ? 'checked="checked"' : ''; ?>> Thư ký Đoàn
						</li>
						<li>
							<input type="checkbox" name="vitrithamgiadgn[]" value="3" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(3,$_POST['vitrithamgiadgn']) != false ? 'checked="checked"' : ''; ?>> Thành viên Đoàn
						</li>
						<li>
							<input type="checkbox" name="vitrithamgiadgn[]" value="4" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(4,$_POST['vitrithamgiadgn']) != false ? 'checked="checked"' : ''; ?>> Tổ thư ký
						</li>
						<li>
							<input type="checkbox" name="vitrithamgiadgn[]" value="5" <?php echo $_POST['thamgiadgn']!=1 ? 'disabled="disabled"' : ''; ?> <?php echo in_array(5,$_POST['vitrithamgiadgn']) != false ? 'checked="checked"' : ''; ?>> Quan sát viên
						</li>	
					</ul>
				</div> <!-- vitrithamgiadgn -->
				<div class="kinhnghiemvietbc">
					<h4>24. Thầy/Cô đã có kinh nghiệm viết báo cáo tự đánh giá chưa? (*)</h4>
					<?php if ($_POST['kinhnghiemvietbc']==1) {
			
						echo '<input type="radio" name="kinhnghiemvietbc" value="1" checked/> Có
					<input type="radio" name="kinhnghiemvietbc" value="2" /> Không';
					}
					elseif ($_POST['kinhnghiemvietbc']==2) {
						echo '<input type="radio" name="kinhnghiemvietbc" value="1" /> Có
					<input type="radio" name="kinhnghiemvietbc" value="2" checked/> Không';	
					}
					else echo '<input type="radio" name="kinhnghiemvietbc" value="1" /> Có
					<input type="radio" name="kinhnghiemvietbc" value="2"/> Không';	
			
					?>
				</div> <!-- kinhnghiemvietbc -->
				<div class="cackhoahocdambaovakiemdinhchatluong">
					<h4>25. Các khóa học liên quan đến Đảm bảo và Kiểm định chất lượng mà Thầy/Cô đã từng tham gia</h4>
					<table cellpadding="2" cellspacing="0" border="2" width="800px">
						<tr style="font-weight:bold; font-size:17px;">
							<td width="50px" align="center">STT</td>
							<td width="300px" align="center">Tên khóa học</td>
							<td width="200px" align="center">Thời gian</td>
							<td width="250px" align="center">Nơi đào tạo</td>
						</tr>
						<tr>
							<td align="center">1</td>
							<td><input type="text" name="khoahoc1" placeholder="   Nhập tên Khóa học" size="35" value="<?php  echo $_POST['khoahoc1'];?>"></td>
							<td><input type="text" name="thoigiankh1"  placeholder="   Thời gian" size="22" value="<?php  echo $_POST['thoigiankh1'];?>" ></td>
							<td><input type="text" name="noidaotao1" placeholder="   Nơi đào tạo" size="26" value="<?php  echo $_POST['noidaotao1'];?>"></td>
						</tr>
						
						
					</table>
					<button class="themkhoahoc" type="button" style="margin-top:5px">Thêm</button>
				</div> <!-- cackhoahocdambaovakiemdinhchatluong -->
				<div class="kinhnghiemkhac">
						<h4>26. Những kinh nghiệm khác liên quan đến Đảm bảo và Kiểm định chất lượng giáo dục</h4>
						<textarea name="kinhnghiemkhac" style="width:400px;height:200px;" value="<?php  echo $_POST['kinhnghiemkhac'];?>"></textarea>
				</div> <!-- nhungkinhnghiemkhac -->
			
				 <div class="capcha"><label for="captcha">Captcha</label>
			      	<input name="capcha" type="text" id="capcha" value="<?php  echo $_POST["capcha"]; ?>" size="7" maxlength="10" /><font color="#FF0000">(*)
			      				     	<img src="<?php echo bloginfo('template_directory').'/random_image.php'; ?>" />
			      				     	<span id="capcha_error"> </span> </font>
			      	<?php
			      						if(isset($_POST['hoantat']))
			      						{
			      									if($_POST['capcha'] == $_SESSION['security_code'])
			      								{
			      									echo "Mã lệnh hợp lệ";
			      								}
			      								else
			      								{
			      									echo "Mã lệnh không hợp lệ, vui lòng nhập lại mã lệnh"; ?>
			      									<script>
			      									document.formkdv.capcha.focus();
			      									</script>
			      				
			      								<?php	
			      								}
			      							}
			      					?>
			      </div> <!-- capcha -->
			     
			
				<div class="hoantat">
				<br>
					<input type="submit" value="Hoàn tất" name="hoantat" id="hoantat">
				</div>
				<!-- Dung de lay so luong dong cho bang qua trinh cong tac -->
				<input type="hidden" name="hidden1" id="hidden1" />
				<!-- Dung de lay so luong dong cho bang cac khoa hoc -->
				<input type="hidden" name="hidden2" id="hidden2" />
				</form>
		</div>
	</div> <!-- container -->
	<!-- Latest compiled and minified CSS & JS -->
	<script type="text/javascript" src="<?php echo bloginfo('template_directory').'/js/jquery-1.11.2.min.js'; ?>"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="<?php echo bloginfo('template_directory').'/js/bootstrap.min.js'; ?>"></script>
  	

	<script type="text/javascript">
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
  					 {$("input[type=checkbox]").prop('disabled', false);$("input[name=donvithamgiadgn_khac]").prop('disabled', false);}
  					else {$("input[type=checkbox]").prop('disabled', true);$("input[name=donvithamgiadgn_khac]").prop('disabled', true);}

  		});
  </script>
<script type="text/javascript">
		//Them qua trinh cong tac
		$(function(){
			var count=2;
			$(".themquatrinhcongtac").click(function(){
   				$(".quatrinhcongtac tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
   					'<td><input type="text" name="thoigianct'+count+'" placeholder="   Thời gian" size="26" ></td>'+
   					'<td><input type="text" name="noicongtac'+count+'"  placeholder="   Nơi công tác" size="35" ></td>'+
					'<td><input type="text" name="chucvu'+count+'" placeholder="   Chức vụ" size="22" ></td>'+
   					'</tr>');
   				$("#hidden1").val(count);
   				count++;
   			});

		});

		//Them khoa hoc
		$(function(){
			var count=2;
			$(".themkhoahoc").click(function(){
   				$(".cackhoahocdambaovakiemdinhchatluong tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
   					'<td><input type="text" name="khoahoc'+count+'" placeholder="   Nhập tên khóa học" size="35" ></td>'+
   					'<td><input type="text" name="thoigiankh'+count+'"  placeholder="   Thời gian" size="22" ></td>'+
					'<td><input type="text" name="noidaotao'+count+'" placeholder="   Nơi đào tạo" size="26" ></td>'+
   					'</tr>');
   				$("#hidden2").val(count);
   				count++;
   			});

		});
		
</script>
<script>
		  $(function() {
		   $(".datepicker").datepicker({yearRange:'1930:2015',
			numberOfMonths: 1,  dateFormat: 'yy-mm-dd',
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
    </script>

<?php } ?>
<?php get_footer(); ?>