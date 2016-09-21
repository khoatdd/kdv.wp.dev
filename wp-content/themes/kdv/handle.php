<!-- 
 Template Name: Handle
-->
<?php
// echo '<pre>';
// print_r($_POST);
// echo '</pre>';
global $wpdb;
$user_id = get_current_user_id();
/* === When users CREATE their profiles === */
if (isset($_POST['create'])) {
	/* --Thongtinchung-- */
	$hovatendem = !empty($_POST['hovatendem']) ? $_POST['hovatendem'] : null;
	$ten = !empty($_POST['ten']) ? $_POST['ten'] : null;
	$ngaysinh = !empty($_POST['ngaysinh']) ? date("Y-m-d", strtotime($_POST['ngaysinh'])) : null;
	$gioitinh = !empty($_POST['gioitinh']) ? $_POST['gioitinh'] : null;
	$quequan = !empty($_POST['quequan']) ? $_POST['quequan'] : null;
	$noicongtac = !empty($_POST['noicongtac']) ? $_POST['noicongtac'] : null;
	$thamniencongtac = !empty($_POST['thamniencongtac']) ? $_POST['thamniencongtac'] : null;
	$diachilienhe= !empty($_POST['diachilienhe']) ? $_POST['diachilienhe'] : null;
	$dienthoaicodinh=!empty($_POST['dienthoaicodinh']) ? $_POST['dienthoaicodinh'] : '';
	$dienthoaididong=!empty($_POST['dienthoaididong']) ? $_POST['dienthoaididong'] : null;
	$emaillienhe=!empty($_POST['emaillienhe']) ? $_POST['emaillienhe'] : null;
	$fax=!empty($_POST['fax']) ? $_POST['fax'] : '';
	$chucdanh=!empty($_POST['chucdanh']) ? $_POST['chucdanh'] : null;
	$hocvi=!empty($_POST['hocvi']) ? $_POST['hocvi'] : null;
	$linhvucchuyenmon = !empty($_POST['linhvucchuyenmon']) ? $_POST['linhvucchuyenmon'] : null;
	$cckdv=!empty($_POST['cckdv']) ? $_POST['cckdv'] : null ;
	$sochungchi=!empty($_POST['sochungchi']) ? $_POST['sochungchi'] : '' ;
	$ngaycapcc=!empty($_POST['ngaycapcc']) ? date("Y-m-d", strtotime($_POST['ngaycapcc'])) : null ;
	$thekdv=!empty($_POST['thekdv']) ? $_POST['thekdv'] : null;
	$sothekdv=!empty($_POST['sothekdv']) ? $_POST['sothekdv'] : '';
	$ngaycapthe=!empty($_POST['ngaycapthe']) ? date("Y-m-d", strtotime($_POST['ngaycapthe'])) : null;
	$trinhdotinhoc=!empty($_POST['trinhdotinhoc']) ? $_POST['trinhdotinhoc'] : null;
	$thamgiadgn = !empty($_POST['thamgiadgn']) ? $_POST['thamgiadgn'] : null;
	$kinhnghiemvietbc=!empty($_POST['kinhnghiemvietbc']) ? $_POST['kinhnghiemvietbc'] : null;
	$kinhnghiemkhac= !empty($_POST['kinhnghiemkhac']) ? $_POST['kinhnghiemkhac'] : '';
	$inserThongTinChung = $wpdb->insert
	(
		'thongtinchung',
		array(
			'user_id'=>$user_id,//1
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
			'chucdanh'=>$chucdanh,
			'hocvi'=>$hocvi,//15
			'linhvucchuyenmon' => $linhvucchuyenmon,
			'cckdv'=>$cckdv,
			'sochungchi'=>$sochungchi,
			'ngaycapcc'=>$ngaycapcc,
			'thekdv'=>$thekdv,//20
			'sothekdv'=>$sothekdv,
			'ngaycapthe'=>$ngaycapthe,
			'trinhdotinhoc'=>$trinhdotinhoc,
			'thamgiadgn'=>$thamgiadgn,
			'kinhnghiemvietbc'=>$kinhnghiemvietbc,//25
			'kinhnghiemkhac'=>$kinhnghiemkhac
		),
		array(
			'%d','%s','%s','%s','%d',
			'%s','%s','%s','%s','%s',
			'%s','%s','%s','%s','%s',
			'%s','%d','%s','%s','%d',
			'%s','%s','%s','%d','%d','%s'
		)
	);
	/* === Nhap du lieu vao bang trinhdothacsi === */
	$chuyennganhthacsi = $_POST['chuyennganhthacsi'];
	$noidaotaothacsi = $_POST['noidaotaothacsi'];
	$namcapbangthacsi = $_POST['namcapbangthacsi'];
	for ($i=0; $i < count($chuyennganhthacsi) ; $i++) { 
		$insertTrinhDoThacSi = $wpdb->insert
		(
			'trinhdothacsi',
	        array(
	        	'user_id' => $user_id,
	            'chuyennganhthacsi' => $chuyennganhthacsi[$i],
	            'noidaotaothacsi' => $noidaotaothacsi[$i],
	            'namcapbangthacsi' => $namcapbangthacsi[$i],
	        ),
	        array(
	        	'%d',
	            '%s',
	            '%s',
	            '%s'
	        )
	    );
	}

	/* === Nhap du lieu vao bang trinhdotiensi === */
	$chuyennganhtiensi = $_POST['chuyennganhtiensi'];
	$noidaotaotiensi = $_POST['noidaotaotiensi'];
	$namcapbangtiensi = $_POST['namcapbangtiensi'];
	for ($i=0; $i < count($chuyennganhtiensi) ; $i++) { 
		$insertTrinhDoTienSi = $wpdb->insert
		(
			'trinhdotiensi',
	        array(
	        	'user_id' => $user_id,
	            'chuyennganhtiensi' => $chuyennganhtiensi[$i],
	            'noidaotaotiensi' => $noidaotaotiensi[$i],
	            'namcapbangtiensi' => $namcapbangtiensi[$i],
	        ),
	        array(
	        	'%d',
	            '%s',
	            '%s',
	            '%s'
	        )
	    );
	}

	/* === Nhap du lieu vao bang trinhdongoaingu === */
	$ngoaingu = $_POST['ngoaingu'];
	$ngoaingukhac = $_POST['ngoaingukhac'];
	$nghe = $_POST['nghe'];
	$noi = $_POST['noi'];
	$doc = $_POST['doc'];
	$viet = $_POST['viet'];
	for ($i=0; $i < count($nghe); $i++) {
		if ($ngoaingu[$i] == 0) {
			continue;
		}
		if ($ngoaingu[$i] == 5) {
			$ngoaingu[$i] = $ngoaingukhac[$i];
		}
		$insert_trinhdongoaingu = $wpdb->insert(
			'trinhdongoaingu',
	        array(
	            'user_id' => $user_id,
	            'tenngoaingu' => $ngoaingu[$i],
	            'nghe' => $nghe[$i],
	            'noi' => $noi[$i],
	            'doc' => $doc[$i],
	            'viet' => $viet[$i]
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
	}

	/* === Nhap du lieu vao bang quatrinhcongtac === */
	$thoigianct = $_POST['thoigianct'];
	$donvicongtac = $_POST['noicongtac_quatrinh'];
	$chucvu = $_POST['chucvu'];
	for ($i=0; $i < count($thoigianct); $i++) { 
		$insertQuaTrinhCongTac = $wpdb->insert(
			'quatrinhcongtac',
			array(
				'user_id' => $user_id,
	            'thoigian' => $thoigianct[$i],
	            'donvicongtac' => $donvicongtac[$i],
	            'chucvu' => $chucvu[$i]
			),
			array(
				'%d',
	            '%s',
	            '%s',
	            '%s'
			)
		);
	}

	/* === Nhap du lieu vao bang thamgiadgn === */
	if ($thamgiadgn == 1) {
		$countthamgiadgn_insert = !empty($_POST['countthamgiadgn']) ? $_POST['countthamgiadgn'] : 0;
		for ($l= 1; $l <= $countthamgiadgn_insert ; $l++) {
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
				$insert_thamgiadgn = $wpdb->insert
				(
					'thamgiadgn',
					array(
						'user_id'=>$user_id,
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
	}

	/* === Nhap du lieu vao bang cackhoahoc === */
	$khoahoc = $_POST['khoahoc'];
	$thoigiankh = $_POST['thoigiankh'];
	$noidaotao = $_POST['noidaotao'];
	for ($i=0; $i < count($khoahoc) ; $i++) { 
		$insert_cackhoahoc = $wpdb->insert(
			'cackhoahoc',
		    array(
		    	'user_id' => $user_id,
		        'tenkhoahoc' => $khoahoc[$i],
		        'thoigian' => $thoigiankh[$i],
		        'noidaotao' => $noidaotao[$i]
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

/* === When users UPDATE their profiles === */
if (isset($_POST['update'])) {
	// echo '<pre>';
	// echo $user_id;
	// print_r($_POST);
	// echo '</pre>';
	/* === Nhap du lieu vao bang thongtinchung === */
	$hovatendem = !empty($_POST['hovatendem']) ? $_POST['hovatendem'] : null;
	$ten = !empty($_POST['ten']) ? $_POST['ten'] : null;
	$ngaysinh = !empty($_POST['ngaysinh']) ? date("Y-m-d", strtotime($_POST['ngaysinh'])) : null;
	$gioitinh = !empty($_POST['gioitinh']) ? $_POST['gioitinh'] : null;
	$quequan = !empty($_POST['quequan']) ? $_POST['quequan'] : null;
	$noicongtac = !empty($_POST['noicongtac']) ? $_POST['noicongtac'] : null;
	$thamniencongtac = !empty($_POST['thamniencongtac']) ? $_POST['thamniencongtac'] : null;
	$diachilienhe= !empty($_POST['diachilienhe']) ? $_POST['diachilienhe'] : null;
	$dienthoaicodinh=!empty($_POST['dienthoaicodinh']) ? $_POST['dienthoaicodinh'] : '';
	$dienthoaididong=!empty($_POST['dienthoaididong']) ? $_POST['dienthoaididong'] : null;
	$emaillienhe=!empty($_POST['emaillienhe']) ? $_POST['emaillienhe'] : null;
	$fax=!empty($_POST['fax']) ? $_POST['fax'] : '';
	$chucdanh=!empty($_POST['chucdanh']) ? $_POST['chucdanh'] : null;
	$hocvi=!empty($_POST['hocvi']) ? $_POST['hocvi'] : null;
	$linhvucchuyenmon = !empty($_POST['linhvucchuyenmon']) ? $_POST['linhvucchuyenmon'] : null;
	$cckdv=!empty($_POST['cckdv']) ? $_POST['cckdv'] : null ;
	$sochungchi=!empty($_POST['sochungchi']) ? $_POST['sochungchi'] : '' ;
	$ngaycapcc=!empty($_POST['ngaycapcc']) ? date("Y-m-d", strtotime($_POST['ngaycapcc'])) : null ;
	$thekdv=!empty($_POST['thekdv']) ? $_POST['thekdv'] : null;
	$sothekdv=!empty($_POST['sothekdv']) ? $_POST['sothekdv'] : '';
	$ngaycapthe=!empty($_POST['ngaycapthe']) ? date("Y-m-d", strtotime($_POST['ngaycapthe'])) : null;
	$trinhdotinhoc=!empty($_POST['trinhdotinhoc']) ? $_POST['trinhdotinhoc'] : null;
	$thamgiadgn = !empty($_POST['thamgiadgn']) ? $_POST['thamgiadgn'] : null;
	$kinhnghiemvietbc=!empty($_POST['kinhnghiemvietbc']) ? $_POST['kinhnghiemvietbc'] : null;
	$kinhnghiemkhac= !empty($_POST['kinhnghiemkhac']) ? $_POST['kinhnghiemkhac'] : '';
	$wpdb->update
	(
	    'thongtinchung',
	    array(
	        'hovatendem' => $hovatendem,
	        'ten' => $ten,
	        'ngaysinh' => $ngaysinh,
	        'gioitinh' => $gioitinh,
	        'quequan' => $quequan,//5
	        'noicongtac' => $noicongtac,
	        'thamniencongtac' => $thamniencongtac,
	        'diachilienhe' => $diachilienhe,
	        'dienthoaicodinh' => $dienthoaicodinh,
	        'dienthoaididong' => $dienthoaididong,//10
	        'emaillienhe' => $emaillienhe,
	        'fax' => $fax,
	        'chucdanh' => $chucdanh,
	        'hocvi' => $hocvi,
	        'cckdv' => $cckdv,//15
	        'sochungchi' => $sochungchi,
	        'ngaycapcc' => $ngaycapcc,
	        'thekdv' => $thekdv,
	        'sothekdv' => $sothekdv,
	        'ngaycapthe' => $ngaycapthe,//20
	        'trinhdotinhoc' => $trinhdotinhoc,
	        'thamgiadgn' => $thamgiadgn,
	        'kinhnghiemvietbc' => $kinhnghiemvietbc,
	        'kinhnghiemkhac' => $kinhnghiemkhac,
	        'linhvucchuyenmon' => $linhvucchuyenmon//25
	    ),
	    array('user_id' => $user_id),
	    array(
	        '%s', '%s', '%s', '%d', '%s',//1
	        '%s', '%s', '%s', '%s', '%s',//2
	        '%s', '%s', '%s', '%s', '%d',//3
	        '%s', '%s', '%d', '%s', '%s',//4
	        '%s', '%d', '%d', '%s', '%s'//5
	    ),
	    array('%d')
	);

	/* === Nhap du lieu vao bang trinhdothacsi === */
	$chuyennganhthacsi = $_POST['chuyennganhthacsi'];
	$noidaotaothacsi = $_POST['noidaotaothacsi'];
	$namcapbangthacsi = $_POST['namcapbangthacsi'];
	$wpdb->delete
	(
		'trinhdothacsi',
		array('user_id' => $user_id),
		array('%d')
	);
	for ($i=0; $i < count($chuyennganhthacsi) ; $i++) { 
		$insertTrinhDoThacSi = $wpdb->insert
		(
			'trinhdothacsi',
	        array(
	        	'user_id' => $user_id,
	            'chuyennganhthacsi' => $chuyennganhthacsi[$i],
	            'noidaotaothacsi' => $noidaotaothacsi[$i],
	            'namcapbangthacsi' => $namcapbangthacsi[$i],
	        ),
	        array(
	        	'%d',
	            '%s',
	            '%s',
	            '%s'
	        )
	    );
	}
	/* === Nhap du lieu vao bang trinhdotiensi === */
	$chuyennganhtiensi = $_POST['chuyennganhtiensi'];
	$noidaotaotiensi = $_POST['noidaotaotiensi'];
	$namcapbangtiensi = $_POST['namcapbangtiensi'];
	$wpdb->delete
	(
		'trinhdotiensi',
		array('user_id' => $user_id),
		array('%d')
	);
	for ($i=0; $i < count($chuyennganhtiensi) ; $i++) { 
		$insertTrinhDoTienSi = $wpdb->insert
		(
			'trinhdotiensi',
	        array(
	        	'user_id' => $user_id,
	            'chuyennganhtiensi' => $chuyennganhtiensi[$i],
	            'noidaotaotiensi' => $noidaotaotiensi[$i],
	            'namcapbangtiensi' => $namcapbangtiensi[$i],
	        ),
	        array(
	        	'%d',
	            '%s',
	            '%s',
	            '%s'
	        )
	    );
	}

	/* === Nhap du lieu vao bang trinhdongoaingu === */
	$ngoaingu = $_POST['ngoaingu'];
	$ngoaingukhac = $_POST['ngoaingukhac'];
	$nghe = $_POST['nghe'];
	$noi = $_POST['noi'];
	$doc = $_POST['doc'];
	$viet = $_POST['viet'];
	$wpdb->delete(
		'trinhdongoaingu',
		array('user_id' => $user_id ),
		array('%d')
	);
	for ($i=0; $i < count($nghe); $i++) {
		if ($ngoaingu[$i] == 0) {
			continue;
		}
		if ($ngoaingu[$i] == 5) {
			$ngoaingu[$i] = $ngoaingukhac[$i];
		}
		$insert_trinhdongoaingu = $wpdb->insert(
			'trinhdongoaingu',
	        array(
	            'user_id' => $user_id,
	            'tenngoaingu' => $ngoaingu[$i],
	            'nghe' => $nghe[$i],
	            'noi' => $noi[$i],
	            'doc' => $doc[$i],
	            'viet' => $viet[$i]
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
	}

	/* === Nhap du lieu vao bang quatrinhcongtac === */
	$thoigianct = $_POST['thoigianct'];
	$donvicongtac = $_POST['noicongtac_quatrinh'];
	$chucvu = $_POST['chucvu'];
	$wpdb->delete(
		'quatrinhcongtac',
		array('user_id' => $user_id),
		array('%d')
	);
	for ($i=0; $i < count($thoigianct); $i++) { 
		$insertQuaTrinhCongTac = $wpdb->insert(
			'quatrinhcongtac',
			array(
				'user_id' => $user_id,
	            'thoigian' => $thoigianct[$i],
	            'donvicongtac' => $donvicongtac[$i],
	            'chucvu' => $chucvu[$i]
			),
			array(
				'%d',
	            '%s',
	            '%s',
	            '%s'
			)
		);
	}

	/* === Nhap du lieu vao bang thamgiadgn === */
	$wpdb->delete(
		'thamgiadgn',
		array('user_id' => $user_id),
		array('%d')
	);
	if ($thamgiadgn == 1) {
		$countthamgiadgn_insert = !empty($_POST['countthamgiadgn']) ? $_POST['countthamgiadgn'] : 0;
		for ($l= 1; $l <= $countthamgiadgn_insert ; $l++) {
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
					'user_id'=>$user_id,
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
	}

	/* === Nhap du lieu vao bang cackhoahoc === */
	$khoahoc = $_POST['khoahoc'];
	$thoigiankh = $_POST['thoigiankh'];
	$noidaotao = $_POST['noidaotao'];
	$wpdb->delete(
		'cackhoahoc',
		array('user_id' => $user_id),
		array('%d')
	);
	for ($i=0; $i < count($khoahoc) ; $i++) { 
		$insert_cackhoahoc = $wpdb->insert(
			'cackhoahoc',
		    array(
		    	'user_id' => $user_id,
		        'tenkhoahoc' => $khoahoc[$i],
		        'thoigian' => $thoigiankh[$i],
		        'noidaotao' => $noidaotao[$i]
		    ),
		    array(
		        '%d',
		        '%s',
		        '%s',
		        '%s'
		    )
		);
	}
	wp_redirect(home_url('/view'));
	exit;
}
// $wpdb->query('TRANSACTION');
// $wpdb->query('COMMIT');
// $wpdb->query('ROLLBACK');