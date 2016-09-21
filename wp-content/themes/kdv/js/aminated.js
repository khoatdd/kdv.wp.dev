
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

		  $(function(){
			var count=2;
			$("#buttonngoaingu").click(function(){
   				$(".ngoaingu tr:last").after(
   					'<tr>'+
   									'<td align="center">'+
   										count+
   									'</td>'+
									'<td align="center">'+
										'<select name="ngoaingu' + count + '" class="ngoaingu' + count + '" >'+
											'<option value="1">Tiếng Anh</option>'+
											'<option value="2">Tiếng Pháp</option>'+
											'<option value="3">Tiếng Nga</option>'+
											'<option value="4">Tiếng Đức</option>'+
											'<option value="5" >Ngoại ngữ khác</option>'+
										'</select>'+
										'<input  type="text" size="13" name="ngoaingukhac' + count + '" value="" placeholder="" class="ngoaingukhac' + count + '" style="display: none;none;margin-top:5px;">'+
									'</td>'+
									'<td align="center">'+
										'<select name="nghe' + count + '">'+
											'<option value="1">Tốt</option>'+
											'<option value="2">Khá</option>'+
											'<option value="3">Trung bình</option>'+
											'<option value="4">Yếu</option>'+
										'</select>'+
									'</td>'+
									'<td align="center">'+
										'<select name="noi' + count + '">'+
											'<option value="1">Tốt</option>'+
											'<option value="2">Khá</option>'+
											'<option value="3">Trung bình</option>'+
											'<option value="4">Yếu</option>'+
										'</select>'+
									'</td>'+
									'<td align="center">'+
										'<select name="doc' + count + '" >'+
											'<option value="1">Tốt</option>'+
											'<option value="2">Khá</option>'+
											'<option value="3">Trung bình</option>'+
											'<option value="4">Yếu</option>'+
										'</select>'+
									'</td>'+
									'<td align="center">'+
										'<select name="viet' + count + '">'+
											'<option value="1">Tốt</option>'+
											'<option value="2">Khá</option>'+
											'<option value="3">Trung bình</option>'+
											'<option value="4">Yếu</option>'+
										'</select>'+
									'</td>'+
								'</tr>'
   					);
   				$("#hidden2").val(count);
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
								'<select name="donvitochuc'+ count +'" class="donvitochuc'+ count +'" >'+
									
												'<?php
												$kq_select_don_vi_to_chuc = $wpdb->get_results( 'SELECT * FROM cacdonvitochucdgn',ARRAY_N);
												foreach ($kq_select_don_vi_to_chuc as $row) {
													echo '<option value="'. $row[0] . '">' .$row[1] . '</option>'; 
												}
											 ?>'
								+
								'</select>'	+
								'<input type="text" name="donvitochuckhac1" class="donvitochuckhac'+ count +'" value="" placeholder="" style="display:none">'+
							'</td>'+
							'<td align="center">'+
								'<input type="text" name="donviduocdanhgia'+ count +'" value="" placeholder="">'	+
							'</td>'+
							'<td align="center">'+
								'<select name="vitritrongdoan'+ count +'" class="vitritrongdoan'+ count +'" >'+
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
											'<td><input type="checkbox" name="row'+ count +'tc1" value="1"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc2" value="2"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc3" value="3"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc4" value="4"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc5" value="5"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc6" value="6"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc7" value="7"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc8" value="8"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc9" value="9"></td>'+
											'<td><input type="checkbox" name="row'+ count +'tc10" value="10"></td>'+
										'</tr>'+
								'</table>'+
							'</td>'+
						'</tr>'
   					);
			
			count++;
			$("#hidden3").val(count);
   			});
			
		});
