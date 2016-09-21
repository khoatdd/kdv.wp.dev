<!-- 
	Template Name: Edit Profile
 -->
 <?php
	$userId = get_current_user_id();
	$selectthongtinchung= $wpdb->get_row("SELECT * FROM thongtinchung WHERE user_id = $userId",ARRAY_N);
	$selecttrinhdongoaingu = $wpdb->get_results("SELECT * FROM trinhdongoaingu WHERE user_id = $userId",ARRAY_N);
	$counttrinhdongoaingu = $wpdb->num_rows;
	$selectquatrinhcongtac = $wpdb->get_results("SELECT * FROM quatrinhcongtac WHERE user_id = $userId",ARRAY_N);
	$countquatrinhcongtac = $wpdb->num_rows;
	$selectcackhoahoc = $wpdb->get_results("SELECT * FROM cackhoahoc WHERE user_id = $userId",ARRAY_N);
	$countkhoahoc= $wpdb->num_rows;
	$selectthamgiadgn = $wpdb->get_results("SELECT * FROM thamgiadgn WHERE user_id = $userId",ARRAY_N);
	$countthamgiadgn = $wpdb->num_rows;
	$selectcacdonvitochucdgn = $wpdb->get_results("SELECT * FROM cacdonvitochucdgn",ARRAY_N);
	$selecttrinhdothacsi = $wpdb->get_results("SELECT * FROM trinhdothacsi WHERE user_id = $userId",ARRAY_N);
	$counttrinhdothacsi = $wpdb->num_rows;
	$selecttrinhdotiensi = $wpdb->get_results("SELECT * FROM trinhdotiensi WHERE user_id = $userId",ARRAY_N);
	$counttrinhdotiensi = $wpdb->num_rows;
	$current_user = wp_get_current_user();
