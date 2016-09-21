<!-- 
	Template Name: Login page
 -->
	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>
		<link rel="stylesheet" href="<?php echo bloginfo('url').'/wp-includes/css/dashicons.css'; ?>">
	
	
		<style type="text/css" media="screen">
			* {
				text-decoration: none;
			}
			body {
				  background: #f1f1f1;
				  min-width: 0;
				  color: #444;
				  font-family: "Arial";
				  font-size: 18px;
				  line-height: 1.4em;
			}
			label {
				color: #777;
 				font-size: 16px;
 				display: block;
			}
			.login-form {
				  width: 272px;
				  margin:auto;
				  padding: 1px 24px 20px;
				  font-weight: 400;
				  overflow: hidden;
				  background: #fff;
				  -webkit-box-shadow: 0 1px 3px rgba(0,0,0,.13);
				  box-shadow: 0 1px 3px rgba(0,0,0,.13);
			}
			input[type=text],input[type=password] {
				  background: #fbfbfb;
				  font-family: "Arial";
				  width: 264px;
				  font-size: 24px;
				  border: 1px solid #ddd;
				  padding: 3px;
 				  margin: 2px 6px -10px 0;
 				  height: 33px;	
 				  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.07);
				  box-shadow: inset 0 1px 2px rgba(0,0,0,.07);		 
				  -webkit-transition: .05s border-color ease-in-out;
				  transition: .05s border-color ease-in-out;
			}
			input[type=text]:focus,input[type=password]:focus {
				    border-color: #5b9dd9;
 					-webkit-box-shadow: 0 0 2px rgba(30,140,190,.8);
  					box-shadow: 0 0 2px rgba(30,140,190,.8);
				  background-color: #fff;
				  outline: 0;
				  -webkit-transition: .05s border-color ease-in-out;
				  transition: .05s border-color ease-in-out;
			}
			input[type=checkbox] {
				    border: 1px solid #b4b9be;
					  background: #fff;
					  color: #555;
					  clear: none;
					  cursor: pointer;
					  display: inline-block;
					  line-height: 0;
					  height: 16px;
					  margin: -4px 4px 0 0;
					  outline: 0;
					  padding: 0!important;
					  text-align: center;
					  vertical-align: middle;
					  width: 16px;
					  min-width: 16px;
					  -webkit-appearance: none;
					  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
					  box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
					  -webkit-transition: .05s border-color ease-in-out;
					  transition: .05s border-color ease-in-out;
			}
			input[type=checkbox]:focus {
				border-color: #5b9dd9;
				  -webkit-box-shadow: 0 0 2px rgba(30,140,190,.8);
				  box-shadow: 0 0 2px rgba(30,140,190,.8);
			}
			input[type=checkbox]:checked:before{
				  content: '\f147';
				  margin: -3px 0 0 -4px;
				  color: #1e8cbe;
				  float: left;
				  display: inline-block;
				  vertical-align: middle;
				  width: 16px;
				  font: 400 21px/1 dashicons;
				  speak: none;
				  -webkit-font-smoothing: antialiased;
				  -moz-osx-font-smoothing: grayscale;
			}
			.login-submit {
				float: right;
				margin-top: -10px;
			}
			.button {

			}
			.button-primary {
				  font-family: "Arial";
				  padding: 0 12px 2px;
				  background: #00a0d2;
				  border-color: #0073aa;
				  -webkit-box-shadow: inset 0 1px 0 rgba(120,200,230,.5),0 1px 0 rgba(0,0,0,.15);
				  box-shadow: inset 0 1px 0 rgba(120,200,230,.5),0 1px 0 rgba(0,0,0,.15);
				  color: #fff;
				  text-decoration: none;
				  display: inline-block;
				  text-decoration: none;
				  font-size: 16px;
				  line-height: 26px;
				  height: 28px;
				  margin: 0;
				  padding: 0 10px 1px;
				  cursor: pointer;
				  border-width: 1px;
				  border-style: solid;
				  -webkit-appearance: none;
				  -webkit-border-radius: 3px;
				  border-radius: 3px;
				  white-space: nowrap;
				  -webkit-box-sizing: border-box;
				  -moz-box-sizing: border-box;
				  box-sizing: border-box;
			}
			.logo {
				width:120px;
				margin:auto;
				margin-bottom: 10px;
			}
			.message {
				  border-left: 4px solid red;
				  background-color: #fff;
				  -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
				  box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
				  min-height: 20px;
				  width: 282px;
				  padding: 10px 10px 10px 24px;
				  margin:auto;
				  margin-bottom: 10px;
				  font-size: 17px;
			}
			.message p {
				margin:0;
				padding: 0;
			}
			.dangkyvaquenmatkhau {
				padding: 20px 24px 46px;
				margin:auto;
				width: 264px;
				font-size: 15px;
				color: #999;
			}
			.dangkyvaquenmatkhau a {
				color: #999;
			}
		</style>
	</head>
	<body>
	<div class="logo">
		<img src="<?php echo bloginfo('template_directory').'/images/logomoi.png'; ?>" alt="" width="120px">
	</div>
		<?php if (isset($_POST['login'])) { ?>
	<div class="message">
		<?php $login  = (isset($_GET['login']) ) ? $_GET['login'] : 0;
        if ( $login === "failed" ) {
                echo '<p><strong>LỖI:</strong> Sai "Tên tài khoản" hoặc "Mật khẩu".</p>';
        } elseif ( $login === "empty" ) {
                echo '<p><strong>LỖI:</strong> "Tên tài khoản" và "Mật khẩu" không thể bỏ trống.</p>';
        } elseif ( $login === "false" ) {
                echo '<p><strong>LỖI:</strong> Bạn đã thoát ra.</p>';
        }  ?> 
	</div> <?php } ?>
	<div class="login-form">
			
	<?php			
        

				$args = array(
					'redirect' => site_url( $_SERVER['REQUEST_URI'] ),
					'form_id' => 'dangnhap', //Để dành viết CSS
					'label_username' => __( 'Tên tài khoản' ),
					'label_password' => __( 'Mật khẩu' ),
					'label_remember' => __( 'Ghi nhớ' ),
					'label_log_in' => __( 'Đăng nhập' ),
					'remember'       => true,
				);
				wp_login_form($args); ?>
	</div>
	<div class="dangkyvaquenmatkhau">
		<a class="dangky" href="<?php echo wp_registration_url(); ?>">Đăng ký</a> |
		<a href="<?php echo wp_lostpassword_url( get_bloginfo('url') ); ?>" title="Lost Password">Quên mật khẩu</a> <br>
		<--<a href="<?php echo home_url(); ?>">Quay về trang chủ</a>
	</div> <!-- dangkyvaquenmatkhau -->
	
	</body>
	</html>
