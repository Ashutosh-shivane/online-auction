<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<!-- saved from url=(0046)https://livedemo00.template-help.com/wt_53883/ -->
<html
	class="wide wow-animation desktop landscape rd-navbar-static-linked"
	lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" async=""
	src="./index_files/analytics.js.download"></script>
<script async="" src="./index_files/gtm.js.download"></script>
<script type="text/javascript" async=""
	src="./index_files/ga.js.download"></script>
<script src="./index_files/sdk.js.download" async=""
	crossorigin="anonymous"></script>
<script src="./index_files/3ts2ksMwXvKRuG480KNifJ2_JNM.js.download"></script>
<script src="./index_files/4o300efCt-CXoq1JEC-sVReFz48.js.download"></script>
<link rel="icon"
	href="https://livedemo00.template-help.com/wt_53883/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./index_files/css">
<link rel="stylesheet" href="./index_files/bootstrap.css">
<link rel="stylesheet" href="./index_files/fonts.css">
<link rel="stylesheet" href="./index_files/style.css">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>

<script src="./index_files/sdk.js(1).download"></script>
<style>
.ie-panel {
	display: none;
	background: #212121;
	padding: 10px 0;
	box-shadow: 3px 3px 5px 0 rgba(0, 0, 0, .3);
	clear: both;
	text-align: center;
	position: relative;
	z-index: 1;
}

html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {
	display: block;
}
</style>
<link rel="stylesheet"
	href="data:text/css;charset=utf-8;base64,Y2xvdWRmbGFyZS1hcHBbYXBwLWlkPSJhLWJldHRlci1icm93c2VyIl0gewogIGRpc3BsYXk6IGJsb2NrOwogIGJhY2tncm91bmQ6ICM0NTQ4NGQ7CiAgY29sb3I6ICNmZmY7CiAgbGluZS1oZWlnaHQ6IDEuNDU7CiAgcG9zaXRpb246IGZpeGVkOwogIHotaW5kZXg6IDkwMDAwMDAwOwogIHRvcDogMDsKICBsZWZ0OiAwOwogIHJpZ2h0OiAwOwogIHBhZGRpbmc6IC41ZW0gMWVtOwogIHRleHQtYWxpZ246IGNlbnRlcjsKICAtd2Via2l0LXVzZXItc2VsZWN0OiBub25lOwogICAgIC1tb3otdXNlci1zZWxlY3Q6IG5vbmU7CiAgICAgIC1tcy11c2VyLXNlbGVjdDogbm9uZTsKICAgICAgICAgIHVzZXItc2VsZWN0OiBub25lOwp9CgpjbG91ZGZsYXJlLWFwcFthcHAtaWQ9ImEtYmV0dGVyLWJyb3dzZXIiXVtkYXRhLXZpc2liaWxpdHk9ImhpZGRlbiJdIHsKICBkaXNwbGF5OiBub25lOwp9CgpjbG91ZGZsYXJlLWFwcFthcHAtaWQ9ImEtYmV0dGVyLWJyb3dzZXIiXSBjbG91ZGZsYXJlLWFwcC1tZXNzYWdlIHsKICBkaXNwbGF5OiBibG9jazsKfQoKY2xvdWRmbGFyZS1hcHBbYXBwLWlkPSJhLWJldHRlci1icm93c2VyIl0gYSB7CiAgdGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7CiAgY29sb3I6ICNlYmViZjQ7Cn0KCmNsb3VkZmxhcmUtYXBwW2FwcC1pZD0iYS1iZXR0ZXItYnJvd3NlciJdIGE6aG92ZXIsCmNsb3VkZmxhcmUtYXBwW2FwcC1pZD0iYS1iZXR0ZXItYnJvd3NlciJdIGE6YWN0aXZlIHsKICBjb2xvcjogI2RiZGJlYjsKfQoKY2xvdWRmbGFyZS1hcHBbYXBwLWlkPSJhLWJldHRlci1icm93c2VyIl0gY2xvdWRmbGFyZS1hcHAtY2xvc2UgewogIGRpc3BsYXk6IGJsb2NrOwogIGN1cnNvcjogcG9pbnRlcjsKICBmb250LXNpemU6IDEuNWVtOwogIHBvc2l0aW9uOiBhYnNvbHV0ZTsKICByaWdodDogLjRlbTsKICB0b3A6IC4zNWVtOwogIGhlaWdodDogMWVtOwogIHdpZHRoOiAxZW07CiAgbGluZS1oZWlnaHQ6IDE7Cn0KCmNsb3VkZmxhcmUtYXBwW2FwcC1pZD0iYS1iZXR0ZXItYnJvd3NlciJdIGNsb3VkZmxhcmUtYXBwLWNsb3NlOmFjdGl2ZSB7CiAgLXdlYmtpdC10cmFuc2Zvcm06IHRyYW5zbGF0ZVkoMXB4KTsKICAgICAgICAgIHRyYW5zZm9ybTogdHJhbnNsYXRlWSgxcHgpOwp9CgpjbG91ZGZsYXJlLWFwcFthcHAtaWQ9ImEtYmV0dGVyLWJyb3dzZXIiXSBjbG91ZGZsYXJlLWFwcC1jbG9zZTpob3ZlciB7CiAgb3BhY2l0eTogLjllbTsKICBjb2xvcjogI2ZmZjsKfQo=">
