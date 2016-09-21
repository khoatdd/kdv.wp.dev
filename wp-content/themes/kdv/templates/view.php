<!--
	Template Name: View Profile 
-->
<?php
$userId = get_current_user_id();
$selectthongtinchung= $wpdb->get_row
(
	"SELECT * FROM thongtinchung WHERE user_id = $userId",
	ARRAY_N
);
if (count($selectthongtinchung) == 0)
{
	wp_redirect( home_url('/edit') );
	exit;
}
$selecttrinhdongoaingu = $wpdb->get_results
(
	"SELECT * FROM trinhdongoaingu WHERE user_id = $userId",
	ARRAY_N
);
$selectquatrinhcongtac = $wpdb->get_results
(
	"SELECT * FROM quatrinhcongtac WHERE user_id = $userId",
	ARRAY_N
);
$selectcackhoahoc = $wpdb->get_results
(
	"SELECT * FROM cackhoahoc WHERE user_id = $userId",
	ARRAY_N
);
$selectthamgiadgn = $wpdb->get_results
(
	"SELECT * FROM thamgiadgn WHERE user_id = $userId",
	ARRAY_N
	);
$selectcacdonvitochucdgn = $wpdb->get_results
(
	"SELECT * FROM cacdonvitochucdgn",
	ARRAY_N
);
$selecttrinhdothacsi = $wpdb->get_results
(
	"SELECT * FROM trinhdothacsi WHERE user_id = $userId",
	ARRAY_N
	);
$selecttrinhdotiensi = $wpdb->get_results
(
	"SELECT * FROM trinhdotiensi WHERE user_id = $userId",
	ARRAY_N
	);
