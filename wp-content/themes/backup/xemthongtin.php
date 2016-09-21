<!--
Template Name: Xem thông tin
-->
<?php
session_start();
global $wpdb;
$get_ID = get_current_user_id();
$user = wp_get_current_user();
$allowed_roles = array('editor', 'administrator');
$selectid = $wpdb->get_results(
"
SELECT ID
FROM thongtinchung
WHERE user_id = '$get_ID'
"
);
$check =$wpdb->num_rows;
if($_GET['dangky'] == thanhcong)  {
$alert='Đăng ký thành công';
} elseif ($_GET['dangky'] == thatbai ) {
$alert='Đăng ký thất bại';
} elseif ($_GET['capnhat'] == thanhcong ) {
$alert='Cập nhật dữ liệu thành công';
} elseif ($_GET['capnhat']==thatbai) {
$alert='Cập nhật dữ liệu thất bại';
}
if (!is_user_logged_in()) {
wp_redirect(wp_login_url());
exit;
}   elseif (is_user_logged_in()&&$check==0&&$_GET['submitted']==yes) {
if (isset($_POST['hoantat'])&&$_POST['capcha'] == $_SESSION['security_code']) {
$wpdb->query('START TRANSACTION');

// start thongtincanhan
$hovatendem = !empty($_POST['hovatendem']) ? $_POST['hovatendem'] : null;
$ten = !empty($_POST['ten']) ? $_POST['ten'] : null;
$ngaysinh = !empty($_POST['ngaysinh']) ? date("Y-m-d", strtotime($_POST['ngaysinh'])) : null;
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
$cckdv=!empty($_POST['cckdv']) ? $_POST['cckdv'] : null ;
$sochungchi=!empty($_POST['sochungchi']) ? $_POST['sochungchi'] : '' ;
$ngaycapcc=!empty($_POST['ngaycapcc']) ? date("Y-m-d", strtotime($_POST['ngaycapcc'])) : '' ;
$thekdv=!empty($_POST['thekdv']) ? $_POST['thekdv'] : null;
$sothekdv=!empty($_POST['sothekdv']) ? $_POST['sothekdv'] : '';
$ngaycapthe=!empty($_POST['ngaycapthe']) ? date("Y-m-d", strtotime($_POST['ngaycapthe'])) : '';
// $ngoaingukhac =!empty($_POST['ngoaingukhac']) ? $_POST['ngoaingukhac'] : 0;
// $ngoaingukhac_mucdo =!empty($_POST['ngoaingukhac_mucdo']) ? $_POST['ngoaingukhac_mucdo'] : 0;
$trinhdotinhoc=!empty($_POST['trinhdotinhoc']) ? $_POST['trinhdotinhoc'] : null;
$linhvucchuyenmon = !empty($_POST['linhvucchuyenmon']) ? $_POST['linhvucchuyenmon'] : null;
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
'cckdv'=>$cckdv,//20
'sochungchi'=>$sochungchi,//21
'ngaycapcc'=>$ngaycapcc,
'thekdv'=>$thekdv,//23
'sothekdv'=>$sothekdv,
'ngaycapthe'=>$ngaycapthe,//25
'trinhdotinhoc'=>$trinhdotinhoc,//26
'thamgiadgn'=>$thamgiadgn,//27
'kinhnghiemvietbc'=>$kinhnghiemvietbc,//28
'kinhnghiemkhac'=>$kinhnghiemkhac,//29
'linhvucchuyenmon' => $linhvucchuyenmon
),
array(
'%d','%s','%s','%s','%d',//1
'%s','%s','%s','%s','%s',//2
'%s','%s','%s','%s','%s',//3
'%d','%s','%s','%d','%s',//5
'%s','%s','%d','%d','%s','%s'//6
)
);

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
$wpdb->query(
$wpdb->prepare(
"
INSERT INTO quatrinhcongtac (ID,thoigian,donvicongtac,chucvu)
VALUES (%d,%s,%s,%s)
",
$get_ID,$$thoigianct,$$noicongtac,$$chucvu
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
// $insert_cackhoahoc = $wpdb->insert( 'cackhoahoc',

$wpdb->query(
$wpdb->prepare(
"
INSERT INTO cackhoahoc (ID,tenkhoahoc,thoigian,noidaotao)
VALUES (%d,%s,%s,%s)
",
$get_ID,$$khoahoc,$$thoigiankh,$$noidaotao
)
);
}

}

