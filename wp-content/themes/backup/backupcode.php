 <div class="capcha"><label for="captcha">Captcha</label>
			      	<input name="capcha" type="text" id="capcha" value="<?php  echo $_POST["capcha"]; ?>" size="7" maxlength="10" /><font color="#FF0000">(*)
			      				     	<img src="<?php echo bloginfo('template_directory').'/random_image.php'; ?>" />
			      				     	<span id="capcha_error"> </span> </font>
			      	<?php
			      						if(isset($_POST['hoantat']))
			      						{
			      									if($_POST['capcha'] == $_SESSION['security_code'])
			      								{
			      									echo "Mã lệnh hợp lệ";
			      								}
			      								else
			      								{
			      									echo "Mã lệnh không hợp lệ, vui lòng nhập lại mã lệnh"; ?>
			      									<script>
			      									document.formkdv.capcha.focus();
			      									</script>
			      				
			      								<?php	
			      								}
			      							}
			      					?>
			      </div> <!-- capcha -->