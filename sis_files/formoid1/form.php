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
<link rel="stylesheet" href="<?=dirname($form_path)?>/formoid-flat-green.css" type="text/css" />
<span class="alert alert-success"><?=FINISH_MESSAGE;?></span>
<?php else: ?>
<!-- Start Formoid form-->
<link rel="stylesheet" href="<?=dirname($form_path)?>/formoid-flat-green.css" type="text/css" />
<script type="text/javascript" src="<?=dirname($form_path)?>/jquery.min.js"></script>
<form class="formoid-flat-green" style="background-color:#009999;font-size:15px;font-family:Arial,Helvetica,sans-serif;color:#666666;max-width:auto;min-width:150px" method="post"><div class="title"><h2>STUDENT INFORMATION SYSTEM(SIS)</h2></div>
	<div class="element-multiple<?frmd_add_class("multiple")?>" title="SELECT USER"><label class="title">SELECT USER<span class="required">*</span></label><div class="large"><select data-no-selected="Nothing selected" name="multiple[]" multiple="multiple" required="required">

		<option value="ADMIN">ADMIN</option>
		<option value="DIRECTOR">DIRECTOR</option>
		<option value="HOD">HOD</option>
		<option value="FACULTY">FACULTY</option>
		<option value="STUDENT">STUDENT</option></select></div></div>
	<div class="element-password<?frmd_add_class("password")?>" title="PASSWORD"><label class="title">PASSWORD<span class="required">*</span></label><input class="large" type="password" name="password" value="" required="required"/></div>
<div class="submit"><input type="submit" value="LOGIN"/></div></form><script type="text/javascript" src="<?=dirname($form_path)?>/formoid-flat-green.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>