//////Nhap du lieu vao bang trinhdothacsi
$counttrinhdothacsi = !empty($_POST['counttrinhdothacsi']) ? $_POST['counttrinhdothacsi'] : 1;
for ($j=1; $j <= $counttrinhdothacsi ; $j++) {

$chuyennganhthacsi ='chuyennganhthacsi'.$j;
$$chuyennganhthacsi = !empty($_POST[$chuyennganhthacsi]) ? $_POST[$chuyennganhthacsi]: null;
$noidaotaothacsi ='noidaotaothacsi'.$j;
$$noidaotaothacsi = !empty($_POST[$noidaotaothacsi]) ? $_POST[$noidaotaothacsi]:null;
$namcapbangthacsi ='namcapbangthacsi'.$j;
$$namcapbangthacsi = !empty($_POST[$namcapbangthacsi]) ? $_POST[$namcapbangthacsi] :null;
if ($$chuyennganhthacsi!=null&&$$noidaotaothacsi!=null&&$$namcapbangthacsi!=null) {

$wpdb->query(
$wpdb->prepare(
"
INSERT INTO trinhdothacsi (ID,chuyennganhthacsi,noidaotaothacsi,namcapbangthacsi)
VALUES (%d,%s,%s,%s)
",
$get_ID,$$chuyennganhthacsi,$$noidaotaothacsi,$$namcapbangthacsi
)
);
}

}

