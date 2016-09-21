function show_error(content) {
	$("#error_message .modal-body ul").append('<li><strong>'+content+'</strong></li>');
	$("#error_message").modal('show');
}
/* === Add datepicker functioN to ngaysinh input === */
$(function() {
  	$(".datepicker").datepicker({yearRange:'1930:2020',
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

/* === Them trinh do thac si === */
$(function(){
	var count=$("#counttrinhdothacsi").val();
	count++;
	$("#themtrinhdothacsi").click(function(){
			$(".trinhdothacsi tr:last").after(
				'<tr>'+
					'<td align="center"><input type="text" class="form-control" name="chuyennganhthacsi[]" placeholder="Chuyên ngành đào tạo" name="chuyennganhthacsi'+count+'" ></td>'+
					'<td align="center"><input type="text" class="form-control" name="noidaotaothacsi[]"  placeholder="Nơi đào tạo" name="noidaotaothacsi'+count+'" ></td>'+
				'<td align="center"><input type="text" class="form-control" name="namcapbangthacsi[]" placeholder="Năm cấp bằng" name="namcapbangthacsi'+count+'" ></td>'+
		        '<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>'+
				'</tr>');
			$("#counttrinhdothacsi").val(count);
			count++;
		});
});

/* === Them trinh do tien si === */
$(function(){
	$("#themtrinhdotiensi").click(function(){
			$(".trinhdotiensi tr:last").after
			(
				'<tr>'+
					'<td align="center"><input type="text" class="form-control" name="chuyennganhtiensi[]" placeholder="Chuyên ngành đào tạo"></td>'+
					'<td align="center"><input type="text" class="form-control" name="noidaotaotiensi[]"  placeholder="Nơi đào tạo"></td>'+
				'<td align="center"><input type="text" class="form-control" name="namcapbangtiensi[]" placeholder="Năm cấp bằng"></td>'+
		        '<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>'+
				'</tr>'
			);
		});
});

$(function(){
	/* === Disable 'ngaycapthe' and 'sothekdv' input when user dont have 'thekdv' === */
	$('input[name=thekdv]').change(function(){
			var thekdv_value= $(this).val();
			if (thekdv_value==1)
		{
			$("input[name=sothekdv]").prop('disabled', false); $("input[name=ngaycapthe]").prop('disabled', false);
		} 
		else
		{
			$("input[name=sothekdv]").prop('disabled', true); $("input[name=ngaycapthe]").prop('disabled', true);
		}
		});

	/* === Disable 'ngaycapcc' and 'sochungchi' input when user dont have 'thekdv' === */
		$('input[name=cckdv]').change(function(){
			var cckdv_value= $(this).val();
			if (cckdv_value==1)
			{
				$("input[name=sochungchi]").prop('disabled', false); $("input[name=ngaycapcc]").prop('disabled', false);
			} 
			else
			{
				$("input[name=sochungchi]").prop('disabled', true); $("input[name=ngaycapcc]").prop('disabled', true);
			}

		});
		
	/* === Toogle bangthamgiadgn table when user change values of 'thamgiadgn' === */
		$('input[name=thamgiadgn]').change(function(){
			var thamgiadgn_value= $(this).val();
			if (thamgiadgn_value==1)
		{
		 	$(".bangthamgiadgn").show();	
		}
		else
		{
			$(".bangthamgiadgn").hide();	
		}
		});
	});

$(function(){
	$("#buttonngoaingu").click(function(){
		$(".ngoaingu tr:last").after(
			'<tr>'+
				'<td align="center">'+
					'<select name="ngoaingu[]" class="form-control" >'+
						'<option value="0">Chọn ngôn ngữ</option>'+
						'<option value="1">Tiếng Anh</option>'+
						'<option value="2">Tiếng Pháp</option>'+
						'<option value="3">Tiếng Nga</option>'+
						'<option value="4">Tiếng Đức</option>'+
						'<option value="5" >Ngoại ngữ khác</option>'+
					'</select>'+
					'<input  type="text"  name="ngoaingukhac[]" value="" placeholder="" class="form-control" style="display: none;none;margin-top:5px;">'+
				'</td>'+
				'<td align="center">'+
					'<select class="form-control" name="nghe[]">'+
						'<option value="1">Tốt</option>'+
						'<option value="2">Khá</option>'+
						'<option value="3">Trung bình</option>'+
						'<option value="4">Yếu</option>'+
					'</select>'+
				'</td>'+
				'<td align="center">'+
					'<select  class="form-control" name="noi[]">'+
						'<option value="1">Tốt</option>'+
						'<option value="2">Khá</option>'+
						'<option value="3">Trung bình</option>'+
						'<option value="4">Yếu</option>'+
					'</select>'+
				'</td>'+
				'<td align="center">'+
					'<select class="form-control" name="doc[]" >'+
						'<option value="1">Tốt</option>'+
						'<option value="2">Khá</option>'+
						'<option value="3">Trung bình</option>'+
						'<option value="4">Yếu</option>'+
					'</select>'+
				'</td>'+
				'<td align="center">'+
					'<select class="form-control" name="viet[]">'+
						'<option value="1">Tốt</option>'+
						'<option value="2">Khá</option>'+
						'<option value="3">Trung bình</option>'+
						'<option value="4">Yếu</option>'+
					'</select>'+
				'</td>'+
	        	'<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>'+
			'</tr>'
		);
		});

	$('#trinhdongoaingu').on
		(
			'change',
			'select[name^="ngoaingu"]',
			function()
			{
				if ($(this).val()==5)
				{
					$(this).next().css("display","block");
				}
				else
				{
					$(this).next().css("display","none");
			}
		});	
	
});

/* === Add new line to quatrinhcongtac table === */
$(function(){
	var count = $('#countquatrinhcongtac').val();
	count++;
	$(".themquatrinhcongtac").click(function(){
			$(".quatrinhcongtac tr:last").after(
				'<tr>'+
					'<td><input class="form-control" type="text" name="thoigianct[]" placeholder="   Thời gian"  ></td>'+
					'<td><input class="form-control" type="text" name="noicongtac_quatrinh[]"  placeholder="   Nơi công tác"  ></td>'+
				'<td><input class="form-control" type="text" name="chucvu[]" placeholder="   Chức vụ"  ></td>'+
		        '<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>'+
				'</tr>');
			$("#countquatrinhcongtac").val(count);
			count++;
		});

});	 
$(function(){
	/* === Build template for selected items of donvitochuc === */
	var out = '';
	for (var i = 0; i < object.length; i++) {
		// object is passed form wp_localize_script in functions.php
		out += '<option value="'+ object[i][0] +'">'+ object[i][1] +'</option>';
	}
	
	var count = $('#countthamgiadgn').val();
	if (count == 0) { count = 1;}
	count++;
	$("#themthamgiadgn").click(function(){
		$('#thamgiadgn > tbody > tr:last').after(
			'<tr class="lv1">'+
				'<td align="center">'+
					'<select  name="donvitochuc'+ count +'" class="donvitochuc'+ count +' form-control" >'+
					out +
					'</select>'	+
					'<input type="text" name="donvitochuckhac'+ count +'" class="donvitochuckhac form-control'+ count +'" value="" placeholder="" style="display:none">'+
				'</td>'+
				'<td align="center">'+
					'<input class="form-control" type="text" name="donviduocdanhgia'+ count +'" value="" placeholder="">'	+
				'</td>'+
				'<td align="center">'+
					'<select name="vaitrotrongdoan'+ count +'" class="vaitrotrongdoan'+ count +' form-control" >'+
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
				'<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>'+
			'</tr>'
				);
	count++;
	$("#countthamgiadgn").val(count);
		});
	
});
$('.donvitochuc1').on('change',function(){
	if ($('.donvitochuc1').val()==4)
	{
		$('.donvitochuckhac1').css("display","block");
	}
	else
	{
		$('.donvitochuckhac1').css("display","none");
	}
});

/* === Add new line to khoahoc table === */
$(function(){
	var count = $('#countkhoahoc').val();
	count++;
	$(".themkhoahoc").click(function(){
			$(".cackhoahocdambaovakiemdinhchatluong tr:last").after(
				'<tr>'+
					'<td><input class="form-control" type="text" name="khoahoc[]" placeholder="   Nhập tên khóa học" ></td>'+
					'<td><input class="form-control" type="text" name="thoigiankh[]"  placeholder="   Thời gian"  ></td>'+
					'<td><input class="form-control" type="text" name="noidaotao[]" placeholder="   Nơi đào tạo"  ></td>'+
					'<td align="center"><button type="button" class="btn btn-danger delete btn-sm">Xóa</button></td>'+
				'</tr>');
			$("#countkhoahoc").val(count);
			count++;
		});

});	

/* === Function delete table row on delete clicked === */
function deleteTableRow (tableSelector, deleteButtonSelector) {
	$(tableSelector).on('click',deleteButtonSelector,function(){
		$(this).parent().parent('tr').remove();
	});
}
deleteTableRow('#trinhdothacsi','button.delete');
deleteTableRow('#trinhdotiensi','button.delete');
deleteTableRow('#trinhdongoaingu','button.delete');
deleteTableRow('#quatrinhcongtac','button.delete');
deleteTableRow('#thamgiadgn','button.delete');
deleteTableRow('#cackhoahocdambaovakiemdinhchatluong','button.delete');