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
<form class="formoid-solid-green" style="background-color:#009999;font-size:14px;font-family:'Courier New',Courier,monospace;color:#34495E;max-width:600px;min-width:150px" method="post"><div class="title"><h2>ODD SEMESTER (14-15)</h2></div>
	<div class="element-input<?frmd_add_class("input")?>" title="FACULTY NAME"><label class="title"></label><div class="item-cont"><input class="large" type="text" name="input" placeholder="FACULTY NAME"/><span class="icon-place"></span></div></div>
	<div class="element-multiple<?frmd_add_class("multiple")?>" title="PURPOSE"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple[]" multiple="multiple" required="required">

		<option value="INSERT ATTENDANCE">INSERT ATTENDANCE</option>
		<option value="CUMULATIVE ATTENDANCE">CUMULATIVE ATTENDANCE</option>
		<option value="DAILY ATTENDANCE">DAILY ATTENDANCE</option>
		<option value="CHARTWAISE ATTENDANCE">CHARTWAISE ATTENDANCE</option>
		<option value="UPLOAD ASSIGNMENT">UPLOAD ASSIGNMENT</option>
		<option value="DATEWISE ATTENDANCE">DATEWISE ATTENDANCE</option>
		<option value="THEORY INTERNAL MARKS">THEORY INTERNAL MARKS</option>
		<option value="INSERT SESSIONAL MARKS">INSERT SESSIONAL MARKS</option>
		<option value="SUBJECTWISE SESSIONAL MARKS">SUBJECTWISE SESSIONAL MARKS</option>
		<option value="VIEW CUMULATIVE MARKS OF SESSIONAL">VIEW CUMULATIVE MARKS OF SESSIONAL</option></select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple<?frmd_add_class("multiple1")?>" title="SUBJECT NAME"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple1[]" multiple="multiple" required="required">

		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option></select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple<?frmd_add_class("multiple2")?>" title="SUBJECT YEAR"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple2[]" multiple="multiple" required="required">

		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option></select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple<?frmd_add_class("multiple3")?>" title="SUBJECT BRANCH"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple3[]" multiple="multiple" required="required">

		<option value="B1">B1</option>
		<option value="B2">B2</option>
		<option value="B3">B3</option></select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple<?frmd_add_class("multiple4")?>" title="BATCH"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple4[]" multiple="multiple" required="required">

		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option></select><span class="icon-place"></span></div></div></div>
	<div class="element-multiple<?frmd_add_class("multiple5")?>" title="OUT OF"><label class="title"><span class="required">*</span></label><div class="item-cont"><div class="large"><select data-no-selected="Nothing selected" name="multiple5[]" multiple="multiple" required="required">

		<option value="30">30</option>
		<option value="50">50</option>
		<option value="100">100</option></select><span class="icon-place"></span></div></div></div>
<div class="submit"><input type="submit" value="Submit"/></div></form><script type="text/javascript" src="<?=dirname($form_path)?>/formoid-solid-green.js"></script>

<!-- Stop Formoid form-->
<?php endif; ?>

<?php frmd_end_form(); ?>