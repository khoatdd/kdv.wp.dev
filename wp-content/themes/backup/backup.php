					//echo $count;
					$sql="SELECT * FROM thongtinchung WHERE";
					if ($count==1) {
						$tukhoa = $_POST['tukhoa1'];
						$loaitimkiem=$_POST['loaitimkiem1'];
					}
					for ($i=1; $i <=$count; $i++) {
						$tukhoa = 'tukhoa'.$i;
						$tukhoa = $_POST[$tukhoa];
						//echo $tukhoa."---";
						if ($tukhoa!='') {
							$kethop = 'kethop'.$i;
							$kethop = $_POST[$kethop];
							//echo $kethop."---";
						} else {
							$kethop='';
						}
						$loaitimkiem='loaitimkiem'.$i;
						$loaitimkiem=$_POST[$loaitimkiem];
						//echo $loaitimkiem."---";
						$selectsqltimkiem = $wpdb->get_results("SELECT * FROM dieukientimkiem WHERE dieukien = '$loaitimkiem'",ARRAY_N);
						$selectsqlsyntax = $wpdb->get_results("SELECT SQLSyntax FROM timkiem WHERE LoaiTimKiem_KhongDau = '$loaitimkiem'",ARRAY_N);
						foreach ($selectsqlsyntax as $data ) {
							$loaitimkiem = $data[0];
						}
						$dieukien= 'dieukien'.$i;
						foreach ($selectsqltimkiem as $data) {
							if ($_POST[$dieukien]==$data[3]) {
								$tukhoa = $data[4].$tukhoa.$data[5];
							}
						}
						$sql = $sql." ".$kethop." ".$loaitimkiem." ".$tukhoa;
					}
				?>

				Kết quả tìm kiếm:
				<?php
				// echo $sql;
				$result = $wpdb->get_results($sql,ARRAY_N);
				$n =$wpdb->num_rows;
				if ($n==0) {
					echo 'Không tìm thấy dữ liệu phù hợp.';
				} else {
					echo 'Tìm thấy '.$n.' kết quả phù hợp. <br>';
					foreach ($result as $key) { ?>
					<a href="<?php echo home_url().'/ket-qua-tim-kiem?ID='.$key[1]; ?>"><?php echo $key[2].' '.$key[3]; ?></a>
					<br>
				<?php	}
				}
