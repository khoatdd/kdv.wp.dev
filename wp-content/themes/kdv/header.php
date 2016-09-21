<?php
    if (!is_user_logged_in())
    {
        wp_redirect(wp_login_url());
    }
    $user = wp_get_current_user();
    $allowed_roles = array('editor', 'administrator'); 
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php bloginfo('name'); ?></title>
	<?php wp_head(); ?>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active">
                	<a href="<?php echo admin_url(); ?>">
                		<i class="fa fa-user"></i> <?php echo $user->user_login ?>
                	</a>
                </li>
                <?php if( is_page_template('templates/view.php') ): ?>
                <li>
                	<a href="<?php echo home_url() . '/edit'; ?>">
                		<i class="fa fa-edit"></i> Cập nhật thông tin
                	</a>
                </li>
                <?php endif; ?>
                <?php if( array_intersect($allowed_roles, $user->roles ) ): ?>
                <li>
               	<a href="<?php echo home_url() . '/search'; ?>">
                	<i class="fa fa-search"></i> Tìm kiếm thông tin KĐV
                </a>
                </li>
                <?php endif; ?>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<?php echo admin_url(); ?>"><i class="fa fa-cog"></i> Quản lý tài khoản</a></li>
                <li><a href="<?php echo wp_logout_url(home_url()); ?>">Đăng xuất <i class= "fa fa-sign-out"></i></i></a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container">
    <div class="header">
        <div class="headerimg">
            <img src="<?php echo bloginfo('template_directory') . '/img/logo.jpg'; ?>" alt="" class="img-responsive"
                 style="margin:10px auto">
        </div>
        <div class="headertitle alert-success">
            <h1>THÔNG TIN KIỂM ĐỊNH VIÊN</h1>
        </div>
    </div>
</div>