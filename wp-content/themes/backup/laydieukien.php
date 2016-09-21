<!-- 
	Template Name: Lấy điều kiện
 -->
<?php
	$dieukien = $_GET["dieukien"];  
		if ($dieukien=='') {
			echo '<option value="0">Chọn điều kiện</option>';
		} else {
		$lenh = $wpdb->get_results("SELECT DieuKien,KyHieu FROM dieukientimkiem WHERE DieuKien='$dieukien'",ARRAY_N);
 			foreach ($lenh as $data) {
			echo '<option value="'.$data[1].'">'.$data[1].'</option>';
		  }
	}
	
?>
