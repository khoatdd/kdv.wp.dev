function show_error(content) {
	$("#error_message .modal-body ul").append('<li><strong>'+content+'</strong></li>');
	$("#error_message").modal('show');
}
function checksignup() {
	$("#error_message .modal-body ul").empty();
	var s=document.formkdv;
	var check = true;
	if(s.hovatendem.value=='')
	{
		show_error('Vui lòng nhập họ và tên đệm!');	
		check = false;
	}

	if(s.ten.value=='')
	{
		show_error('Vui lòng nhập tên!');
		check = false;
	}

	if(s.ngaysinh.value=='')
	{
		show_error('Vui lòng chọn ngày sinh!');
		check = false;
	}

	if(s.gioitinh.value=='')
	{
		show_error('Vui lòng chọn giới tính!');
		check = false;
	}

	if(s.quequan.value=='')
	{
		show_error('Vui lòng nhập quê quán!');
		check = false;
	}
	
	if(s.noicongtac.value=='')
	{
		show_error('Vui lòng nhập nơi công tác!');
		check = false;
	}
	if(s.thamniencongtac.value=='')
	{
		show_error('Vui lòng nhập thâm niên công tác!');
		check = false;	
	}
	if(s.diachilienhe.value=='')
	{
		show_error('Vui lòng nhập địa chỉ liên hệ!');
		check = false;
	}
	if(s.dienthoaididong.value=='')
	{
		show_error('Vui lòng cung cấp số điện thoại di động!');
		check = false;
	}
	if(s.emaillienhe.value=='')
	{
		show_error('Vui lòng cung cấp email liên hệ!');
		check = false;
	}
	if(s.hocham.value=='')
	{
		show_error('Vui lòng cung cấp chức danh!');
		check = false;
	}
	if(s.hocvi.value=='')
	{
		show_error('Vui lòng nhập học vị!');
		check = false;	
	}
	if (s.linhvucchuyenmon.value == 0) {
		show_error('Vui lòng chọn lĩnh vực chuyên môn!');
		check = false;
	};
	if($("input[name='chuyennganhthacsi1']").val()=='')
	{
		show_error('Vui lòng nhập chuyên ngành đào tạo thạc sĩ!');
		check = false;
	}
	if($("input[name='noidaotaothacsi1']").val()=='')
	{
		show_error('Vui lòng nhập nơi đào tạo thạc sĩ!');
		check = false;
	}
	if(s.cckdv.value=='')
	{
		show_error('Vui lòng cung cấp thông tin về chứng chỉ kiểm định viên (Có hoặc Không)!');
		check = false;
	}
	if(s.thekdv.value=='')
	{
		show_error('Vui lòng cung cấp thông tin về thẻ kiểm định viên (Có hoặc Không)!');
		check = false;
	}
	if(s.trinhdotinhoc.value=='')
	{
		show_error('Vui lòng cung cấp thông thông tin về trình độ tin học!');
		check = false;
	}
	if(s.thamgiadgn.value=='')
	{
		show_error('Vui lòng chọn lựa đã tham gia đánh giá ngoài hay chưa');
		check = false;
	}
	if(s.kinhnghiemvietbc.value=='')
	{
		show_error('Vui lòng chọn lựa đã có kinh nghiệm viết báo cáo chưa');
		check = false;
	}
	if(s.capcha.value=='')
		{
			show_error('Vui lòng nhập mã bảo vệ Captcha');
			check = false;
		}
	if (!check) {event.preventDefault();}	
}