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
<form class="formoid-solid-green" style="background-color:#FFFFFF;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:AUTO;min-width:150px" method="post"><div class="title"><h2>FEEDBACK FORM</h2></div>
	<div class="element-name<?frmd_add_class("name")?>" title="Name"><label class="title"><span class="required">*</span></label><span class="nameFirst"><input placeholder="Name First" type="text" size="8" name="name[first]" required="required"/><span class="icon-place"></span></span><span class="nameLast"><input placeholder="Name Last" type="text" size="14" name="name[last]" required="required"/><span class="icon-place"></span></span></div>
	<div class="element-email<?frmd_add_class("email")?>" title="Email"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="email" name="email" value="" required="required" placeholder="Email"/><span class="icon-place"></span></div></div>
	<div class="element-textarea<?frmd_add_class("textarea")?>" title="FEEDBACK"><label class="title"><span class="required">*</span></label><div class="item-cont"><textarea class="medium" name="textarea" cols="20" rows="5" required="required" placeholder="FEEDBACK"></textarea><span class="icon-place"></span></div></div>
<div class="submit"><input type="submit" value="Submit"/></div></form><script type="text/javascript" src="<?=dirname($form_path)?>/formoid-solid-green.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>