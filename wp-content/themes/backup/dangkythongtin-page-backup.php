<!-- 
	Template Name: Đăng ký thông tin
-->
<?php
	session_start(); 
	global $wpdb;
	$get_ID = get_current_user_id();
	$selectid = $wpdb->get_results( 
	"
	SELECT ID
	FROM thongtinchung
	WHERE ID = '$get_ID'
	"
	);
	$security_code = $_SESSION['security_code'];
if (!is_user_logged_in()) { 
		wp_redirect(wp_login_url());
		exit;
	}   elseif ($wpdb->num_rows >0) {
				wp_redirect(home_url().'/xem-thong-tin');
				exit;
			}
				elseif ($wpdb->num_rows ==0) {
						get_header(); 
						ini_set('display_errors', 0);
						$current_user = wp_get_current_user();
					?>
							
					<?php
						if (isset($_POST['hoantat'])&&$_POST['capcha'] == $_SESSION['security_code']) {
									//$_POST['capcha'] == $_SESSION['security_code']
											//$wpdb->query('BEGIN');
											//$wpdb->query('SET AUTOCOMMIT = 0');

											$wpdb->query('START TRANSACTION');

										//////Nhap du lieu vao bang quatrinhcongtac
											$count1 = !empty($_POST['hidden1']) ? $_POST['hidden1'] : 1;
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
												}		
											}

										//////Nhap du lieu vao bang cackhoahoc	
											$count2 = !empty($_POST['hidden2']) ? $_POST['hidden2'] : 1;
											for ($j=1; $j <= $count2 ; $j++) {

												$khoahoc ='khoahoc'.$j;
												$$khoahoc = !empty($_POST[$khoahoc]) ? $_POST[$khoahoc]: null;
												$thoigiankh ='thoigiankh'.$j;
												$$thoigiankh = !empty($_POST[$thoigiankh]) ? $_POST[$thoigiankh]:null;
												$noidaotao ='noidaotao'.$j;
												$$noidaotao = !empty($_POST[$noidaotao]) ? $_POST[$noidaotao] :null;
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
											$count3 = !empty($_POST['hidden3']) ? $_POST['hidden3'] : 1;
											for ($l=1; $l <= $count3 ; $l++) {
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
												$tieuchuanduocphancong=substr($tieuchuanduocphancong,0,-1); echo $tieuchuanduocphancong;
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
											// start thongtincanhan
											$hovatendem = !empty($_POST['hovatendem']) ? $_POST['hovatendem'] : null;
											$ten = !empty($_POST['ten']) ? $_POST['ten'] : null;
											$ngaysinh = !empty($_POST['ngaysinh']) ? $_POST['ngaysinh'] : null;
											$gioitinh = !empty($_POST['gioitinh']) ? $_POST['gioitinh'] : null; 
											$quequan = !empty($_POST['quequan']) ? $_POST['quequan'] : null;
											$noicongtac = !empty($_POST['noicongtac']) ? $_POST['noicongtac'] : null;
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
											$vitrithamgiadgn=substr($vitrithamgiadgn,0,-1);
											$kinhnghiemvietbc=!empty($_POST['kinhnghiemvietbc']) ? $_POST['kinhnghiemvietbc'] : null;

											$kinhnghiemkhac= !empty($_POST['kinhnghiemkhac']) ? $_POST['kinhnghiemkhac'] : ''; //echo $kinhnghiemkhac;
											// end kinh nghiem trong dam bao chat luong va kiem dinh chat luong
											$insert_thongtinchung = $wpdb->insert( 'thongtinchung',
													array(
														'ID'=>$get_ID,//1
														'hovatendem'=>$hovatendem,
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
														'trinhdotinhoc'=>$trinhdotinhoc,//26
														'thamgiadgn'=>$thamgiadgn,//27
														'kinhnghiemvietbc'=>$kinhnghiemvietbc,//28
														'kinhnghiemkhac'=>$kinhnghiemkhac//29
														),
													array( 
														'%d','%s','%s','%s','%d',//1
														'%s','%s','%s','%s','%s',//2
														'%s','%s','%s','%s','%s',//3
														'%s','%s','%s','%s','%d',//4
														'%s','%s','%d','%s','%s',//5
														'%s','%d','%d','%s'//6
														)  
													);

										$count4 = $_POST['hidden4'];
										for ($j=1; $j <= $count4 ; $j++) {
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
										}//end for
										if
											(
												$hovatendem!=null&&$ten!=null&&$ngaysinh!=null
												&&$gioitinh!=null&&$quequan!=null&&$noicongtac!=null
												&&$thamniencongtac!=null&&$diachilienhe!=null&&$dienthoaididong!=null
												&&$emaillienhe!=null&&$hocvi!=null&&$chuyennganhthacsi!=null
												&&$noidaotaothacsi!=null&&$cckdv!=null&&$thekdv!=null
												&&$trinhdotinhoc!=null&&$thamgiadgn!=null&&$kinhnghiemvietbc!=null	
											)
										{
										 	$wpdb->query('COMMIT');
										 	$alert='Tạo cơ sở dữ liệu thành công!';
										 	echo '<script> alert($alert);</script>';
										 	wp_redirect( home_url().'xem-thong-tin');
											exit;
										} else {
										 	$wpdb->query('ROLLBACK');
										 	$alert='Tạo cơ sở dữ liệu thất bại!';

										}

						}
					?>	
					</head>
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
						        <li><a href="<?php echo home_url().'/tim-kiem'; ?>">Tìm kiếm</a></li>
						      </ul>
						      <ul class="nav navbar-nav navbar-right">
						        <li><a href="<?php echo wp_logout_url( home_url() ); ?>">Đăng xuất</a></li>
						      </ul>
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->
						</nav>
						<div class="container">
							<div class="header">
									<div class="headerimg">
										<img src="<?php echo bloginfo('template_directory').'/img/logo.jpg'; ?>" alt="" class="img-responsive" style="margin:10px auto">
									</div>
									<div class="headertitle alert-success">
										<h1>THÔNG TIN KIỂM ĐỊNH VIÊN</h1>
									</div>
							</div>
						</div>
						<div class="container">
								<div class="luuy bs-callout bs-callout-danger " id="callout-type-b-i-elems">
									<i>Lưu ý:<br>
									Quý Thầy/Cô vui lòng nhập đầy đủ thông tin vào các mục được đánh dấu (*)
									</i>
								</div>
								<form   action="<?php echo home_url().'/xem-thong-tin?submitted=yes'; ?>" method="post" name="formkdv" id="formkdv" onSubmit="return checksignup()" class="form-inline">				
								<div class="alert alert-danger">
									<h4>Phần I: Thông tin cá nhân</h4>
								</div> <!-- title -->

										<div class="hovaten form-group">
										<h4>1. Họ và tên Kiểm định viên (*)</h4>
												Họ và tên đệm
												<input type="text" class="form-control" name="hovatendem" id="hovatendem"  value="<?php  echo $_POST['hovatendem'];  ?>">
												Tên
												<input class="form-control" type="text" name="ten" id="ten" value="<?php  echo $_POST['ten'];  ?>">
												<span style="color:red;display:none;" id="hovatendem_error"></span>
												<span style="color:red;display:none;" id="ten_error"></span>

										</div> <!-- hovaten -->
									<div class="ngaysinh form-group">
									 	<h4>2. Ngày sinh (*)</h4>
									 			<span style="color:red;display:none;" id="ngaysinh_error"></span> 
									 	 		<input  type="text" class="datepicker form-control" name="ngaysinh" id="ngaysinh" value="<?php  echo $_POST['ngaysinh'];  ?>"> (Theo định dạng ngày-tháng-năm)
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
										<input type="text" class="form-control"  name="quequan" value="<?php  echo $_POST['quequan'];  ?>">
										<span style="color:red;display:none;" id="quequan_error"></span>
									</div> <!-- quequan -->
									<div class="noicongtac">
										<h4>5. Nơi công tác (*)</h4>
										<input type="text" class="form-control"  name="noicongtac" style="" value="<?php  echo $_POST['noicongtac'];  ?>">
										<span style="color:red;display:none;" id="noicongtac_error"></span>
									</div> <!-- noicongtac -->
									<div class="thamniencongtac">
										<h4>6. Thâm niên công tác (*)</h4>
										<input type="text" class="form-control" name="thamniencongtac" style=""  value="<?php  echo $_POST['thamniencongtac'];  ?>"> năm
										<span style="color:red;display:none;" id="thamniencongtac_error"></span>
									</div> <!-- thamniencongtac -->
								<div class="alert alert-danger">
									<h4>Phần II: Thông tin liên lạc</h4>
								</div> <!-- title -->
									<div class="diachilienhe">
										<h4>7. Địa chỉ liên hệ (*)</h4>
										<input type="text"  class="form-control"name="diachilienhe" style=""  value="<?php  echo $_POST['diachilienhe'];  ?>">
										<span style="color:red;display:none;" id="diachilienhe_error"></span>
									</div> <!-- diachilienhe -->
									<div class="dienthoaicodinh">
										<h4>8. Điện thoại cố định</h4>
										<input type="text" class="form-control" name="dienthoaicodinh" style=""  value="<?php  echo $_POST['dienthoaicodinh'];  ?>">
									</div> <!-- dienthoaicodinh -->
									<div class="dienthoaididong">
										<h4>9. Điện thoại di động (*)</h4>
										<input type="text" class="form-control" name="dienthoaididong" style=""  value="<?php  echo $_POST['dienthoaididong'];  ?>">
										<span style="color:red;display:none;" id="dienthoaididong_error"></span>
									</div> <!-- dienthoadidong -->
									<div class="email">
										<h4>10. Email liên hệ (*)</h4>
										<input type="text" class="form-control" name="emaillienhe" style=""  value="<?php  echo $_POST['emaillienhe'];  ?>">
										<span style="color:red;display:none;" id="emaillienhe_error"></span>
									</div> <!-- email -->
									<div class="fax">
										<h4>11. Fax</h4>
										<input type="text" class="form-control" name="fax" style=""  value="<?php  echo $_POST['fax'];  ?>">
									</div> <!-- fax -->
								<div class="alert alert-danger">
									<h4>Phần III: Trình độ chuyên môn, nghiệp vụ</h4>
								</div> <!-- title -->
									<div class="hochamhocvi">
										<h4>12. Chức danh và học vị (*)</h4>
										<span>Chức danh </span><input type="text" class="form-control" name="hocham" style="" value="<?php  echo $_POST['hocham'];  ?>">
										<span> Học vị </span><input type="text" class="form-control" name="hocvi" style="" value="<?php  echo $_POST['hocvi'];  ?>">
										<span style="color:red;display:none;" id="hocvi_error"></span>
									</div> <!-- hochamhocvi -->
									<div class="linhvucchuyenmon">
										<h4>13. Lĩnh vực chuyên môn</h4>
										<?php 
											$linhvucchuyenmon = $wpdb->get_results('SELECT * from danhmucmanganh',ARRAY_N);
										?>
											<select name="linhvucchuyenmon" class="form-control" id="linhvucchuyenmon">
												<?php
												foreach ($linhvucchuyenmon as $key ) { ?>
													<option value="<?php echo $key[1]; ?>"><?php echo $key[1]; ?></option>
												<?php } ?>
										 	</select>
									</div> <!-- end .linhvucchuyenmon -->
									<div class="chuyennganhdaotaobacthacsi">
										<h4>14. Chuyên ngành đào tạo bậc thạc sĩ (*)</h4>
										<table class="table table-striped table-hover trinhdothacsi">
											<tr class="success">
												<td align="center">STT</td>
												<td align="center">Chuyên ngành đào tạo thạc sĩ</td>
												<td align="center">Nơi đào tạo thạc sĩ</td>
												<td align="center">Năm cấp bằng</td>
											</tr>
											<tr>
												<td align="center">1</td>
												<td align="center"><input type="text" align="center" class="form-control" placeholder ="Chuyên ngành đào tạo" name="chuyennganhthacsi1"></td>
												<td align="center"><input type="text" align="center" class="form-control" placeholder ="Nơi đào tạo" name="noidaotaothacsi1"></td>
												<td align="center"><input type="text" align="center" class="form-control" placeholder ="Năm cấp bằng" name="namcapbangthacsi1"></td>
											</tr>	
										</table>
										<button class="btn btn-primary btn-sm" type="button" id="themtrinhdothacsi" >Thêm</button>
										<input type="hidden" name="counttrinhdothacsi" id="counttrinhdothacsi">

									</div> <!-- chuyennganhdaotaobacthacsi -->
									<div class="chuyennganhdaotaobactiensi">
										<h4>15. Chuyên ngành đào tạo bậc tiến sĩ</h4>
										<table class="table table-striped table-hover trinhdotiensi">
											<tr class="success">
												<td align="center">STT</td>
												<td align="center">Chuyên ngành đào tạo bậc tiến sĩ</td>
												<td align="center">Nơi đào tạo tiến sĩ</td>
												<td align="center">Năm cấp bằng</td>
											</tr>
											<tr>
												<td align="center">1</td>
												<td align="center"><input type="text" align="center" class="form-control" placeholder ="Chuyên ngành đào tạo" name ="chuyennganhtiensi1"></td>
												<td align="center"><input type="text" align="center" class="form-control" placeholder ="Nơi đào tạo" name="noidaotaotiensi1"></td>
												<td align="center"><input type="text" align="center" class="form-control" placeholder ="Năm cấp bằng" name="namcapbangtiensi1"></td>
											</tr>	
										</table>
										<button class="btn btn-primary btn-sm" type="button" id="themtrinhdotiensi" >Thêm</button>
										<input type="hidden" name="counttrinhdotiensi" id="counttrinhdotiensi">
										
									<div class="chungchidaotaokiemdinhvien">
										<h4>16.Chứng chỉ đào tạo Kiểm định viên (*)</h4>
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
											<span>Số chứng chỉ</span> <input type="text" class="form-control" name="sochungchi" <?php echo $_POST['cckdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
											'sochungchi']; ?>">
											<span> Ngày cấp chứng chỉ</span> <input type="text" class="datepicker form-control" name="ngaycapcc" <?php echo $_POST['cckdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
											'ngaycapcc']; ?>">
										</div> <!-- sothe -->

									</div> <!-- cckiemdinhvien -->
									<div class="thekiemdinhvien">
										<h4>17. Thẻ Kiểm định viên (*)</h4>
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
											<span>Số thẻ</span> <input class="form-control" type="text" name="sothekdv" <?php echo $_POST['thekdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
											'sothekdv']; ?>">
											<span> Ngày cấp thẻ</span> <input type="text" class="datepicker form-control" name="ngaycapthe"  <?php echo $_POST['thekdv']!=1 ? 'disabled="disabled"' : ''; ?> value="<?php echo $_POST[
											'ngaycapthe']; ?>">
										</div> <!-- sothe -->
									</div> <!-- thekiemdinhvien -->
									<div class="trinhdongoaingu">
										<h4>18. Trình độ ngoại ngữ (*)</h4>
										<table class="ngoaingu table table-striped table-hover"  cellpadding="2" cellspacing="0">
												
												<tr style="font-weight:bold; font-size:17px;" class="success">
														<td width="40" style="text-align:center">STT</td>
														<td width="100" style="text-align:center">Ngoại ngữ</td>
														<td width="100" style="text-align:center">Nghe</td>
														<td width="100" style="text-align:center">Nói</td>
														<td width="100" style="text-align:center">Đọc</td>
														<td width="100" style="text-align:center">Viết</td>

													</tr>
													<tr>
														<td align="center">1</td>
														<td align="center">
															<select name="ngoaingu1" class="ngoaingu1 form-control" >
																<option value="1">Tiếng Anh</option>
																<option value="2">Tiếng Pháp</option>
																<option value="3">Tiếng Nga</option>
																<option value="4">Tiếng Đức</option>
																<option value="5">Ngoại ngữ khác</option>
																
															</select>
															<input hidden type="text" name="ngoaingukhac1" value="" placeholder="" class="ngoaingukhac1"  style="display: none;margin-top:5px;">	
														</td>
														<td align="center">
															<select name="nghe1" class="form-control">
																<option value="1">Tốt</option>
																<option value="2">Khá</option>
																<option value="3">Trung bình</option>
																<option value="4">Yếu</option>
															</select>
														</td>
														<td align="center" >
															<select name="noi1" class="form-control">
																<option value="1">Tốt</option>
																<option value="2">Khá</option>
																<option value="3">Trung bình</option>
																<option value="4">Yếu</option>
															</select>
														</td>
														<td align="center" >
															<select name="doc1" class="form-control" >
																<option value="1">Tốt</option>
																<option value="2">Khá</option>
																<option value="3">Trung bình</option>
																<option value="4">Yếu</option>
															</select>
														</td>
														<td align="center" >
															<select name="viet1" class="form-control">
																<option value="1">Tốt</option>
																<option value="2">Khá</option>
																<option value="3">Trung bình</option>
																<option value="4">Yếu</option>
															</select>
														</td>
													</tr>
											</table>
											<button id="buttonngoaingu" type="button"  class="btn btn-primary btn-sm">Thêm</button>
									</div> <!-- trinhdongoaingu -->
									<div class="trinhdotinhoc">
										<h4>19. Trình độ tin học (*)</h4>
										<input type="text" name="trinhdotinhoc" class="form-control" value="<?php  echo $_POST['trinhdotinhoc'];  ?>">
										<span style="color:red;display:none;" id="trinhdotinhoc_error"></span>
									</div> <!-- trinhdotinhoc -->
								<div class="alert alert-danger">
									<h4>Phần IV: Quá trình công tác</h4>			
								</div> <!-- title -->
									<div class="quatrinhcongtac">
										<table cellpadding="2" cellspacing="0" class="table table-striped table-hover">
											<tr style="font-weight:bold; font-size:17px;" class="success">
												<td align="center">STT</td>
												<td align="center">Thời gian</td>
												<td align="center">Nơi công tác</td>
												<td align="center">Chức vụ</td>
											</tr>
											<tr>
												<td align="center">1</td>
												<td align="center"><input type="text" class="form-control" name="thoigianct1" placeholder="   Thời gian"  value="<?php  echo $_POST['thoigianct1'];?>" ></td>
												<td align="center"><input type="text" class="form-control" name="noicongtac1"  placeholder="   Nơi công tác"  value="<?php  echo $_POST['noicongtac1'];?>"></td>
												<td align="center"><input type="text" class="form-control" name="chucvu1" placeholder="   Chức vụ"  value="<?php  echo $_POST['chucvu1'];?>"></td>
											</tr>
								
										</table>
										<button class="themquatrinhcongtac btn btn-primary btn-sm" type="button" >Thêm</button>
									</div> <!-- quatrinhcongtac -->
								<div class="alert alert-danger">
									<h4>Phần V: Kinh nghiệm trong Đảm bảo và Kiểm định chất lượng</h4>			
								</div> <!-- title -->
									<div class="thamgiadgn">
										<h4>20. Thầy/Cô đã từng tham gia đoàn Đánh giá ngoài (ĐGN) chưa?  (*)</h4>
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
									<div class="bangthamgiadgn" style="display:none" >
										<table  cellpadding="2" cellspacing="0" class="thamgiadgn table table-striped" >
											<tr class="success">
												<td>STT</td>
												<td>Đơn vị tổ chức</td>
												<td>Đơn vị được đánh giá</td>
												<td>Vai trò trong đoàn</td>
												<td>Tiêu chuẩn được phân công</td>
											</tr>
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
									
									</table>
									<button id="button3" type="button"  class="btn btn-primary btn-sm">Thêm</button>
									</div> <!-- bangthamgiadgn -->
									<div class="kinhnghiemvietbc">
										<h4>21. Thầy/Cô đã có kinh nghiệm viết báo cáo tự đánh giá chưa? (*)</h4>
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
										<h4>22. Các khóa học liên quan đến Đảm bảo và Kiểm định chất lượng mà Thầy/Cô đã từng tham gia</h4>
										<table cellpadding="2" cellspacing="0"  width="800px" class="table table-striped">
											<tr style="font-weight:bold; font-size:17px;" class="success">
												<td width="40px" align="center">STT</td>
												<td width="300px" align="center">Tên khóa học</td>
												<td width="200px" align="center">Thời gian</td>
												<td width="250px" align="center">Nơi đào tạo</td>
											</tr>
											<tr>
												<td align="center">1</td>
												<td align="center"><input class="form-control" type="text" name="khoahoc1" placeholder="   Nhập tên Khóa học"  value="<?php  echo $_POST['khoahoc1'];?>"></td>
												<td align="center"><input class="form-control" type="text" name="thoigiankh1"  placeholder="   Thời gian"  value="<?php  echo $_POST['thoigiankh1'];?>" ></td>
												<td align="center"><input class="form-control" type="text" name="noidaotao1" placeholder="   Nơi đào tạo"  value="<?php  echo $_POST['noidaotao1'];?>"></td>
											</tr>
											
											
										</table>
										<button class="themkhoahoc btn btn-primary btn-sm" type="button" >Thêm</button>
									</div> <!-- cackhoahocdambaovakiemdinhchatluong -->
									<div class="kinhnghiemkhac">
											<h4>23. Những kinh nghiệm khác liên quan đến Đảm bảo và Kiểm định chất lượng giáo dục</h4>
											<textarea name="kinhnghiemkhac" class="form-control" style="font-size:17px;width:100%;" rows="10" value="<?php  echo $_POST['kinhnghiemkhac'];?>"></textarea>
									</div> <!-- nhungkinhnghiemkhac -->
									<br>
									 <div class="capcha"><label for="captcha">Captcha</label>
								      	<input name="capcha" class ="form-control" type="text" id="capcha" value="<?php  echo $_POST["capcha"]; ?>"  maxlength="10" /><font color="#FF0000">(*)
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
										<input type="submit" value="Hoàn tất" name="hoantat" id="hoantat" class="btn btn-success">
									</div>
									<!-- Dung de lay so luong dong cho bang qua trinh cong tac -->
									<input type="hidden" name="hidden1" id="hidden1" />
									<!-- Dung de lay so luong dong cho bang cac khoa hoc -->
									<input type="hidden" name="hidden2" id="hidden2" />
									<input type="hidden" name="hidden3" id="hidden3" />
									<input type="hidden" name="hidden4" id="hidden4" />
									<input type="hidden" name="hidden5" id="hidden5" />
									</form>
							</div>
						</div> <!-- container -->
						<script type="text/javascript" src="<?php echo bloginfo('template_directory').'/js/jquery-1.11.2.min.js'; ?>"></script>
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
								var count=2;
								$(".themquatrinhcongtac").click(function(){
					   				$(".quatrinhcongtac tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
					   					'<td align="center"><input type="text" class="form-control" name="thoigianct'+count+'" placeholder="   Thời gian"  ></td>'+
					   					'<td align="center"><input type="text" class="form-control" name="noicongtac'+count+'"  placeholder="   Nơi công tác"  ></td>'+
										'<td align="center"><input type="text" class="form-control" name="chucvu'+count+'" placeholder="   Chức vụ"  ></td>'+
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
					   					'<td align="center"><input type="text" class="form-control" name="khoahoc'+count+'" placeholder="   Nhập tên khóa học" ></td>'+
					   					'<td align="center"><input type="text" class="form-control" name="thoigiankh'+count+'"  placeholder="   Thời gian"  ></td>'+
										'<td align="center"><input type="text" class="form-control" name="noidaotao'+count+'" placeholder="   Nơi đào tạo"  ></td>'+
					   					'</tr>');
					   				$("#hidden2").val(count);
					   				count++;
					   			});

							});
							//Them trinh do thac si
							$(function(){
								var count=2;
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
								var count=2;
								$("#themtrinhdotiensi").click(function(){
					   				$(".trinhdotiensi tr:last").after('<tr>'+'<td align="center">'+count+'</td>'+
					   					'<td align="center"><input type="text" class="form-control" name="chuyennganhtiensi'+count+'" placeholder="Chuyên ngành đào tạo" name="chuyennganhtiensi'+count+'" ></td>'+
					   					'<td align="center"><input type="text" class="form-control" name="noidaotaotiensi'+count+'"  placeholder="Nơi đào tạo" name="noidaotaotiensi'+count+'" ></td>'+
										'<td align="center"><input type="text" class="form-control" name="namcapbangtiensi'+count+'" placeholder="Năm cấp bằng" name="namcapbangtiensi'+count+'" ></td>'+
					   					'</tr>');
					   				$("#counttrinhdotiensi").val(count);
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
								var count=2;
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
															'<select name="nghe' + count + '" class="form-control">'+
																'<option value="1">Tốt</option>'+
																'<option value="2">Khá</option>'+
																'<option value="3">Trung bình</option>'+
																'<option value="4">Yếu</option>'+
															'</select>'+
														'</td>'+
														'<td align="center">'+
															'<select name="noi' + count + '" class="form-control">'+
																'<option value="1">Tốt</option>'+
																'<option value="2">Khá</option>'+
																'<option value="3">Trung bình</option>'+
																'<option value="4">Yếu</option>'+
															'</select>'+
														'</td>'+
														'<td align="center">'+
															'<select name="doc' + count + '" class="form-control">'+
																'<option value="1">Tốt</option>'+
																'<option value="2">Khá</option>'+
																'<option value="3">Trung bình</option>'+
																'<option value="4">Yếu</option>'+
															'</select>'+
														'</td>'+
														'<td align="center">'+
															'<select name="viet' + count + '" class="form-control">'+
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
								var count=2;
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
								$("#hidden3").val(count);
					   			});
								
							});

						</script>
					<?php get_footer(); }
					?>