//////Nhap du lieu vao bang trinhdotiensi
$counttrinhdotiensi = !empty($_POST['counttrinhdotiensi']) ? $_POST['counttrinhdotiensi'] : 1;
for ($j=1; $j <= $counttrinhdotiensi ; $j++) {

$chuyennganhtiensi ='chuyennganhtiensi'.$j;
$$chuyennganhtiensi = !empty($_POST[$chuyennganhtiensi]) ? $_POST[$chuyennganhtiensi]: null;
$noidaotaotiensi ='noidaotaotiensi'.$j;
$$noidaotaotiensi = !empty($_POST[$noidaotaotiensi]) ? $_POST[$noidaotaotiensi]:null;
$namcapbangtiensi ='namcapbangtiensi'.$j;
$$namcapbangtiensi = !empty($_POST[$namcapbangtiensi]) ? $_POST[$namcapbangtiensi] :null;
if ($$chuyennganhtiensi!=null&&$$noidaotaotiensi!=null&&$$namcapbangtiensi!=null) {
// $insert_trinhdotiensi = $wpdb->insert( 'trinhdotiensi',
// array(
// 	'ID'=>$get_ID,
// 	'chuyennganhtiensi'=>$$chuyennganhtiensi,
// 	'noidaotaotiensi'=>$$noidaotaotiensi,
// 	'namcapbangtiensi'=>$$namcapbangtiensi
// 	),
// array(
// 	'%d',
// 	'%s',
// 	'%s',
// 	'%s'
// 	)
// );
$wpdb->query(
$wpdb->prepare(
"
INSERT INTO trinhdotiensi (ID,chuyennganhtiensi,noidaotaotiensi,namcapbangtiensi)
VALUES (%d,%s,%s,%s)
",
$get_ID,$$chuyennganhtiensi,$$noidaotaotiensi,$$namcapbangtiensi
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
$tieuchuanduocphancong=$tieuchuanduocphancong.$value.", ";
}
$tieuchuanduocphancong=substr($tieuchuanduocphancong,0,-2);
if ($$donviduocdanhgia!=null) {
// $insert_thamgiadgn = $wpdb->insert( 'thamgiadgn',
// array(
// 	'ID'=>$get_ID,
// 	'donvitochuc'=>$$donvitochuc,
// 	'donviduocdanhgia'=>$$donviduocdanhgia,
// 	'vaitrotrongdoan'=>$$vaitrotrongdoan,
// 	'tieuchuanduocphancong'=>$tieuchuanduocphancong
// 	),
// array(
// 	'%d',
// 	'%d',
// 	'%s',
// 	'%d',
// 	'%s'
// 	)
// );

$wpdb->query(
$wpdb->prepare(
"
INSERT INTO thamgiadgn 
(ID,donvitochuc,donviduocdanhgia,vaitrotrongdoan,tieuchuanduocphancong)
VALUES (%d,%s,%s,%s,%s)
",
$get_ID,$$donvitochuc,$$donviduocdanhgia,$$vaitrotrongdoan,$tieuchuanduocphancong
)
);
}

}

$count4 = !empty($_POST['hidden4'])?$_POST['hidden4']:1;
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
$sql2 = "INSERT INTO trinhdongoaingu (ID,tenngoaingu,nghe,noi,doc,viet)
VALUES (100,'${$ngoaingu}',${$nghe},${$noi},${$doc},${$viet})";
// $insert_trinhdongoaingu = $wpdb->insert( 'trinhdongoaingu',
// 	array(
// 		'ID'=>$get_ID,
// 		'tenngoaingu'=>$$ngoaingu,
// 		'nghe'=>$$nghe,
// 		'noi'=>$$noi,
// 		'doc'=>$$doc,
// 		'viet'=>$$viet
// 		),
// 	array(
// 		'%d',
// 		'%s',
// 		'%d',
// 		'%d',
// 		'%d',
// 		'%d'
// 		)
// 	);
$wpdb->query(
$wpdb->prepare(
"
INSERT INTO trinhdongoaingu
(ID,tenngoaingu,nghe,noi,doc,viet)
VALUES (%d,%s,%d,%d,%d,%d)
",
$get_ID,$$ngoaingu,$$nghe,$$noi,$$doc,$$viet
)
);

} else {
$sql2 = "INSERT INTO trinhdongoaingu (ID,tenngoaingu,nghe,noi,doc,viet)
VALUES (100,'${$ngoaingukhac}',${$nghe},${$noi},${$doc},${$viet})";
// $insert_trinhdongoaingu = $wpdb->insert( 'trinhdongoaingu',
// 	array(
// 	'ID'=>$get_ID,
// 	'tenngoaingu'=>$$ngoaingukhac,
// 	'nghe'=>$$nghe,
// 	'noi'=>$$noi,
// 	'doc'=>$$doc,
// 	'viet'=>$$viet
// 	),
// 	array(
// 	'%d',
// 	'%s',
// 	'%d',
// 	'%d',
// 	'%d',
// 	'%d'
// 	)
// );
$wpdb->query(
$wpdb->prepare(
"
INSERT INTO trinhdongoaingu
(ID,tenngoaingu,nghe,noi,doc,viet)
VALUES (%d,%s,%d,%d,%d,%d)
",
$get_ID,$$ngoaingukhac,$$nghe,$$noi,$$doc,$$viet
)
);
} //end else
}//end for
if
(
$hovatendem!=null&&$ten!=null&&$ngaysinh!=null
&&$gioitinh!=null&&$quequan!=null&&$noicongtac!=null
&&$thamniencongtac!=null&&$diachilienhe!=null&&$dienthoaididong!=null
&&$emaillienhe!=null&&$cckdv!=null&&$thekdv!=null
&&$trinhdotinhoc!=null&&$thamgiadgn!=null&&$kinhnghiemvietbc!=null
)
{
//mysql_query("COMMIT");
$wpdb->query('COMMIT');
wp_redirect(home_url().'/xem-thong-tin?dangky=thanhcong');
exit;
} else {
//mysql_query("ROLLBACK");
$wpdb->query('ROLLBACK');
wp_redirect(home_url().'/xem-thong-tin?dangky=thatbai');
exit;
}
//if (!empty($alert)) {
//			echo '<script>alert("' . $alert . '");</script>';
//}

} //end if

}
elseif(is_user_logged_in()&&$check >0&&$_GET['capnhat']!=yes) {

$selectthongtinchung= $wpdb->get_row("SELECT * FROM thongtinchung WHERE ID = $get_ID",ARRAY_N);
$selecttrinhdongoaingu = $wpdb->get_results("SELECT * FROM trinhdongoaingu WHERE ID = $get_ID",ARRAY_N);
$selectquatrinhcongtac = $wpdb->get_results("SELECT * FROM quatrinhcongtac WHERE ID = $get_ID",ARRAY_N);
$selectcackhoahoc = $wpdb->get_results("SELECT * FROM cackhoahoc WHERE ID = $get_ID",ARRAY_N);
$selectthamgiadgn = $wpdb->get_results("SELECT * FROM thamgiadgn WHERE ID = $get_ID",ARRAY_N);
$selectcacdonvitochucdgn = $wpdb->get_results("SELECT * FROM cacdonvitochucdgn",ARRAY_N);
$selecttrinhdothacsi = $wpdb->get_results("SELECT * FROM trinhdothacsi WHERE ID = $get_ID",ARRAY_N);
$selecttrinhdotiensi = $wpdb->get_results("SELECT * FROM trinhdotiensi WHERE ID = $get_ID",ARRAY_N);
$current_user = wp_get_current_user();
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
<li class="active"><?php  echo '<a href="'.admin_url().'">'.'<span class="fa fa-user"></span> '.$current_user->user_login.'</a>'; ?></li>
<li><a href="<?php echo home_url().'/cap-nhat-thong-tin' ?>" title="Cập nhật"><span class="fa fa-edit"></span> Cập nhật thông tin</a></li>
<?php if( array_intersect($allowed_roles, $user->roles ) ): ?>
<li><a href="<?php echo home_url() . '/tim-kiem'; ?>"><i class="fa fa-search"></i> Tìm kiếm thông tin KĐV</a></li>
<?php endif; ?>
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
<div class="login" style="margin:10px 0 0 25px">
<p>Trung tâm Kiểm định chất lượng giáo dục ĐHQG-HCM xin chân thành cảm ơn quý thầy/cô đã dành thời gian cung cấp thông tin</p>
</div>
<div class="header container-fluid">
<div class="content">
<div class="alert alert-info">
<h4>Phần I: Thông tin cá nhân</h4>
</div> <!-- title -->
<div class="hovaten row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Họ và tên Kiểm định viên:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[1]; ?> <?php echo $selectthongtinchung[2]; ?>
</div>
</div> <!-- hovaten -->
<div class="ngaysinh row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">Ngày sinh:</div>
<div class="col-md-6"><?php echo date("d-m-Y", strtotime($selectthongtinchung[3])); ?></div>
</div>
<div class="gioitinh row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Giới tính:</span>
</div>
<div class="col-md-6">
<?php if($selectthongtinchung[4]==1) {echo "Nam";} else {echo "Nữ";}?>
</div>
</div> <!-- gioitinh -->
<div class="quequan row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Quê quán:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[5]; ?>
</div>
</div> <!-- quequan -->
<div class="noicongtac row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Nơi công tác:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[6]; ?>
</div>
</div> <!-- noicongtac -->
<div class="thamniencongtac row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Thâm niên công tác:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[7]; ?> năm
</div>
</div> <!-- thamniencongtac -->
<div class="alert alert-info">
<h4>Phần II: Thông tin liên lạc</h4>
</div> <!-- title -->
<div class="diachilienhe row row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Địa chỉ liên hệ:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[8]; ?>
</div>
</div> <!-- diachilienhe -->
<div class="dienthoaicodinh row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Điện thoại cố định:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[9]; ?>
</div>
</div> <!-- dienthoaicodinh -->
<div class="dienthoaididong row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Điện thoại di động:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[10]; ?>
</div>
</div> <!-- dienthoadidong -->
<div class="email row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Email liên hệ:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[11]; ?>
</div>
</div> <!-- email -->
<div class="fax row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Fax:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[12]; ?>
</div>
</div> <!-- fax -->
<div class="alert alert-info">
<h4>Phần III: Trình độ chuyên môn, nghiệp vụ</h4>
</div> <!-- title -->
<div class="hochamhocvi row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Chức danh:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[13]; ?>
</div>
</div> <!-- hochamhocvi -->
<div class="hochamhocvi row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Học vị:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[14]; ?>
</div>
</div> <!-- hochamhocvi -->
<div class="linhvucchuyenmon row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Lĩnh vực chuyên môn:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[25]; ?>
</div>
</div>
<div class="chuyennganhdaotaobacthacsi row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span>Chuyên ngành thạc sĩ:</span>
</div>
<div class="col-md-10 col-md-offset-1">
<table class="table table-striped table-hover table-bordered"  cellpadding="2" cellspacing="0">
<tr class="warning">
<td width="40px" align="center">STT</td>
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
</div>
</div> <!-- chuyennganhdaotaobacthacsi -->
<div class="row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span class="text-align-right strong">Chuyên ngành tiến sĩ:</span>
</div>
<div class="col-md-10 col-md-offset-1">
<table class="table table-striped table-hover table-bordered"  cellpadding="2" cellspacing="0">
<tr class="warning">
<td width="40px" align="center">STT</td>
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
</div>
</div> <!-- chuyennganhdaotaobactiensi -->

<?php if ($selectthongtinchung[15]==1) {?>
<div class="chungchidaotaokiemdinhvien row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span>Chứng chỉ Kiểm định viên</span>
</div>
<div class="col-md-3">Số chứng chỉ: <?php echo $selectthongtinchung[16]; ?></div>
<div class="col-md-3">Ngày cấp: <?php echo $selectthongtinchung[17]!='0000-00-00'? date("d-m-Y", strtotime($selectthongtinchung[17])) :''; ?></div>
</div> <!-- cckiemdinhvien -->
<?php } ?>
<?php if ($selectthongtinchung[18]==1) {?>
<div class="chungchidaotaokiemdinhvien row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span>Thẻ Kiểm định viên</span>
</div>
<div class="col-md-3">Số thẻ: <?php echo $selectthongtinchung[19]; ?></div>
<div class="col-md-3">Ngày cấp: <?php echo $selectthongtinchung[20]!='0000-00-00'? date("d-m-Y", strtotime($selectthongtinchung[20])) :''; ?></div>
</div> <!-- cckiemdinhvien -->
<?php } ?>
<div class="trinhdongoaingu row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span>Trình độ ngoại ngữ</span>
</div>
<div class="col-md-10 col-md-offset-1">
<table class="ngoaingu table table-striped table-hover table-bordered"  cellpadding="2" cellspacing="0">
<tr class="warning">
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
</div>
</div> <!-- trinhdongoaingu -->
<div class="trinhdotinhoc row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span>Trình độ tin học:</span>
</div>
<div class="col-md-3">
<?php echo $selectthongtinchung[21]; ?>
</div>
</div> <!-- trinhdotinhoc -->
<div class="alert alert-info">
<h4>Phần IV: Quá trình công tác</h4>
</div> <!-- title -->
<div class="quatrinhcongtac row">
<div class="col-md-10 col-md-offset-1">
<table cellpadding="2" cellspacing="0"  width="800px" class="table table-striped table-hover table-bordered">
<tr class="warning">
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
</div>
</div> <!-- quatrinhcongtac -->
<div class="alert alert-info ">
<h4>Phần V: Kinh nghiệm trong Đảm bảo và Kiểm định chất lượng</h4>
</div> <!-- title -->
<div class="thamgiadgn row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">
<span>Kinh nghiệm tham gia ĐGN:</span>
</div>
<div class="col-md-6">
<?php echo $selectthongtinchung[22]==1 ? 'Đã từng tham gia đoàn ĐGN' :'Chưa từng tham gia đoàn ĐGN'; ?>
</div>
</div>	<!-- thamggiadgn -->
<div class="bangthamgiadgn row" <?php echo $selectthongtinchung[22]== 2 ? 'style="display:none"' : '' ; ?> >
<div class="col-md-10 col-md-offset-1">
<table  cellpadding="2" cellspacing="0" class="thamgiadgn table table-striped table-hover table-bordered">
<tr class="warning">
<td width="40px" align="center">STT</td>
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
</div>
</div> <!-- bangthamgiadgn -->
<div class="kinhnghiemvietbc row">
<div class="col-md-3 col-md-offset-1 text-align-right strong">Kinh nghiệm viết báo cáo:</div>
<div class="col-md-6"><?php echo $selectthongtinchung[23]==1 ? 'Đã có kinh nghiệm viết báo cáo TĐG' :'Chưa có kinh nghiệm viết báo cáo TĐG'; ?></div>
</div> <!-- kinhnghiemvietbc -->
<div class="cackhoahocdambaovakiemdinhchatluong row">
<div class="col-md-9 col-md-offset-1 text-align-right strong">Các khóa học liên quan đến Đảm bảo và Kiểm định chất lượng mà Thầy/Cô đã từng tham gia:</div>
<div class="col-md-10 col-md-offset-1">
<table cellpadding="2" cellspacing="0"  width="800px" class="table table-striped table-hover  table-bordered">
<tr class="warning">
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
</div>
</div> <!-- cackhoahocdambaovakiemdinhchatluong -->
<?php if ($selectthongtinchung[24]!='') { ?>
<div class="row">
<div class="col-md-11 col-md-offset-1 strong">Những kinh nghiệm khác liên quan đến Đảm bảo và Kiểm định chất lượng giáo dục</div>
</div>
<div class="kinhnghiemkhac row">
<div class="col-md-10 col-md-offset-1">
<textarea class="form-control" disabled="disabled"><?php echo $selectthongtinchung[24]; ?></textarea>
</div>
</div> <!-- nhungkinhnghiemkhac -->
<?php } ?>
<?php  ?>
</div>
</div> <!-- container -->
<?php get_footer(); } //end elseif
elseif ($_GET['capnhat']==yes&&$_POST['capcha']==$_SESSION['security_code']) {
$noicongtac = $_POST['noicongtac'];
// $thamniencongtac = $_POST['thamniencongtac'];
// $diachilienhe = $_POST['diachilienhe'];
$dienthoaicodinh = $_POST['dienthoaicodinh'];
$dienthoaididong = $_POST['dienthoaididong'];
$emaillienhe = $_POST['emaillienhe'];
$fax = $_POST['fax'];
$trinhdotinhoc = $_POST['trinhdotinhoc'];
$kinhnghiemkhac = $_POST['kinhnghiemkhac'];
$linhvucchuyenmon =$_POST['linhvucchuyenmon'];
$wpdb->update(
'thongtinchung',
array(
// 'noicongtac' => $noicongtac,	// string
// 'thamniencongtac' => $thamniencongtac,
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
//////Nhap du lieu vao bang quatrinhcongtac
$count1 = !empty($_POST['hidden1']) ? $_POST['hidden1'] : 0;
for ($i=$countquatrinhcongtac; $i <= $count1 ; $i++) {
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
'donvicongtac'=>$$noicongtac,
'chucvu'=>$$chucvu
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

//Nhap du lieu vao bang trinhdothacsi
$counttrinhdothacsi_insert = !empty($_POST['counttrinhdothacsi']) ? $_POST['counttrinhdothacsi'] : 0;
echo '1:'.$counttrinhdothacsi_insert.'\n';
$counttrinhdothacsi++;
echo '2'.$counttrinhdothacsi.'\n';
for ($l=$counttrinhdothacsi; $l <= $counttrinhdothacsi_insert ; $l++) {
$chuyennganhthacsi ='chuyennganhthacsi'.$l;
$chuyennganhthacsi = !empty($_POST[$chuyennganhthacsi])? $_POST[$chuyennganhthacsi]: null; echo 'cn'.$counttrinhdothacsi.'\n';
$noidaotaothacsi ='noidaotaothacsi'.$l;
$noidaotaothacsi = !empty($_POST[$noidaotaothacsi]) ? $_POST[$noidaotaothacsi]: null; echo 'noi'.$counttrinhdothacsi.'\n';
$namcapbangthacsi ='namcapbangthacsi'.$l;
$namcapbangthacsi = !empty($_POST[$namcapbangthacsi])? $_POST[$namcapbangthacsi]: null; echo 'nam'.$counttrinhdothacsi.'\n';
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
}//end for
wp_redirect(home_url('/xem-thong-tin?capnhat=thanhcong'));
exit;
} elseif ($_GET['capnhat']==yes&&$_POST['capcha']!=$_SESSION['security_code']) {
wp_redirect(home_url('/cap-nhat-thong-tin?capnhat=thatbai'));
exit;
}
else {
wp_redirect(home_url().'/dang-ky-thong-tin');
exit;
} ?>
<?php 	if (!empty($alert)) { ?>
<script type="text/javascript">
function show_error(type,content) {
$("#error_message .modal-header h4").html(type);
$("#error_message .modal-body ul").append('<li><strong>'+content+'</strong></li>');
$("#error_message").modal('show');
}
show_error('Thông báo','<?php echo $alert; ?>');
</script>
<?php } ?>