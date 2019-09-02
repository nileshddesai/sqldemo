<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- begin::Head -->
<head>

	<!--end::Base Path -->
	<meta charset="utf-8" />
	<title>Login</title>
	<meta name="description" content="Login page example">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!--begin::Fonts -->
	<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
	<script>
		WebFont.load({
			google: {
				"families": ["Poppins:300,400,500,600,700", "Roboto:300,400,500,600,700"]
			},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>

	<!--end::Fonts -->

	<!--begin::Page Custom Styles(used by this page) -->
	<link href="<%=request.getContextPath()%>/assets/css/demo1/pages/general/login/login-3.css" rel="stylesheet" type="text/css" />

	<!--end::Page Custom Styles -->

	<!--begin:: Global Mandatory Vendors -->
	<link href="<%=request.getContextPath()%>/assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />

	<!--end:: Global Mandatory Vendors -->

	<!--begin:: Global Optional Vendors -->
	<link href="<%=request.getContextPath()%>/assets/vendors/general/tether/dist/css/tether.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/select2/dist/css/select2.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/nouislider/distribute/nouislider.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/owl.carousel/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/owl.carousel/dist/assets/owl.theme.default.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/summernote/dist/summernote.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/animate.css/animate.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/morris.js/morris.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/custom/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/custom/vendors/flaticon/flaticon.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/custom/vendors/flaticon2/flaticon.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/vendors/general/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

	<!--end:: Global Optional Vendors -->

	<!--begin::Global Theme Styles(used by all pages) -->
	<link href="<%=request.getContextPath()%>/assets/css/demo1/style.bundle.css" rel="stylesheet" type="text/css" />

	<!--end::Global Theme Styles -->

	<!--begin::Layout Skins(used by all pages) -->
	<link href="<%=request.getContextPath()%>/assets/css/demo1/skins/header/base/light.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/css/demo1/skins/header/menu/light.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/css/demo1/skins/brand/dark.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/assets/css/demo1/skins/aside/dark.css" rel="stylesheet" type="text/css" />

	<!--end::Layout Skins -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/media/logos/favicon.ico" />
</head>

<!-- end::Head -->
<!-- begin::Body -->
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

	<div class="row justify-content-center align-middle mt-5">
		<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">
			<!-- begin:: Page -->
			<div class="kt-grid kt-grid--ver kt-grid--root">
				<div class="kt-grid kt-grid--hor kt-grid--root  kt-login kt-login--v3 kt-login--signin" id="kt_login">
					<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" style="background-image: url(<%=request.getContextPath()%>/assets/media/bg/bg-3.jpg);">
						<div class="kt-grid__item kt-grid__item--fluid kt-login__wrapper">
							<div class="kt-login__container">
								<div class="kt-login__signin">
									<div class="kt-login__head">
										<h3 class="kt-login__title">Sign In To Admin</h3>
									</div>
									<form class="kt-form" action="<%=request.getContextPath()%>/login" method="post">
										<div class="input-group">
											<input class="form-control" type="text" placeholder="User Name" name="username" autocomplete="off">
										</div>
										<div class="input-group">
											<input class="form-control" type="password" placeholder="Password" name="password">
										</div>
										<!-- <div class="row kt-login__extra">
											<div class="col">
												<label class="kt-checkbox">
													<input type="checkbox" name="remember"> Remember me
													<span></span>
												</label>
											</div>
											<div class="col kt-align-right">
												<a href="javascript:;" id="kt_login_forgot" class="kt-login__link">Forget Password ?</a>
											</div>
										</div> -->
										<div class="kt-login__actions">
											<button type="submit" id="kt_login_signin_submitx" class="btn btn-brand btn-elevate kt-login__btn-primary">Sign In</button>
										</div>
									</form>
								</div>
								<div class="kt-login__signup">
									<div class="kt-login__head">
										<h3 class="kt-login__title">Sign Up</h3>
										<div class="kt-login__desc">Enter your details to create your account:</div>
									</div>
									<!-- <form class="kt-form" action="">
										<div class="input-group">
											<input class="form-control" type="text" placeholder="Fullname" name="fullname">
										</div>
										<div class="input-group">
											<input class="form-control" type="text" placeholder="Email" name="email" autocomplete="off">
										</div>
										<div class="input-group">
											<input class="form-control" type="password" placeholder="Password" name="password">
										</div>
										<div class="input-group">
											<input class="form-control" type="password" placeholder="Confirm Password" name="rpassword">
										</div>
										<div class="row kt-login__extra">
											<div class="col kt-align-left">
												<label class="kt-checkbox">
													<input type="checkbox" name="agree">I Agree the <a href="#" class="kt-link kt-login__link kt-font-bold">terms and conditions</a>.
													<span></span>
												</label>
												<span class="form-text text-muted"></span>
											</div>
										</div>
										<div class="kt-login__actions">
											<button id="kt_login_signup_submit" class="btn btn-brand btn-elevate kt-login__btn-primary">Sign Up</button>&nbsp;&nbsp;
											<button id="kt_login_signup_cancel" class="btn btn-light btn-elevate kt-login__btn-secondary">Cancel</button>
										</div>
									</form> -->
								</div>
								<div class="kt-login__forgot">
									<div class="kt-login__head">
										<h3 class="kt-login__title">Forgotten Password ?</h3>
										<div class="kt-login__desc">Enter your email to reset your password:</div>
									</div>
									<!-- <form class="kt-form" action="">
										<div class="input-group">
											<input class="form-control" type="text" placeholder="Email" name="email" id="kt_email" autocomplete="off">
										</div>
										<div class="kt-login__actions">
											<button id="kt_login_forgot_submit" class="btn btn-brand btn-elevate kt-login__btn-primary">Request</button>&nbsp;&nbsp;
											<button id="kt_login_forgot_cancel" class="btn btn-light btn-elevate kt-login__btn-secondary">Cancel</button>
										</div>
									</form> -->
								</div>
								<!-- <div class="kt-login__account">
									<span class="kt-login__account-msg">
										Don't have an account yet ?
									</span>
									&nbsp;&nbsp;
									<a href="javascript:;" id="kt_login_signup" class="kt-login__account-link">Sign Up!</a>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<!-- end:: Page -->
		</div>
	</div>

	<!-- begin::Global Config(global config for global JS sciprts) -->
	<script>
		var KTAppOptions = {
			"colors": {
				"state": {
					"brand": "#5d78ff",
					"dark": "#282a3c",
					"light": "#ffffff",
					"primary": "#5867dd",
					"success": "#34bfa3",
					"info": "#36a3f7",
					"warning": "#ffb822",
					"danger": "#fd3995"
				},
				"base": {
					"label": ["#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466"],
					"shape": ["#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a"]
				}
			}
		};
	</script>

	<!-- end::Global Config -->

	<!--begin:: Global Mandatory Vendors -->
	<script src="<%=request.getContextPath()%>/assets/vendors/general/jquery/dist/jquery.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/wnumb/wNumb.js" type="text/javascript"></script>

	<!--end:: Global Mandatory Vendors -->

	<!--begin:: Global Optional Vendors -->
	<script src="<%=request.getContextPath()%>/assets/vendors/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/bootstrap-datepicker.init.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/bootstrap-timepicker.init.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/bootstrap-switch.init.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/autosize/dist/autosize.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/summernote/dist/summernote.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/markdown/lib/markdown.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/bootstrap-markdown.init.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/bootstrap-notify.init.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/jquery-validation.init.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/raphael/raphael.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/morris.js/morris.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/counterup/jquery.counterup.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/sweetalert2.init.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/vendors/general/dompurify/dist/purify.js" type="text/javascript"></script>

	<!--end:: Global Optional Vendors -->

	<!--begin::Global Theme Bundle(used by all pages) -->
	<script src="<%=request.getContextPath()%>/assets/js/demo1/scripts.bundle.js" type="text/javascript"></script>

	<!--end::Global Theme Bundle -->

	<!--begin::Page Scripts(used by this page) -->
	<%-- <script src="<%=request.getContextPath()%>/assets/js/demo1/pages/login/login-general.js" type="text/javascript"></script> --%>
	
	<script type="text/javascript">
	 var showErrorMsg = function(form, type, msg) {
        var alert = $('<div class="kt-alert kt-alert--outline alert alert-' + type + ' alert-dismissible" role="alert">\
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>\
			<span></span>\
		</div>');

        form.find('.alert').remove();
        alert.prependTo(form);
        //alert.animateClass('fadeIn animated');
        KTUtil.animateClass(alert[0], 'fadeIn animated');
        alert.find('span').html(msg);
    }
	 
	 $('#kt_login_signin_submit').click(function(e) {
         e.preventDefault();
         var btn = $(this);
         var form = $(this).closest('form');           

         form.validate({
             rules: {
                 username: {
                     required: true,                     
                 },
                 password: {
                     required: true
                 }
             }
         });

         if (!form.valid()) {
             return;
         }
         form.submit();
         /*btn.addClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light').attr('disabled', true);

         form.ajaxSubmit({
             url: form.attr("action"),
             success: function(response, status, xhr, $form) {
             	// similate 2s delay
             	setTimeout(function() {
	                    btn.removeClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--light').attr('disabled', false);
	                    showErrorMsg(form, 'danger', 'Incorrect username or password. Please try again.');
                 }, 2000);
             }
         });*/
     });
	</script>

	<!--end::Page Scripts -->
</body>

<!-- end::Body -->
</html>