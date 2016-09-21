<?php
@ini_set('upload_max_size', '64M');
@ini_set('post_max_size', '64M');
@ini_set('max_execution_time', '300');

/**
 * @ Thiết lập các hằng dữ liệu quan trọng
 * @ THEME_URL = get_stylesheet_directory() - đường dẫn tới thư mục theme
 * @ CORE = thư mục /core của theme, chứa các file nguồn quan trọng.
 **/
define('THEME_URL', get_stylesheet_directory());
define('CORE', THEME_URL . '/core');

/**
 * @ Load file /core/init.php
 * @ Đây là file cấu hình ban đầu của theme mà sẽ không nên được thay đổi sau này.
 **/

require_once(CORE . '/init.php');

/**
 * @ Thiết lập $content_width để khai báo kích thước chiều rộng của nội dung
 **/
if (!isset($content_width)) {
    /*
     * Nếu biến $content_width chưa có dữ liệu thì gán giá trị cho nó
     */
    $content_width = 620;
}

/**
 * @ Thiết lập các chức năng sẽ được theme hỗ trợ
 **/
if (!function_exists('ttkd_theme_setup')) {
    /*
     * Nếu chưa có hàm ttkd_theme_setup() thì sẽ tạo mới hàm đó
     */
    function ttkd_theme_setup()
    {
        /*
         * Thiết lập theme có thể dịch được
         */
        $language_folder = THEME_URL . '/languages';
        load_theme_textdomain('ttkd', $language_folder);

        /*
         * Tự chèn RSS Feed links trong <head>
         */
        add_theme_support('automatic-feed-links');

        /*
         * Thêm chức năng post thumbnail
         */
        add_theme_support('post-thumbnails');

        /*
         * Thêm chức năng title-tag để tự thêm <title>
         */
        add_theme_support('title-tag');

        /*
         * Thêm chức năng post format
         */
        add_theme_support('post-formats',
            array(
                'video',
                'image',
                'audio',
                'gallery'
            )
        );

        /*
         * Thêm chức năng custom background
         */
        $default_background = array(
            'default-color' => '#e8e8e8',
        );
        add_theme_support('custom-background', $default_background);

        /*
         * Tạo menu cho theme
         */
        register_nav_menu('primary-menu', __('Primary Menu', 'ttkd'));
        register_nav_menu('side-menu', __('Side Menu', 'ttkd'));

        /*
         * Tạo sidebar cho theme
         */
        $sidebar = array(
            'name' => __('Main Sidebar', 'ttkd'),
            'id' => 'main-sidebar',
            'description' => 'Main sidebar for ttkd theme',
            'class' => 'main-sidebar',
            'before_title' => '<h3 class="widgettitle">',
            'after_sidebar' => '</h3>'
        );
        register_sidebar($sidebar);
    }

    add_action('init', 'ttkd_theme_setup');

}
/**
 * @ Thiết lập hàm hiển thị logo
 * @ ttkd_logo()
 **/
if (!function_exists('ttkd_logo')) {
    function ttkd_logo()
    { ?>
        <div class="logo">

            <div class="site-name">
                <?php if (is_home()) {
                    printf(
                        '<h1><a href="%1$s" title="%2$s">%3$s</a></h1>',
                        get_bloginfo('url'),
                        get_bloginfo('description'),
                        get_bloginfo('sitename')
                    );
                } else {
                    printf(
                        '</p><a href="%1$s" title="%2$s">%3$s</a></p>',
                        get_bloginfo('url'),
                        get_bloginfo('description'),
                        get_bloginfo('sitename')
                    );
                } // endif
                ?>
            </div>
            <div class="site-description"><?php bloginfo('description'); ?></div>

        </div>
    <?php }
}
/* Tự động chuyển đến một trang khác sau khi login */
function my_login_redirect($redirect_to, $request, $user)
{
    //is there a user to check?
    global $user;
    if (isset($user->roles) && is_array($user->roles)) {
        //check for admins
        if (in_array('administrator', $user->roles)) {
            // redirect them to the default place
            return admin_url();
        } else {
            return home_url();
        }
    } else {
        return $redirect_to;
    }
}

add_filter('login_redirect', 'my_login_redirect', 10, 3);

// function redirect_login_page() {
//     $login_page  = home_url( '/dang-nhap/' );
//     $page_viewed = basename($_SERVER['REQUEST_URI']); 

//     if( $page_viewed == "wp-login.php" && $_SERVER['REQUEST_METHOD'] == 'GET') {
//         wp_redirect($login_page);
//         exit;
//     }
// }
// add_action('init','redirect_login_page');

/* Kiểm tra lỗi đăng nhập */
// function login_failed() {
//     $login_page  = home_url( '/dang-nhap/' );
//     wp_redirect( $login_page . '?login=failed' );
//     exit;
// }
// add_action( 'wp_login_failed', 'login_failed' ); 

// function verify_username_password( $user, $username, $password ) {
//     $login_page  = home_url( '/dang-nhap/' );
//     if( $username == "" || $password == "" ) {
//         wp_redirect( $login_page . "?login=empty" );
//         exit;
//     }
// }
// add_filter( 'authenticate', 'verify_username_password', 1, 3);

