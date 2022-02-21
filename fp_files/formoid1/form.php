<?php

define('EMAIL_FOR_REPORTS', '');
define('RECAPTCHA_PRIVATE_KEY', '@privatekey@');
define('FINISH_URI', 'http://');
define('FINISH_ACTION', 'message');
define('FINISH_MESSAGE', 'Thanks for filling out my form!');
define('UPLOAD_ALLOWED_FILE_TYPES', 'doc, docx, xls, csv, txt, rtf, html, zip, jpg, jpeg, png, gif');

require_once str_replace('\\', '/', __DIR__) . '/handler.php';

?>

<?php if (frmd_message()): ?>
<link rel="stylesheet" href="<?=dirname($form_path)?>/formoid-solid-green.css" type="text/css" />
<span class="alert alert-success"><?=FINISH_MESSAGE;?></span>
<?php else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="<?=dirname($form_path)?>/formoid-solid-green.css" type="text/css" />
<script type="text/javascript" src="<?=dirname($form_path)?>/jquery.min.js"></script>
<form class="formoid-solid-green" style="background-color:#ffffff;font-size:15px;font-family:'Courier New',Courier,monospace;color:#34495E;max-width:500PX;min-width:150px" method="post"><div class="title"><h2>PASSWORD FORGOTTON</h2></div>
	<div class="element-input<?frmd_add_class("input")?>" title="USER NAME"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" name="input" required="required" placeholder="USER NAME"/><span class="icon-place"></span></div></div>
	<div class="element-phone<?frmd_add_class("phone")?>" title="PHONE"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="tel" pattern="[+]?[\.\s\-\(\)\*\#0-9]{3,}" maxlength="24" name="phone" required="required" placeholder="PHONE" value=""/><span class="icon-place"></span></div></div>
	<div class="element-password<?frmd_add_class("password1")?>" title="NEW PASSWORD"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="password" name="password1" value="" required="required" placeholder="NEW PASSWORD"/><span class="icon-place"></span></div></div>
	<div class="element-password<?frmd_add_class("password")?>" title="REPEAT NEW PASSWORD"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="password" name="password" value="" required="required" placeholder="REPEAT NEW PASSWORD"/><span class="icon-place"></span></div></div>
	<div class="element-select<?frmd_add_class("select")?>" title="SELECT"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><span><select name="select" required="required">

		<option value="FACULTY">FACULTY</option>
		<option value="DIRECTOR">DIRECTOR</option>
		<option value="HOD">HOD</option>
		<option value="STUDENT">STUDENT</option>
		<option value="ADMIN">ADMIN</option></select><i></i><span class="icon-place"></span></span></div></div></div>
<div class="submit"><input type="submit" value="CHANGE PASSWORD"/></div></form><script type="text/javascript" src="<?=dirname($form_path)?>/formoid-solid-green.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>