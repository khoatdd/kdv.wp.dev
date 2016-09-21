<?php
global $wpdb;
$userId = get_current_user_id();
$user = wp_get_current_user();
$allowed_roles = array('editor', 'administrator');
$selectid = $wpdb->get_results(
    "
	SELECT ID
	FROM thongtinchung
	WHERE user_id = '$userId'
	"
);
$check = $wpdb->num_rows;
/* === If user is not logged in ==> redirect them to to login page ==*/
if (!is_user_logged_in()) {
    wp_redirect(wp_login_url());
}

/* === If user is already logged in but not create their profile ==> render the create page ==*/
if ($check == 0)
{
	wp_redirect(home_url('/create'));
}

/* === If user is logged in and already created their profile ==> render the show page ==*/
if ($check > 0)
{
	wp_redirect(home_url('/view'));
}