add_action('wp_enqueue_scripts', 'kdv_scripts');
function kdv_scripts()
{
    /* add styles */
    wp_enqueue_style('bootstrap-core', get_template_directory_uri() . '/css/bootstrap.css');
    wp_enqueue_style('font-awesome', get_template_directory_uri() . '/css/font-awesome.min.css');
    wp_enqueue_style('jquery-ui', get_template_directory_uri() . '/css/jquery-ui.min.css');
    wp_enqueue_style('custom', get_template_directory_uri() . '/style.css');

    /* add scripts */
    wp_enqueue_script( 'custom-js', get_template_directory_uri() . '/js/js.js', true );
}

//Sửa logo trang đăng nhập
function my_login_logo()
{ ?>
    <style type="text/css">
        .login h1 a {
            background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/img/logomoi.png);
            background-size: 150px;
            width: 150px;
            height: 150px;
            margin-top: -80px;
            padding-bottom: 0px;
        }
    </style>
<?php }

add_action('login_enqueue_scripts', 'my_login_logo');

//Sửa lại đường link khi click vào logo ở trang đăng nhập
function my_login_logo_url()
{
    return home_url();
}

add_filter('login_headerurl', 'my_login_logo_url');

function my_login_logo_url_title()
{
    return 'Trung tâm Kiểm định chất lượng giáo dục - ĐHQG-HCM';
}

add_filter('login_headertitle', 'my_login_logo_url_title');
// Tự động chuyển tới trang đăng nhập sau khi đăng ký
add_action('init', 'my_register_redirect');
function my_register_redirect()
{

    if ($_GET['register'] == true) {
        wp_redirect(home_url());
        exit;
    }
}

// add_action('init','redirect_register_page');
// function redirect_register_page() {
//     $register_page  = home_url( '/dang-ky/' );
//     $page_viewed = basename($_SERVER['REQUEST_URI']); 
//     if( $page_viewed == "wp-login.php?action=register" && $_SERVER['REQUEST_METHOD'] == 'GET') {
//         wp_redirect($register_page);
//         exit;
//     }
// }

// add_filter('login_errors','login_error_message');

// function login_error_message($error){
//     //check if that's the error you are looking for
//     $pos = strpos($error, 'incorrect');
//     $pos2 = strpos($error, 'empty');
//     if (is_int($pos)) {
//         //its the right error so you can overwrite it
//         $error = "Tài khoản hoặc mật khẩu không đúng";
//     } else if (is_int($pos2)){
//         $error = "Vui lòng nhập mật khẩu";
//     }
//     return $error;
// }
if (function_exists('add_db_table_editor')) {

    add_db_table_editor(array('title' => 'Các đơn vị tổ chức Đánh giá ngoài', 'table' => 'cacdonvitochucdgn', 'sql' => 'SELECT * FROM cacdonvitochucdgn ORDER BY ID ASC'));
    add_db_table_editor(array('title' => 'Điều kiện tìm kiếm', 'table' => 'dieukientimkiem', 'sql' => 'SELECT * FROM dieukientimkiem'));
}
// Add Password, Repeat Password  to WordPress registration form
// http://wp.me/p1Ehkq-gn
add_action('register_form', 'ts_show_extra_register_fields');
function ts_show_extra_register_fields()
{
    ?>
    <p>
        <label for="password">Mật khẩu<br/>
            <input id="password" class="input" type="password" tabindex="30" size="25" value="" name="password"/>
        </label>
    </p>
    <p>
        <label for="repeat_password">Xác nhận mật khẩu<br/>
            <input id="repeat_password" class="input" type="password" tabindex="40" size="25" value=""
                   name="repeat_password"/>
        </label>
    </p>
    <?php
}

// Check the form for errors
add_action('register_post', 'ts_check_extra_register_fields', 10, 3);
function ts_check_extra_register_fields($login, $email, $errors)
{
    if ($_POST['password'] !== $_POST['repeat_password']) {
        $errors->add('passwords_not_matched', "<strong>ERROR</strong>: Passwords must match");
    }
    if (is_int(strpos($_POST['user_login'], ' '))) {
        $errors->add('passwords_contain_space', "<strong>ERROR</strong>: Tên tài khoản không được chứa ký tự khoảng trống ");
    }
    if (strlen($_POST['password']) < 8) {
        $errors->add('password_too_short', "<strong>ERROR</strong>: Passwords must be at least eight characters long");
    }
}

// Storing WordPress user-selected password into database on registration
// http://wp.me/p1Ehkq-gn
add_action('user_register', 'ts_register_extra_fields', 100);
function ts_register_extra_fields($user_id)
{
    $userdata = array();
    $userdata['ID'] = $user_id;
    if ($_POST['password'] !== '') {
        $userdata['user_pass'] = $_POST['password'];
    }
    $new_user_id = wp_update_user($userdata);
}

// add_filter( 'authenticate', 'wp_authenticate_email_password', 20, 3 );
?>

