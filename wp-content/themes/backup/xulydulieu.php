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
										 	//mysql_query("COMMIT");
										 	$wpdb->query('COMMIT');
										 	$alert='Tạo cơ sở dữ liệu thành công!';
										 	echo '<script> alert($alert);</script>';
										 	//wp_redirect( home_url().'xem-thong-tin');
											//exit;
										} else {
										 	//mysql_query("ROLLBACK");
										 	$wpdb->query('ROLLBACK');
										 	$alert='Tạo cơ sở dữ liệu thất bại!';
										 	echo '<script> alert($alert);</script>';
										}
											//if (!empty($alert)) {
						  							//			echo '<script>alert("' . $alert . '");</script>';
						  							//}
										
						} //end if