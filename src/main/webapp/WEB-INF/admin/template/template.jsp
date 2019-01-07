<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 	<base href="<tiles:getAsString name="base_tag" />"/>
	<title>${title_tag} </title>
	<meta name="description" content="${description_tag} ">

	 <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	
	<!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="plugins/select2/select2.min.css">
  <link rel="stylesheet" href="plugins/ion.rangeSlider-2.1.7/css/ion.rangeSlider.css">
    <link rel="stylesheet" href="plugins/ion.rangeSlider-2.1.7/css/ion.rangeSlider.skinModern.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="plugins/iCheck/all.css">
  
  
 <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
   <link rel="stylesheet" href="dist/css/style.css">
   <link rel="stylesheet" href="style.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/pace/pace.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/additional-methods.min.js"></script>

<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- bootstrap datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Page Script -->
<script src="js/jquery.ajaxfileupload.js"></script>
<script>

//var baseurl="http://agr.qnomall.com/";
/*
var baseurl="http://localhost:8080/agent/";
var url_upload_img="manage/uploadcontrol/doupload?folder=product";
var url_upload_cke="manage/uploadcontrol/doupload?folder=editor";
var remote_img_product="image/upload/product/";
var remote_img_cke= baseurl+"image/upload/product/";*/

var baseurl="http://localhost:8080/ITmanageproject";

</script>

<!-- AdminLTE for demo purposes -->
<script src="plugins/ion.rangeSlider-2.1.7/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="plugins/select2/select2.full.min.js"></script>
<script src="js/tinymce/tinymce.min.js"></script>
<script src="js/tinymce/jquery.tinymce.min.js"></script>
<script src="js/jsonhelpper.js"></script>
<script src="dist/js/demo.js"></script>
<script src="js/log_user.js"></script>
<script src="js/employee/main.js"></script>
<script src="js/department/main.js"></script>
<script src="js/user/main.js"></script>
<script src="js/tb_employee_project.js"></script>
</head>
<body  class="hold-transition skin-green sidebar-mini">
	<div class="wrapper">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="sidebar" />
		<tiles:insertAttribute name="content" />
		<tiles:insertAttribute name="footer" />
	</div>
<!-- ./wrapper -->
	
	<!-- REQUIRED JS SCRIPTS -->

</body>
</html>