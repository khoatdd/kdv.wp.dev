<?php 
	global $wpdb;
	$get_ID = get_current_user_id();
	$selectid = $wpdb->get_results( 
	"
	SELECT ID
	FROM thongtinchung
	WHERE ID = '$get_ID'
	"
	);
	if (!is_user_logged_in()) { 

				//auth_redirect();
				wp_redirect(wp_login_url());
				exit;
			} else if ($wpdb->num_rows == 0) {
				wp_redirect(home_url().'/dang-ky-thong-tin');
				exit;
			} else  {
				wp_redirect(home_url().'/xem-thong-tin');
				exit;
			}
?>