?>
<?php get_header(); ?>
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
			<?php echo $selectthongtinchung[2]; ?> <?php echo $selectthongtinchung[3]; ?>
			</div>
			</div> <!-- hovaten -->
		<div class="ngaysinh row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">Ngày sinh:</div>
			<div class="col-md-6"><?php echo date("d-m-Y", strtotime($selectthongtinchung[4])); ?></div>
		</div>
		<div class="gioitinh row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
			<span class="text-align-right strong">Giới tính:</span>
		</div>
		<div class="col-md-6">
			<?php if($selectthongtinchung[5]==1) {echo "Nam";} else {echo "Nữ";}?>
		</div>
		</div> <!-- /.gioitinh -->
		<div class="quequan row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Quê quán:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[6]; ?>
			</div>
		</div> <!-- /.quequan -->
		<div class="noicongtac row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Nơi công tác:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[7]; ?>
			</div>
		</div> <!-- /.noicongtac -->
		<div class="thamniencongtac row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Thâm niên công tác:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[8]; ?> năm
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
				<?php echo $selectthongtinchung[9]; ?>
			</div>
		</div> <!-- diachilienhe -->
		<div class="dienthoaicodinh row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Điện thoại cố định:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[10]; ?>
			</div>
		</div> <!-- dienthoaicodinh -->
		<div class="dienthoaididong row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Điện thoại di động:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[11]; ?>
			</div>
		</div> <!-- dienthoadidong -->
		<div class="email row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Email liên hệ:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[12]; ?>
			</div>
		</div> <!-- email -->
		<div class="fax row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Fax:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[13]; ?>
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
				<?php echo $selectthongtinchung[14]; ?>
			</div>
		</div> <!-- hochamhocvi -->
		<div class="hochamhocvi row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span class="text-align-right strong">Học vị:</span>
			</div>
			<div class="col-md-6">
				<?php echo $selectthongtinchung[15]; ?>
			</div>
		</div> <!-- /.hochamhocvi -->
		<div class="linhvucchuyenmon row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
			<span class="text-align-right strong">Lĩnh vực chuyên môn:</span>
			</div>
			<div class="col-md-6">
			<?php echo $selectthongtinchung[26]; ?>
			</div>
		</div> <!-- /.linhvucchuyenmon -->
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
					<?php
						$sttthacsi=1;
						foreach ($selecttrinhdothacsi as $data):
					?>
					<tr>
					<td align="center"><?php echo $sttthacsi; ?></td>
					<td align="center"><?php echo $data[2]; ?></td>
					<td align="center"><?php echo $data[3]; ?></td>
					<td align="center"><?php echo $data[4]; ?></td>
					</tr>
					<?php
						$sttthacsi++;
						endforeach;
					?>
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
					<?php
						$stttiensi=1;
						foreach ($selecttrinhdotiensi as $data):
					?>
					<tr>
						<td align="center"><?php echo $stttiensi; ?></td>
						<td align="center"><?php echo $data[2]; ?></td>
						<td align="center"><?php echo $data[3]; ?></td>
						<td align="center"><?php echo $data[4]; ?></td>
					</tr>
					<?php
						$stttiensi++;
						endforeach;
					?>
				</table>
			</div>
		</div> <!-- /.chuyennganhdaotaobactiensi -->

		<?php if ($selectthongtinchung[16]==1) : ?>
		<div class="chungchidaotaokiemdinhvien row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span>Chứng chỉ Kiểm định viên</span>
			</div>
			<div class="col-md-3">Số chứng chỉ: <?php echo $selectthongtinchung[17]; ?></div>
			<div class="col-md-3">Ngày cấp: <?php echo $selectthongtinchung[18]!= null ? date("d-m-Y", strtotime($selectthongtinchung[18])) : ''; ?></div>
		</div> <!-- cckiemdinhvien -->
		<?php endif; ?>
		<?php if ($selectthongtinchung[19]==1) : ?>
		<div class="chungchidaotaokiemdinhvien row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span>Thẻ Kiểm định viên</span>
			</div>
			<div class="col-md-3">
				Số thẻ: <?php echo $selectthongtinchung[20]; ?>
			</div>
			<div class="col-md-3">
				Ngày cấp: <?php echo $selectthongtinchung[21]!= null ? date("d-m-Y", strtotime($selectthongtinchung[21])) :''; ?></div>
			</div> <!-- cckiemdinhvien -->
		<?php endif; ?>
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
				<?php $stt=1; foreach ($selecttrinhdongoaingu as $col) : ?>
				<tr>
					<td align="center"><?php echo $stt; ?></td>
					<td align="center">
						<p>
						<?php switch ($col[2]) {
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
						} ?>
						</p>
					</td>
					<td align="center">
						<p>
						<?php switch ($col[3]) {
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
						} ?>
						</p>
					</td>
					<td align="center">
						<p>
						<?php switch ($col[4]) {
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
						} ?>
						</p>
					</td>
					<td align="center">
						<p>
						<?php switch ($col[5]) {
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
						$stt++;} ?>
						</p>
					</td>
					<td align="center">
						<p>
						<?php switch ($col[6]) {
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
						break;
						} ?>
						</p>
					</td>
				</tr>
				<?php $stt++; endforeach; ?>
				</table>
			</div>
		</div> <!-- trinhdongoaingu -->
		<div class="trinhdotinhoc row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span>Trình độ tin học:</span>
			</div>
			<div class="col-md-3">
				<?php echo $selectthongtinchung[22]; ?>
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
				<?php $stt2=1; foreach ($selectquatrinhcongtac as $key) : ?>
				<tr>
					<td align="center"><?php echo $stt2; ?></td>
					<td><?php echo $key[2]; ?></td>
					<td><?php echo $key[3]; ?></td>
					<td><?php echo $key[4]; ?></td>
				</tr>
				<?php $stt2++; endforeach; ?>
			</table>
		</div>
		</div> <!-- /.quatrinhcongtac -->
		<div class="alert alert-info ">
			<h4>Phần V: Kinh nghiệm trong Đảm bảo và Kiểm định chất lượng</h4>
		</div> <!-- /.title -->
		<div class="thamgiadgn row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">
				<span>Kinh nghiệm tham gia ĐGN:</span>
			</div>
			<div class="col-md-6">
			<?php echo $selectthongtinchung[23]==1 ? 'Đã từng tham gia đoàn ĐGN' :'Chưa từng tham gia đoàn ĐGN'; ?>
			</div>
		</div>	<!-- /.thamggiadgn -->
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
					<?php $stt4=1; foreach ($selectthamgiadgn as $col) : ?>
					<tr class="lv1">
						<td align="center"><?php echo $stt4; ?></td>
						<td align="center">
						<?php 
							foreach ($selectcacdonvitochucdgn as $key)
							{
								if ($col[2]==$key[0])
								{
									echo $key[1];
								}
							}
						?>
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
					<?php $stt4++; endforeach; ?>
				</table>
			</div>
		</div> <!-- bangthamgiadgn -->
		<div class="kinhnghiemvietbc row">
			<div class="col-md-3 col-md-offset-1 text-align-right strong">Kinh nghiệm viết báo cáo:</div>
			<div class="col-md-6">
			<?php echo $selectthongtinchung[24]==1 ? 'Đã có kinh nghiệm viết báo cáo TĐG' :'Chưa có kinh nghiệm viết báo cáo TĐG'; ?>
			</div>
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
					<?php $stt3=1; foreach ($selectcackhoahoc as $col) : ?>
					<tr>
						<td align="center"><?php echo $stt3; ?></td>
						<td><?php echo $col[2]; ?></td>
						<td><?php echo $col[3]; ?></td>
						<td><?php echo $col[4]; ?></td>
					</tr>
					<?php $stt3++; endforeach; ?>
				</table>
			</div>
		</div> <!-- /.cackhoahocdambaovakiemdinhchatluong -->
		<?php if ($selectthongtinchung[25]!='') : ?>
		<div class="row">
			<div class="col-md-11 col-md-offset-1 strong">Những kinh nghiệm khác liên quan đến Đảm bảo và Kiểm định chất lượng giáo dục
			</div>
		</div>
		<div class="kinhnghiemkhac row">
			<div class="col-md-10 col-md-offset-1">
				<textarea class="form-control" disabled="disabled"><?php echo $selectthongtinchung[25]; ?></textarea>
			</div>
		</div> <!-- /.nhungkinhnghiemkhac -->
		<?php endif; ?>
	</div>
</div> <!-- container -->
<?php get_footer(); ?>