?>
<?php get_header(); ?>
<div class="container">
	<form class="form-horizontal" action="<?php echo home_url().'/handle'; ?>" method="post" accept-charset="utf-8" name="formkdv" id="formkdv">	
		<div class="login" style="margin:10px 0 0 25px">
			<p>Trung tâm Kiểm định chất lượng giáo dục ĐHQG-HCM xin chân thành cảm ơn quý thầy/cô đã dành thời gian cung cấp thông tin</p>
		</div>
		<div class="content">

			<div class="alert alert-info">
				<h4>Phần I: Thông tin cá nhân</h4>
			</div> <!-- title -->
			<div class="form-group">
	            <label class="control-label col-sm-3" for="hovatendem">Họ và tên đệm</label>
	            <div class="col-sm-4">
	                <input type="text" name="hovatendem" class="form-control" value="<?php echo $selectthongtinchung[2]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="hovatendem">Tên</label>
	            <div class="col-sm-4">
	                <input type="text" name="ten" class="form-control" value="<?php echo $selectthongtinchung[3]; ?>">
	            </div>
	        </div>
			<div class="form-group">
	            <label class="control-label col-sm-3" for="ngaysinh">Ngày sinh</label>
	            <div class="col-sm-4">
	                <input type="text" name="ngaysinh" class="form-control datepicker" value="<?php echo date("d-m-Y", strtotime($selectthongtinchung[4])); ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="gioitinh">Giới tính</label>
	            <div class="col-sm-4">
	            	<label class="radio-inline"><input type="radio" name="gioitinh" value="1" <?php echo $selectthongtinchung[5] == 1 ? 'checked="checked"' : ''; ?> > Nam</label>
	            	<label class="radio-inline"><input type="radio" name="gioitinh" value="2" <?php echo $selectthongtinchung[5] == 2 ? 'checked="checked"' : ''; ?> > Nữ</label>
	            </div>
	        </div>
			<div class="form-group">
	            <label class="control-label col-sm-3" for="quequan">Quê quán</label>
	            <div class="col-sm-4">
	                <input type="text" name="quequan" class="form-control" value="<?php echo $selectthongtinchung[6]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="noicongtac">Nơi công tác</label>
	            <div class="col-sm-4">
	                <input type="text" name="noicongtac" class="form-control" value="<?php echo $selectthongtinchung[7]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="thamniencongtac">Thâm niên công tác</label>
	            <div class="col-sm-4">
	                <input type="text" name="thamniencongtac" class="form-control" value="<?php echo $selectthongtinchung[8]; ?>">
	            </div>
	        </div>
			<div class="alert alert-info">
				<h4>Phần II: Thông tin liên lạc</h4>
			</div>
			<div class="form-group">
	            <label class="control-label col-sm-3" for="diachilienhe">Địa chỉ liên hệ</label>
	            <div class="col-sm-4">
	                <input type="text" class="form-control" name="diachilienhe" id="diachilienhe" value="<?php echo $selectthongtinchung[9]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="dienthoaicodinh">Điện thoại cố định</label>
	            <div class="col-sm-4">
	                <input type="text" class="form-control" name="dienthoaicodinh" id="dienthoaicodinh" value="<?php echo $selectthongtinchung[10]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="dienthoaididong">Điện thoại di động</label>
	            <div class="col-sm-4">
	                <input type="text" class="form-control" name="dienthoaididong" id="dienthoaididong" value="<?php echo $selectthongtinchung[11]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="emaillienhe">Email liên hệ</label>
	            <div class="col-sm-4">
	                <input type="text" class="form-control" name="emaillienhe" id="emaillienhe" value="<?php echo $selectthongtinchung[12]; ?>">
	            </div>
	        </div>
			<div class="form-group">
	            <label class="control-label col-sm-3" for="fax">Fax</label>
	            <div class="col-sm-4">
	                <input type="text" class="form-control" name="fax" id="fax"value="<?php echo $selectthongtinchung[13]; ?>">
	            </div>
	        </div>
			<div class="alert alert-info">
				<h4>Phần III: Trình độ chuyên môn, nghiệp vụ</h4>
			</div>
			<div class="form-group">
	            <label class="control-label col-sm-3" for="chucdanh">Chức danh</label>
	            <div class="col-sm-4">
	                <input type="text" name="chucdanh" class="form-control" value="<?php echo $selectthongtinchung[14]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="hocvi">Học vị</label>
	            <div class="col-sm-4">
	                <input type="text" name="hocvi" class="form-control" value="<?php echo $selectthongtinchung[15]; ?>">
	            </div>
	        </div>
	        <div class="form-group">
	       		<?php 
					$datalinhvucchuyenmon = $wpdb->get_results("SELECT * from danhmucmanganh",ARRAY_N);
				?>
	            <label class="control-label col-sm-3" for="linhvucchuyenmon">Lĩnh vực chuyên môn</label>
	            <div class="col-sm-4">
	                <select name="linhvucchuyenmon" class="form-control" id="linhvucchuyenmon">
						<?php
						foreach ($datalinhvucchuyenmon as $key ) { ?>
							<option value="<?php echo $key[1]; ?>" <?php if ($key[1] == $selectthongtinchung[26]) { echo 'selected="selected"';} ?> ><?php echo $key[1]; ?></option>
						<?php } ?>
				 	</select>
	            </div>
	        </div>
			<div class="chuyennganhdaotaobacthacsi form-group">
				<label class="control-label col-sm-3" for="chuyennganhdaotaothacsi">Chuyên ngành thạc sĩ (*)</label>
				<div class="col-sm-12">
					<table id="trinhdothacsi" class="table table-striped table-hover table-bordered trinhdothacsi margin-top">
						<tr class="success">
							<td align="center">Chuyên ngành đào tạo thạc sĩ</td>
							<td align="center">Nơi đào tạo tiến sĩ</td>
							<td align="center">Năm cấp bằng</td>
							<td></td>
						</tr>
						<?php foreach ($selecttrinhdothacsi as $data): ?>
						<tr>
	                        <td align="center"><input type="text" align="center" class="form-control" placeholder="Chuyên ngành đào tạo" name="chuyennganhthacsi[]" value="<?php echo $data[2]; ?>"></td>
	                        <td align="center"><input type="text" align="center" class="form-control" placeholder="Nơi đào tạo" name="noidaotaothacsi[]" value="<?php echo $data[3]; ?>"></td>
	                        <td align="center"><input type="text" align="center" class="form-control" placeholder="Năm cấp bằng" name="namcapbangthacsi[]" value="<?php echo $data[4]; ?>"></td>
		                    <td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>
	                    </tr>
						<?php endforeach; ?>
					</table>
				</div>
				<div class="col-sm-12">
					<button class="themtrinhdothacsi btn btn-success btn-sm" type="button" id="themtrinhdothacsi"><i class="fa fa-plus"></i></button>
					<input type="hidden" name="counttrinhdothacsi" id="counttrinhdothacsi" value="<?php echo $counttrinhdothacsi; ?>">
				</div>
			</div> <!-- chuyennganhdaotaobacthacsi -->
			<div class="chuyennganhdaotaobactiensi form-group">
				<label class="control-label col-sm-3" for="chuyennganhdaotaotiensi">Chuyên ngành tiến sĩ (*)</label>
				<div class="col-sm-12">
					<table id="trinhdotiensi" class="table table-striped table-hover table-bordered trinhdotiensi margin-top">
						<tr class="success">
							<td align="center">Chuyên ngành đào tạo tiến sĩ</td>
							<td align="center">Nơi đào tạo tiến sĩ</td>
							<td align="center">Năm cấp bằng</td>
							<td></td>
						</tr>
						<?php foreach ($selecttrinhdotiensi as $data): ?>
						<tr>
	                        <td align="center"><input type="text" align="center" class="form-control" placeholder="Chuyên ngành đào tạo" name="chuyennganhtiensi[]" value="<?php echo $data[2]; ?>"></td>
	                        <td align="center"><input type="text" align="center" class="form-control" placeholder="Nơi đào tạo" name="noidaotaotiensi[]" value="<?php echo $data[3]; ?>"></td>
	                        <td align="center"><input type="text" align="center" class="form-control" placeholder="Năm cấp bằng" name="namcapbangtiensi[]" value="<?php echo $data[4]; ?>"></td>
		                    <td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>
	                    </tr>
						<?php endforeach; ?>	
					</table>
				</div>
				<div class="col-sm-2">
					<button class="themtrinhdotiensi btn btn-success btn-sm" type="button" id="themtrinhdotiensi" ><i class="fa fa-plus"></i></button>
					<input type="hidden" name="counttrinhdotiensi" id="counttrinhdotiensi" value="<?php echo $counttrinhdotiensi; ?>">
				</div>
			</div>
			<div class="form-group">
	            <label class="control-label col-sm-3" for="chungchikdv">Chứng chỉ Kiểm định viên</label>
	            <label class="radio-inline"><input type="radio" name="cckdv" value="1" <?php  echo $selectthongtinchung[16] == 1 ? 'checked="checked"' : ''; ?> /> Có </label>
				<label class="radio-inline"><input type="radio" name="cckdv" value="2" <?php  echo $selectthongtinchung[16] == 2 ? 'checked="checked"' : ''; ?> /> Không </label>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3 col-sm-offset-1" for="socc">Số chứng chỉ</label>
	            <div class="col-sm-4">
	            	<input type="text" class="form-control" name="sochungchi" value="<?php echo $selectthongtinchung[17]!='' ? $selectthongtinchung[17] : ''; ?>" <?php echo $selectthongtinchung[16] == 2 ? 'disabled="disabled"' : ''; ?> >
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3 col-sm-offset-1" for="ngaycapcc">Ngày cấp</label>
	            <div class="col-sm-4">
	            	<input type="text" class="form-control datepicker" name="ngaycapcc" value="<?php echo $selectthongtinchung[18]!= null ? date("d-m-Y", strtotime($selectthongtinchung[18])) :''; ?>" <?php echo $selectthongtinchung[16] == 2 ? 'disabled="disabled"' : ''; ?> >
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3" for="thekdv">Thẻ Kiểm định viên</label>
	            <label class="radio-inline"><input type="radio" name="thekdv" value="1" <?php  echo $selectthongtinchung[19] == 1 ? 'checked="checked"' : ''; ?> /> Có </label>
				<label class="radio-inline"><input type="radio" name="thekdv" value="2" <?php  echo $selectthongtinchung[19] == 2 ? 'checked="checked"' : ''; ?>/> Không </label>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3 col-sm-offset-1" for="sothe">Số thẻ</label>
	            <div class="col-sm-4">
	            	<input type="text" class="form-control" name="sothekdv" value="<?php echo $selectthongtinchung[20]!= '' ? $selectthongtinchung[20] : ''; ?>" <?php echo $selectthongtinchung[19] == 2 ? 'disabled="disabled"' : ''; ?> >
	            </div>
	        </div>
	        <div class="form-group">
	            <label class="control-label col-sm-3 col-sm-offset-1" for="ngaycapthe">Ngày cấp</label>
	            <div class="col-sm-4">
	            	<input type="text" class="form-control datepicker" name="ngaycapthe" value="<?php echo $selectthongtinchung[21]!= null ? date("d-m-Y", strtotime($selectthongtinchung[21])) :''; ?>" <?php echo $selectthongtinchung[19] == 2 ? 'disabled="disabled"' : ''; ?> >
	            </div>
	        </div>
			<div class="trinhdongoaingu form-group">
				<label for="trinhdongoaingu" class="control-label">Trình độ ngoại ngữ</label>
				<div class="col-sm-12">
					<table id="trinhdongoaingu" class="ngoaingu table table-striped table-hover table-bordered margin-top"  cellpadding="2" cellspacing="0">
							<tr class="success">
								<td style="text-align:center">Ngoại ngữ</td>
								<td style="text-align:center">Nghe</td>
								<td style="text-align:center">Nói</td>
								<td style="text-align:center">Đọc</td>
								<td style="text-align:center">Viết</td>
								<td></td>
							</tr>
							<tr>
								<?php foreach ($selecttrinhdongoaingu as $col): ?>
								<td align="center">
									<select name="ngoaingu[]" class="ngoaingu<?php echo $stt;?> form-control">
		                                <option value="1" <?php echo $col[2] == 1 ? 'selected = "selected"' : ''; ?> >Tiếng Anh</option>
		                                <option value="2" <?php echo $col[2] == 2 ? 'selected = "selected"' : ''; ?> >Tiếng Pháp</option>
		                                <option value="3" <?php echo $col[2] == 3 ? 'selected = "selected"' : ''; ?> >Tiếng Nga</option>
		                                <option value="4" <?php echo $col[2] == 4 ? 'selected = "selected"' : ''; ?> >Tiếng Đức</option>
		                                <option value="5" <?php echo !in_array($col[2], [1,2,3,4] ) ? 'selected = "selected"' : ''; ?> >Ngoại ngữ khác</option>
		                            </select>
		                            <input hidden type="text" name="ngoaingukhac[]" value="<?php echo $col[2]; ?>" placeholder="" class="ngoaingukhac<?php echo $stt;?> form-control" <?php if (in_array($col[2], [1,2,3,4] )):?> style="display: none;margin-top:5px;" <?php endif; ?> >	
								</td>
								<td align="center">
									<select name="nghe[]" class="form-control">
		                                <option value="1" <?php echo $col[3] == 1 ? 'selected = "selected"' : ''; ?> >Tốt</option>
		                                <option value="2" <?php echo $col[3] == 2 ? 'selected = "selected"' : ''; ?> >Khá</option>
		                                <option value="3" <?php echo $col[3] == 3 ? 'selected = "selected"' : ''; ?> >Trung bình</option>
		                                <option value="4" <?php echo $col[3] == 4 ? 'selected = "selected"' : ''; ?> >Yếu</option>
		                            </select>
								</td>
								<td align="center">
									<select name="noi[]" class="form-control">
		                                <option value="1" <?php echo $col[4] == 1 ? 'selected = "selected"' : ''; ?> >Tốt</option>
		                                <option value="2" <?php echo $col[4] == 2 ? 'selected = "selected"' : ''; ?> >Khá</option>
		                                <option value="3" <?php echo $col[4] == 3 ? 'selected = "selected"' : ''; ?> >Trung bình</option>
		                                <option value="4" <?php echo $col[4] == 4 ? 'selected = "selected"' : ''; ?> >Yếu</option>
		                            </select>
								</td>
								<td align="center">
									<select name="doc[]" class="form-control">
		                                <option value="1" <?php echo $col[5] == 1 ? 'selected = "selected"' : ''; ?> >Tốt</option>
		                                <option value="2" <?php echo $col[5] == 2 ? 'selected = "selected"' : ''; ?> >Khá</option>
		                                <option value="3" <?php echo $col[5] == 3 ? 'selected = "selected"' : ''; ?> >Trung bình</option>
		                                <option value="4" <?php echo $col[5] == 4 ? 'selected = "selected"' : ''; ?> >Yếu</option>
		                            </select>
								</td>
								<td align="center">
									<select name="viet[]" class="form-control">
		                                <option value="1" <?php echo $col[6] == 1 ? 'selected = "selected"' : ''; ?> >Tốt</option>
		                                <option value="2" <?php echo $col[6] == 2 ? 'selected = "selected"' : ''; ?> >Khá</option>
		                                <option value="3" <?php echo $col[6] == 3 ? 'selected = "selected"' : ''; ?> >Trung bình</option>
		                                <option value="4" <?php echo $col[6] == 4 ? 'selected = "selected"' : ''; ?> >Yếu</option>
		                            </select>
								</td>
		                    	<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>
							</tr>
							<?php endforeach; ?>
						</table>
					</div>
					<div class="col-sm-12">
						<button id="buttonngoaingu" class="btn btn-success btn-sm" type="button"><i class="fa fa-plus"></i></button>
						<input type="hidden" id="counttrinhdongoaingu" name="" value="<?php echo $counttrinhdongoaingu; ?>">
					</div>
			</div> <!-- trinhdongoaingu -->
			<div class="form-group">
	            <label class="control-label col-sm-3" for="trinhdotinhoc">Trình độ tin học</label>
	            <div class="col-sm-4">
	            	<input type="text" class="form-control"  name="trinhdotinhoc" value="<?php echo $selectthongtinchung[22]; ?>">
	            </div>
	        </div>
			<div class="alert alert-info">
				<h4>Phần IV: Quá trình công tác</h4>
			</div> <!-- title -->
			<div class="quatrinhcongtac form-group">
				<div class="col-sm-12">
					<table id="quatrinhcongtac" cellpadding="2" cellspacing="0" class="table table-striped table-hover table-bordered">
						<tr class="success">
							<td align="center">Thời gian</td>
							<td align="center">Nơi công tác</td>
							<td align="center">Chức vụ</td>
							<td></td>
						</tr>
						<?php foreach ($selectquatrinhcongtac as $data) : ?>
							 <tr>
		                        <td align="center"><input type="text" class="form-control" name="thoigianct[]" placeholder="   Thời gian" value="<?php echo $data[2]; ?>"></td>
		                        <td align="center"><input type="text" class="form-control" name="noicongtac_quatrinh[]" placeholder="   Thời gian" value="<?php echo $data[3]; ?>"></td>
		                        <td align="center"><input type="text" class="form-control" name="chucvu[]" placeholder="   Thời gian" value="<?php echo $data[4]; ?>"></td>
		                    	<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>
		                    </tr>
						<?php endforeach; ?>
					</table>
				</div>
				<div class="col-sm-12">
					<button class="themquatrinhcongtac btn btn-success btn-sm" type="button" ><i class="fa fa-plus"></i></button>
					<input type="hidden" id="countquatrinhcongtac" name="" value="<?php echo $countquatrinhcongtac; ?>">
				</div>
			</div> <!-- quatrinhcongtac -->
			<div class="alert alert-info">
				<h4>Phần V: Kinh nghiệm trong Đảm bảo và Kiểm định chất lượng</h4>		
			</div> <!-- title -->
			<div class="form-group">
	            <label class="control-label col-sm-3" for="kinhnghiemdgn">Kinh nghiệm đánh giá ngoài</label>
	            <label class="radio-inline"><input type="radio" name="thamgiadgn" value="1" <?php echo $selectthongtinchung[23] == 1 ? 'checked = "checked"' : ''; ?> /> Đã tham gia </label>
				<label class="radio-inline"><input type="radio" name="thamgiadgn" value="2" <?php echo $selectthongtinchung[23] == 2 ? 'checked = "checked"' : ''; ?> /> Chưa tham gia </label>
	        </div>
			<div class="bangthamgiadgn form-group" <?php echo $selectthongtinchung[23] == 2 ? 'style="display:none"' : ''; ?> >
				<div class="col-sm-12">
					<table id="thamgiadgn" cellpadding="2" cellspacing="0" class="thamgiadgn table table-striped table-hover table-bordered">
						<tr class="success">
							<td align="center">Đơn vị tổ chức</td>
							<td align="center">Đơn vị được đánh giá</td>
							<td align="center">Vai trò trong đoàn</td>
							<td align="center">Tiêu chuẩn được phân công</td>
							<td></td>
						</tr>
						<?php if ($countthamgiadgn == 0): ?>
							<tr class="lv1">
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
								<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>
							</tr>
						<?php endif; ?>
						<?php $stt4 = 1; foreach ($selectthamgiadgn as $col) : ?>
							<tr class="lv1">
							<td align="center">
								<select name="donvitochuc<?php echo $stt4; ?>" class="donvitochuc1 form-control" >
									<?php
										$kq_select_don_vi_to_chuc = $wpdb->get_results( 'SELECT * FROM cacdonvitochucdgn',ARRAY_N);
										foreach ($kq_select_don_vi_to_chuc as $row) {
											if ( $row[0] == $col[2])
											{
												echo '<option selected="selected" value="'. $row[0] . '">' .$row[1] . '</option>';
											}
											else {
												echo '<option value="'. $row[0] . '">' .$row[1] . '</option>';
											}
										}
									 ?>
									<!-- <option value="4">Đơn vị khác</option> -->
								</select>
							</td>
							<td align="center">
								<input type="text" name="donviduocdanhgia<?php echo $stt4; ?>" value="<?php echo $col[3]; ?>" placeholder="" class="form-control">		
							</td>
							<td align="center">
								<select name="vaitrotrongdoan<?php echo $stt4; ?>" class="vaitrotrongdoan1 form-control" >
									<option value="1" <?php echo $col[4] == 1 ? 'selected="selected"' : ''; ?> >Trưởng đoàn</option>
									<option value="2" <?php echo $col[4] == 2 ? 'selected="selected"' : ''; ?> >Thư ký Đoàn</option>
									<option value="3" <?php echo $col[4] == 3 ? 'selected="selected"' : ''; ?> >Thành viên Đoàn</option>
									<option value="4" <?php echo $col[4] == 4 ? 'selected="selected"' : ''; ?> >Tổ thư ký</option>
									<option value="5" <?php echo $col[4] == 5 ? 'selected="selected"' : ''; ?> >Quan sát viên</option>
								</select>	
							</td>
							<td align="center" >
								<?php $array = explode(',', $col[5]);?>
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
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="1" <?php echo in_array( 1 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="2" <?php echo in_array( 2 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="3" <?php echo in_array( 3 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="4" <?php echo in_array( 4 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="5" <?php echo in_array( 5 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="6" <?php echo in_array( 6 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="7" <?php echo in_array( 7 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="8" <?php echo in_array( 8 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="9" <?php echo in_array( 9 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                    <td><input type="checkbox" name="row<?php echo $stt4; ?>tc[]" value="10" <?php echo in_array( 10 , $array) ? 'checked = "checked"' : ''?> ></td>
	                                </tr>
	                            </table>
							</td>
							<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>
						</tr>
						<?php $stt4++; endforeach; ?>											
					</table>
				</div>
				<div class="col-sm-12 pull-right">
					<button id="themthamgiadgn" class ="btn btn-success btn-sm" type="button" ><i class="fa fa-plus"></i></button>
					<input type="hidden" id="countthamgiadgn" name="countthamgiadgn" value="<?php echo $countthamgiadgn == 0 ? '1' : $countthamgiadgn; ?>">
				</div>
			</div> <!-- bangthamgiadgn -->
			<div class="form-group">
				<label class="control-label col-sm-3" for="kinhnghiemvietbc">Kinh nghiệm viết báo cáo</label>
				<label class="radio-inline"><input type="radio" name="kinhnghiemvietbc" value="1" <?php echo $selectthongtinchung[24] == 1 ? 'checked = "checked"' : '' ?> /> Đã có kinh nghiệm</label>
				<label class="radio-inline"><input type="radio" name="kinhnghiemvietbc" value="2" <?php echo $selectthongtinchung[24] == 2 ? 'checked = "checked"' : '' ?> /> Chưa có kinh nghiệm </label>
			</div>
			<div class="cackhoahocdambaovakiemdinhchatluong form-group">
				<label class="control-label col-sm-9" for="cackhoahoc">Các khóa học liên quan đến Đảm bảo và Kiểm định chất lượng mà Thầy/Cô đã từng tham gia</label>
				<div class="col-sm-12">
					<table id="cackhoahocdambaovakiemdinhchatluong" cellpadding="2" cellspacing="0" class="table table-striped table-hover table-bordered margin-top">
						<tr class="success">
							<td align="center">Tên khóa học</td>
							<td align="center">Thời gian</td>
							<td align="center">Nơi đào tạo</td>
							<td></td>
						</tr>
						<?php foreach ($selectcackhoahoc as $data): ?>
						<tr>
							<td align="center"><input class="form-control" type="text" name="khoahoc[]" placeholder="   Nhập tên Khóa học" value="<?php echo $data[2]; ?>"></td>
							<td align="center"><input class="form-control" type="text" name="thoigiankh[]" placeholder="   Nhập tên Khóa học" value="<?php echo $data[3]; ?>"></td>
							<td align="center"><input class="form-control" type="text" name="noidaotao[]" placeholder="   Nhập tên Khóa học" value="<?php echo $data[4]; ?>"></td>
							<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>
						</tr>
						<?php endforeach; ?>
					</table>
				</div>
				<div class="col-sm-12">
					<button class="themkhoahoc btn btn-success btn-sm" type="button" ><i class="fa fa-plus"></i></button>
					<input type="hidden" id="countkhoahoc" name="" value="<?php echo $countkhoahoc; ?>">
				</div>
			</div> <!-- cackhoahocdambaovakiemdinhchatluong -->
			<?php if ($selectthongtinchung[25]!='') { ?>
			<div class="kinhnghiemkhac form-group">
					<label class="control-label col-sm-8"for="kinhnghiemkhac">Những kinh nghiệm khác liên quan đến Đảm bảo và Kiểm định chất lượng giáo dục</label>
					<div class="col-sm-12">
						<textarea class="form-control margin-top" name="kinhnghiemkhac" rows="4" style="width:100%"><?php echo $selectthongtinchung[25]; ?></textarea>
					</div>
			</div> <!-- nhungkinhnghiemkhac -->
			<?php } ?>
		    <div class="capnhat">
				<button type="submit" name="update" id="capnhat" class="btn btn-primary"><i class="fa fa-save"></i> Lưu</button>
			</div>
		</div>
	</form>
</div> <!-- container -->
<?php get_footer(); ?>