<style type="text/css"
	data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">
.fb_hidden {
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition {
	overflow: hidden;
	position: relative
}

.fb_invisible {
	display: none
}

.fb_reset {
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: 'lucida grande', tahoma, verdana, arial, sans-serif;
	font-size: 11px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div {
	overflow: hidden
}

@
keyframes fb_transform {
	from {opacity: 0;
	transform: scale(.95)
}

to {
	opacity: 1;
	transform: scale(1)
}

}
.fb_animate {
	animation: fb_transform .3s forwards
}

.fb_hidden {
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition {
	overflow: hidden;
	position: relative
}

.fb_invisible {
	display: none
}

.fb_reset {
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: 'lucida grande', tahoma, verdana, arial, sans-serif;
	font-size: 11px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div {
	overflow: hidden
}

@
keyframes fb_transform {
	from {opacity: 0;
	transform: scale(.95)
}

to {
	opacity: 1;
	transform: scale(1)
}

}
.fb_animate {
	animation: fb_transform .3s forwards
}

.fb_dialog {
	background: rgba(82, 82, 82, .7);
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_dialog_advanced {
	border-radius: 8px;
	padding: 10px
}

.fb_dialog_content {
	background: #fff;
	color: #373737
}

.fb_dialog_close_icon {
	background:
		url(https://z-p3-static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 0 transparent;
	cursor: pointer;
	display: block;
	height: 15px;
	position: absolute;
	right: 18px;
	top: 17px;
	width: 15px
}

.fb_dialog_mobile .fb_dialog_close_icon {
	left: 5px;
	right: auto;
	top: 5px
}

.fb_dialog_padding {
	background-color: transparent;
	position: absolute;
	width: 1px;
	z-index: -1
}

.fb_dialog_close_icon:hover {
	background:
		url(https://z-p3-static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -15px transparent
}

.fb_dialog_close_icon:active {
	background:
		url(https://z-p3-static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -30px transparent
}

.fb_dialog_iframe {
	line-height: 0
}

.fb_dialog_content .dialog_title {
	background: #6d84b4;
	border: 1px solid #365899;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	margin: 0
}

.fb_dialog_content .dialog_title>span {
	background:
		url(https://z-p3-static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif)
		no-repeat 5px 50%;
	float: left;
	padding: 5px 0 7px 26px
}

body.fb_hidden {
	height: 100%;
	left: 0;
	margin: 0;
	overflow: visible;
	position: absolute;
	top: -10000px;
	transform: none;
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading {
	background:
		url(https://z-p3-static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif)
		white no-repeat 50% 50%;
	min-height: 100%;
	min-width: 100%;
	overflow: hidden;
	position: absolute;
	top: 0;
	z-index: 10001
}

.fb_dialog.fb_dialog_mobile.loading.centered {
	background: none;
	height: auto;
	min-height: initial;
	min-width: initial;
	width: auto
}

.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
	background: none
}

.loading.centered #fb_dialog_loader_close {
	clear: both;
	color: #fff;
	display: block;
	font-size: 18px;
	padding-top: 20px
}

#fb-root #fb_dialog_ipad_overlay {
	background: rgba(0, 0, 0, .4);
	bottom: 0;
	left: 0;
	min-height: 100%;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
	z-index: 10000
}

#fb-root #fb_dialog_ipad_overlay.hidden {
	display: none
}

.fb_dialog.fb_dialog_mobile.loading iframe {
	visibility: hidden
}

.fb_dialog_mobile .fb_dialog_iframe {
	position: sticky;
	top: 0
}

.fb_dialog_content .dialog_header {
	background: linear-gradient(from(#738aba), to(#2c4987));
	border-bottom: 1px solid;
	border-color: #043b87;
	box-shadow: white 0 1px 1px -1px inset;
	color: #fff;
	font: bold 14px Helvetica, sans-serif;
	text-overflow: ellipsis;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
	vertical-align: middle;
	white-space: nowrap
}

.fb_dialog_content .dialog_header table {
	height: 43px;
	width: 100%
}

.fb_dialog_content .dialog_header td.header_left {
	font-size: 12px;
	padding-left: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .dialog_header td.header_right {
	font-size: 12px;
	padding-right: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .touchable_button {
	background: linear-gradient(from(#4267B2), to(#2a4887));
	background-clip: padding-box;
	border: 1px solid #29487d;
	border-radius: 3px;
	display: inline-block;
	line-height: 18px;
	margin-top: 3px;
	max-width: 85px;
	padding: 4px 12px;
	position: relative
}

.fb_dialog_content .dialog_header .touchable_button input {
	background: none;
	border: none;
	color: #fff;
	font: bold 12px Helvetica, sans-serif;
	margin: 2px -12px;
	padding: 2px 6px 3px 6px;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog_content .dialog_header .header_center {
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	text-align: center;
	vertical-align: middle
}

.fb_dialog_content .dialog_content {
	background:
		url(https://z-p3-static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat 50% 50%;
	border: 1px solid #4a4a4a;
	border-bottom: 0;
	border-top: 0;
	height: 150px
}

.fb_dialog_content .dialog_footer {
	background: #f5f6f7;
	border: 1px solid #4a4a4a;
	border-top-color: #ccc;
	height: 40px
}

#fb_dialog_loader_close {
	float: left
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
	visibility: hidden
}

#fb_dialog_loader_spinner {
	animation: rotateSpinner 1.2s linear infinite;
	background-color: transparent;
	background-image:
		url(https://z-p3-static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
	background-position: 50% 50%;
	background-repeat: no-repeat;
	height: 24px;
	width: 24px
}

@
keyframes rotateSpinner { 0%{
	transform: rotate(0deg)
}

100%{
transform






:rotate(360deg)






}
}
.fb_iframe_widget {
	display: inline-block;
	position: relative
}

.fb_iframe_widget span {
	display: inline-block;
	position: relative;
	text-align: justify
}

.fb_iframe_widget iframe {
	position: absolute
}

.fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span,
	.fb_iframe_widget_fluid_desktop iframe {
	max-width: 100%
}

.fb_iframe_widget_fluid_desktop iframe {
	min-width: 220px;
	position: relative
}

.fb_iframe_widget_lift {
	z-index: 1
}

.fb_iframe_widget_fluid {
	display: inline
}

.fb_iframe_widget_fluid span {
	width: 100%
}

.fb_mpn_mobile_landing_page_slide_out {
	animation-duration: 200ms;
	animation-name: fb_mpn_landing_page_slide_out;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_landing_page_slide_out_from_left {
	animation-duration: 200ms;
	animation-name: fb_mpn_landing_page_slide_out_from_left;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_landing_page_slide_up {
	animation-duration: 500ms;
	animation-name: fb_mpn_landing_page_slide_up;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_bounce_in {
	animation-duration: 300ms;
	animation-name: fb_mpn_bounce_in;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_bounce_out {
	animation-duration: 300ms;
	animation-name: fb_mpn_bounce_out;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_bounce_out_v2 {
	animation-duration: 300ms;
	animation-name: fb_mpn_fade_out;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_in_v2 {
	animation-duration: 300ms;
	animation-name: fb_bounce_in_v2;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_in_from_left {
	animation-duration: 300ms;
	animation-name: fb_bounce_in_from_left;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_out_v2 {
	animation-duration: 300ms;
	animation-name: fb_bounce_out_v2;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_out_from_left {
	animation-duration: 300ms;
	animation-name: fb_bounce_out_from_left;
	transition-timing-function: ease-in
}

.fb_invisible_flow {
	display: inherit;
	height: 0;
	overflow-x: hidden;
	width: 0
}

@
keyframes fb_mpn_landing_page_slide_out { 0%{
	margin: 0 12px;
	width: 100%- 24px
}

60%{
border-radius






:






18
px






}
100%{
border-radius






:






50%;
margin






:






0
24
px






;
width






:






60
px






}
}
@
keyframes fb_mpn_landing_page_slide_out_from_left { 0%{
	left: 12px;
	width: 100%- 24px
}

60%{
border-radius






:






18
px






}
100%{
border-radius






:






50%;
left






:






12
px




;
width






:






60
px






}
}
@
keyframes fb_mpn_landing_page_slide_up { 0%{
	bottom: 0;
	opacity: 0
}

100%{
bottom






:






24
px




;
opacity






:






1
}
}
@
keyframes fb_mpn_bounce_in { 0%{
	opacity: .5;
	top: 100%
}

100%{
opacity






:






1;
top






:






0
}
}
@
keyframes fb_mpn_fade_out { 0%{
	bottom: 30px;
	opacity: 1
}

100%{
bottom






:






0;
opacity






:






0
}
}
@
keyframes fb_mpn_bounce_out { 0%{
	opacity: 1;
	top: 0
}

100%{
opacity






:






.5






;
top






:






100%
}
}
@
keyframes fb_bounce_in_v2 { 0%{
	opacity: 0;
	transform: scale(0, 0);
	transform-origin: bottom right
}

50%{
transform






:scale






(1
.03
,
1
.03






);
transform-origin






:bottom



 



right






}
100%{
opacity






:






1;
transform






:scale






(1
,
1);
transform-origin






:bottom



 



right






}
}
@
keyframes fb_bounce_in_from_left { 0%{
	opacity: 0;
	transform: scale(0, 0);
	transform-origin: bottom left
}

50%{
transform






:scale






(1
.03
,
1
.03






);
transform-origin






:bottom



 



left






}
100%{
opacity






:






1;
transform






:scale






(1
,
1);
transform-origin






:bottom



 



left






}
}
@
keyframes fb_bounce_out_v2 { 0%{
	opacity: 1;
	transform: scale(1, 1);
	transform-origin: bottom right
}

100%{
opacity






:






0;
transform






:scale






(0
,
0);
transform-origin






:bottom



 



right






}
}
@
keyframes fb_bounce_out_from_left { 0%{
	opacity: 1;
	transform: scale(1, 1);
	transform-origin: bottom left
}

100%{
opacity






:






0;
transform






:scale






(0
,
0);
transform-origin






:bottom



 



left






}
}
@
keyframes slideInFromBottom { 0%{
	opacity: .1;
	transform: translateY(100%)
}

100%{
opacity






:






1;
transform






:translateY(0)






}
}
@
keyframes slideInFromBottomDelay { 0%{
	opacity: 0;
	transform: translateY(100%)
}
97%{
opacity






:






0;
transform






:translateY






(100%)
}
100%{
opacity






:






1;
transform






:translateY(0)






}
}
</style>
</head>
<body class="">
	<div class="ie-panel">
		<a href="https://windows.microsoft.com/en-US/internet-explorer/"><img
			src="./index_files/warning_bar_0000_us.jpg" height="42" width="820"
			alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a>
	</div>
	<div class="preloader loaded">
		<div class="preloader-body">
			<div class="cssload-container">
				<div class="cssload-speeding-wheel"></div>
			</div>
		</div>
	</div>
	<div class="page animated" style="animation-duration: 500ms;">
		<header class="section page-header">
			<!--RD Navbar-->
			<div class="rd-navbar-wrap" style="height: 218.5px;">
				<nav
					class="rd-navbar rd-navbar-classic rd-navbar-original rd-navbar-static"
					data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
					data-md-layout="rd-navbar-fixed"
					data-md-device-layout="rd-navbar-fixed"
					data-lg-layout="rd-navbar-static"
					data-lg-device-layout="rd-navbar-static"
					data-xl-layout="rd-navbar-static"
					data-xl-device-layout="rd-navbar-static"
					data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px"
					data-xxl-stick-up-offset="46px" data-lg-stick-up="true"
					data-xl-stick-up="true" data-xxl-stick-up="true">
					<div
						class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1 toggle-original"
						data-rd-navbar-toggle=".rd-navbar-collapse">
						<span></span>
					</div>
					<div
						class="rd-navbar-aside-outer rd-navbar-collapse bg-gray-900 toggle-original-elements">
						<div class="rd-navbar-aside">
							<div class="rd-navbar-aside-left">
								<ul class="list-inline list-inline-lg">
									<li>
										<div class="unit unit-spacing-sm align-items-center">
											<div class="unit-left">
												<span class="icon icon-md text-middle fa-phone text-primary"></span>
											</div>
											<div class="unit-body header-phone-wrap">
												Freephone:&nbsp;<a class="header-phone" href="tel:#">+91-8796523164</a>
											</div>
										</div>
									</li>
									<li class="header-hours">Opening Hours: 8am-8pm PST M-Th;
										6am-3pm PST Fri</li>
								</ul>
							</div>
							<div class="rd-navbar-aside-right">

								<a class="btn btn-primary" role="button" href="index.jsp"><b><%=session.getAttribute("uname")%>
								</b> &nbsp &nbsp Logout</a>



							</div>
						</div>
					</div>

					<div class="rd-navbar-main-outer">
						<div class="rd-navbar-main">
							<!--RD Navbar Panel-->
							<div class="rd-navbar-panel">
								<!--RD Navbar Toggle-->
								<button class="rd-navbar-toggle toggle-original"
									data-rd-navbar-toggle=".rd-navbar-nav-wrap">
									<span></span>
								</button>
								<!--RD Navbar Brand-->
								<div class="rd-navbar-brand">
									<!--Brand-->

									<a class="brand"
										href="https://livedemo00.template-help.com/wt_53883/index.html"><img
										src="./index_files/logo-default-658x114.png" alt=""
										width="329" height="57"></a>

								</div>
							</div>
							<div class="rd-navbar-main-element">
								<div class="rd-navbar-nav-wrap toggle-original-elements">
									<ul class="rd-navbar-nav">
									
									 	<li class="rd-nav-item active"><a class="rd-nav-link"
											href="AdminAddProduct.jsp">Add Product</a></li>
 
										<li class="rd-nav-item active"><a class="rd-nav-link"
											href="AdminBiddingStatus.jsp">Click To Show& Success & Pending Bidding</a></li>

										
									</ul>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</header>

		<%
			Connection con = (Connection) application.getAttribute("mycon");
			PreparedStatement ps = con.prepareStatement("select * from seller_product where status='1'",
					ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = ps.executeQuery();
			int i = 0;
		%>

		
		<div class="container">
			<h3>Your Added Product</h3>
			<div class="row row-50 mt-50">
				<%
					while (rs.next()) {
						
						Blob image = null;
						byte[ ] imgData = null ;
						image = rs.getBlob(5);
					    imgData = image.getBytes(1,(int)image.length());
					    String encode = Base64.getEncoder().encodeToString(imgData);
					    request.setAttribute("imgBase", encode);

						if (i % 4 != 0) {
				%>
				<div class="col-xl-3 col-lg-4 col-sm-6">
					<!-- Post Modern-->
					<div class="post-modern">
						
						<figure class="post-modern-figure">
							<img src="data:image/jpeg;base64,${imgBase}" alt=""
								width="270" height="108">
						</figure>
						<div class="post-modern-caption">
							<div class="post-modern-price">
								Price: INR.
								<%=rs.getString(3)%></div>
							<!-- <div class="post-modern-price-value"></div> -->
							<h5 class="post-modern-link">
								<a href="https://livedemo00.template-help.com/wt_53883/#"><%=rs.getString(4)%></a>
							</h5>
							<!-- <a class="button button-box-right button-primary"
								href="https://livedemo00.template-help.com/wt_53883/#">Submit
								a bid
								<div class="button-box">
									<div class="button-box-text">X</div>
									<div class="button-box-count">3</div>
								</div>
							</a> -->
						</div>
					</div>
				</div>
				<%
					} else {
				%>
			</div>
			<div class="row row-50 mt-50">
				<div class="col-xl-3 col-lg-4 col-sm-6">
					<!-- Post Modern-->
					<div class="post-modern">
						
						<figure class="post-modern-figure">
							<img src="data:image/jpeg;base64,${imgBase}" alt=""
								width="270" height="108">
						</figure>
						<div class="post-modern-caption">
							<div class="post-modern-price">
								Price: INR.
								<%=rs.getString(3)%></div>
							<!-- <div class="post-modern-price-value"></div> -->
							<h5 class="post-modern-link">
								<a href="https://livedemo00.template-help.com/wt_53883/#"><%=rs.getString(4)%></a>
							</h5>
							<!-- <a class="button button-box-right button-primary"
								href="https://livedemo00.template-help.com/wt_53883/#">Submit
								a bid
								<div class="button-box">
									<div class="button-box-text">X</div>
									<div class="button-box-count">3</div>
								</div>
							</a> -->
						</div>
					</div>
				</div>
				<%
					}
						i++;
					}
				%>
			</div>

		</div>



		<footer class="footer novi-bg novi-bg-img">
			<div class="footer-content">
				<div class="container">
					<div class="row row-30">
						<div class="col-lg-3 col-sm-6">
							<h4 class="footer-title">Information</h4>
							<ul class="footer-list list-xs">
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">About
										Us</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">My
										Account</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Price
										List</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Contacts</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Registration</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">News</a></li>
							</ul>
						</div>
						<div class="col-lg-3 col-sm-6">
							<h4 class="footer-title">Help Center</h4>
							<ul class="footer-list list-xs">
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Assistance</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">FAQ</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Testimonials</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Account
										Refill</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Payments</a></li>
							</ul>
						</div>
						<div class="col-lg-3 col-sm-6">
							<h4 class="footer-title">Partners</h4>
							<ul class="footer-list list-xs">
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">iStep</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Artex</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">Style
										Shop</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">CrystalTech</a></li>
								<li><a class="footer-link"
									href="https://livedemo00.template-help.com/wt_53883/#">VIP
										Fashion</a></li>
							</ul>
						</div>
						<div class="col-lg-3 col-sm-6">
							<h4 class="footer-title">Facebook</h4>
							<div class="fw_facebook">
								<div class="fb-like-box fb_iframe_widget" id="fb-like-box"
									data-show-border="false" data-stream="false"
									data-header="false" data-show-faces="true"
									data-colorscheme="light"
									data-href="https://www.facebook.com/TemplateMonster"
									data-width="270px" fb-xfbml-state="rendered"
									fb-iframe-plugin-query="app_id=&amp;color_scheme=light&amp;container_width=0&amp;header=false&amp;href=https%3A%2F%2Fwww.facebook.com%2FTemplateMonster&amp;id=fb-like-box&amp;locale=en_US&amp;sdk=joey&amp;show_border=false&amp;show_faces=true&amp;stream=false&amp;width=270px">
									<span
										style="vertical-align: bottom; width: 270px; height: 130px;"><iframe
											name="f22fca9d66e0a44" height="1000px"
											data-testid="fb:like_box Facebook Social Plugin"
											title="fb:like_box Facebook Social Plugin" frameborder="0"
											allowtransparency="true" allowfullscreen="true"
											scrolling="no" allow="encrypted-media"
											src="./index_files/like_box.html"
											style="border: none; visibility: visible; width: 270px; height: 130px;"
											class=""></iframe></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-panel">
				<div class="container">
					<p class="rights">
						<span>©&nbsp; </span><span class="copyright-year">2023</span><span>&nbsp;</span><span>Online
							Auction</span><span>.&nbsp;</span><a
							href="https://livedemo00.template-help.com/wt_53883/privacy-policy.html">Privacy
							Policy</a>
					</p>
				</div>
			</div>
		</footer>
	</div>
	<div class="snackbars" id="form-output-global"></div>
	<script src="./index_files/core.min.js.download"></script>
	<script src="./index_files/script.js.download"></script>

	<!--LIVEDEMO_00 -->

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-7078796-5' ]);
		_gaq.push([ '_trackPageview' ]);
		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'https://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>

	<!-- Google Tag Manager -->
	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<script>
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start' : new Date().getTime(),
				event : 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
					+ l
					: '';
			j.async = true;
			j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-P9FT69');
	</script>
	<!-- End Google Tag Manager -->
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
	</div>
	<a href="https://livedemo00.template-help.com/wt_53883/#"
		id="ui-to-top" class="ui-to-top fa fa-angle-up"></a>
	<script type="text/javascript" id="">
		(function() {
			var b = document.location.search.split("aff\x3d")[1];
			if (b) {
				var d = document.querySelectorAll("a"), c;
				for (c = 0; c < d.length; c++) {
					var a = d[c];
					0 == a.href.indexOf("https://www.templatemonster.com")
							&& (0 < a.href.indexOf("?") ? a.href = a.href
									+ "\x26aff\x3d" + b : a.href = a.href
									+ "?aff\x3d" + b)
				}
			}
			b = document.location.search.split("i\x3d")[1];
			var e = document.location.search.split("pr_code\x3d")[1];
			if (b && e)
				for (b = b.split("\x26")[0],
						d = document.querySelectorAll("a"), c = 0; c < d.length; c++)
							a = d[c],
							0 == a.href
									.indexOf("https://www.templatemonster.com")
									&& (a.href = "https://www.templatehelp.com/preset/cart.php?act\x3dadd\x26templ\x3d"
											+ b + "\x26pr_code\x3d" + e)
		})();
	</script>
</body>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
	integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
	crossorigin="anonymous"></script>

</html>