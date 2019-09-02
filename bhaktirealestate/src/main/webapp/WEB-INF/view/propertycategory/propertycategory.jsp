<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<!-- begin::Head -->
	<head>

		<!--end::Base Path -->
		<meta charset="utf-8" />
		<title>Metronic | No Aside</title>
		
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
		<style type="text/css">
			.font-size-1_2rem {
			    font-size: 1.2rem !important;
			  }
		</style>
		<!--end::Fonts -->

		<!--begin::Page Vendors Styles(used by this page) -->
		
		<!--end::Page Vendors Styles -->

		<!--begin:: Global Mandatory Vendors -->
		<link href="<%=request.getContextPath()%>/assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />

		<!--end:: Global Mandatory Vendors -->

		<!--begin:: Global Optional Vendors -->
		<link href="<%=request.getContextPath()%>/assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/assets/vendors/general/animate.css/animate.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/assets/vendors/general/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
		
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
		<link href="<%=request.getContextPath()%>/assets/css/demo1/skins/brand/light.css" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/assets/css/demo1/skins/aside/dark.css" rel="stylesheet" type="text/css" />
		
		<link href="<%=request.getContextPath()%>/assets/vendors/formvalidation/formValidation.min.css" rel="stylesheet" type="text/css" />
		<!--end::Layout Skins -->
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/media/logos/favicon.ico" />
	</head>

	<!-- end::Head -->
	
	<!-- begin::Body -->
	<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-page--loading">

		<!-- begin:: Page -->

		<!-- begin:: Header Mobile -->
		<div id="kt_header_mobile" class="kt-header-mobile  kt-header-mobile--fixed ">
			<div class="kt-header-mobile__logo">
				<a href="demo1/index.html">
					<img alt="Logo" src="<%=request.getContextPath()%>/assets/media/logos/logo-dark.png" />
				</a>
			</div>
			<div class="kt-header-mobile__toolbar">
				<button class="kt-header-mobile__toggler" id="kt_header_mobile_toggler"><span></span></button>
				<button class="kt-header-mobile__topbar-toggler" id="kt_header_mobile_topbar_toggler"><i class="flaticon-more"></i></button>
			</div>
		</div>

		<!-- end:: Header Mobile -->
		<div class="kt-grid kt-grid--hor kt-grid--root">
			<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

					<!-- begin:: Header -->
					<div id="kt_header" class="kt-header kt-grid__item  kt-header--fixed ">

						<!-- begin:: Header Menu -->
						<button class="kt-header-menu-wrapper-close" id="kt_header_menu_mobile_close_btn"><i class="la la-close"></i></button>
						<div class="kt-header-menu-wrapper" id="kt_header_menu_wrapper">
							<div class="kt-header-logo">
								<a href="demo1/index.html">
									<img alt="Logo" src="<%=request.getContextPath()%>/assets/media/logos/logo-dark.png" />
								</a>
							</div>
						</div>

						<!-- end:: Header Menu -->

						<!-- begin:: Header Topbar -->
						<div class="kt-header__topbar">
							
							<!--begin: User Bar -->
							<div class="kt-header__topbar-item kt-header__topbar-item--user">
								<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="0px,0px">
									<div class="kt-header__topbar-user">
										<span class="kt-header__topbar-welcome kt-hidden-mobile">Hi,</span>
										<span class="kt-header__topbar-username kt-hidden-mobile">Admin</span>
										<img class="kt-hidden" alt="Pic" src="<%=request.getContextPath()%>/assets/media/users/300_25.jpg" />

										<!--use below badge element instead the user avatar to display username's first letter(remove kt-hidden class to display it) -->
										<span class="kt-badge kt-badge--username kt-badge--unified-success kt-badge--lg kt-badge--rounded kt-badge--bold">A</span>
									</div>
								</div>
								<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-xl">

									<!--begin: Head -->
									<div class="kt-user-card kt-user-card--skin-dark kt-notification-item-padding-x" style="background-image: url(<%=request.getContextPath()%>/assets/media/misc/bg-1.jpg)">
										<div class="kt-user-card__avatar">
											<img class="kt-hidden" alt="Pic" src="<%=request.getContextPath()%>/assets/media/users/300_25.jpg" />

											<!--use below badge element instead the user avatar to display username's first letter(remove kt-hidden class to display it) -->
											<span class="kt-badge kt-badge--lg kt-badge--rounded kt-badge--bold kt-font-success">A</span>
										</div>
										<div class="kt-user-card__name">
											Admin
										</div>
										<!-- <div class="kt-user-card__badge">
											<span class="btn btn-success btn-sm btn-bold btn-font-md">23 messages</span>
										</div> -->
									</div>

									<!--end: Head -->

									<!--begin: Navigation -->
									<div class="kt-notification">
										<div class="kt-notification__custom kt-space-between">
											<a href="<%=request.getContextPath()%>/logout" class="btn btn-label btn-label-brand btn-sm btn-bold">Sign Out</a>
										</div>
									</div>

									<!--end: Navigation -->
								</div>
							</div>

							<!--end: User Bar -->
						</div>

						<!-- end:: Header Topbar -->
					</div>

					<!-- end:: Header -->
					<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor">
					
						<!-- begin:: Content -->
						<div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">

							<!--Begin::Dashboard 4-->
							
							<!--Begin::Section-->
							<div class="row justify-content-center">
								<div class="col-lg-6 col-md-12 col-sm-12" >

									<!--begin:: Widgets/Notifications-->
									<div class="kt-portlet kt-portlet--height-fluid">
										<div class="kt-portlet__head">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title">
													Property Category
												</h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												
												<a href="#" class="btn btn-primary btn-icon" data-toggle="modal" data-target="#property_category_new_modal">
													<i class="flaticon2-plus"></i>
												</a>
											</div>
										</div>
										<div class="kt-portlet__body">
											
											<div class="tab-content">
												<!-- <a href="tel:9714866160">Call Me</a> -->
												<div class="tab-pane active" id="kt_widget6_tab1_content" aria-expanded="true">
													<div class="kt-widget4">
														<c:forEach items="${propertyCategories}" var="propertyCategory" varStatus="status">
															<div class="kt-widget4__item">
																<div class="kt-widget4__info">
																	<a href="<%=request.getContextPath()%>/holder?categoryId=${propertyCategory.id}" class="kt-widget4__username font-size-1_2rem">
																		${propertyCategory.propertyCategoryName}
																	</a>
																</div>						 
																<button type="button" class="btn btn-secondary btn-icon" onclick="editPropertyCategory(${propertyCategory.id})"><i class="fa fa-eye"></i></button>
																<input type="hidden" id="propertyCategoryName${propertyCategory.id}" value="${propertyCategory.propertyCategoryName}"/>					 
															</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!--end:: Widgets/Notifications-->
								</div>
							</div>

							<!--End::Section-->
							
							<!--End::Dashboard 4-->
						</div>

						<!-- end:: Content -->
					</div>

					<!-- begin:: Footer -->
					<div class="kt-footer kt-grid__item kt-grid kt-grid--desktop kt-grid--ver-desktop" id="kt_footer">
						<div class="kt-footer__copyright">
							2019&nbsp;&copy;&nbsp;<a href="http://keenthemes.com/metronic" target="_blank" class="kt-link">Keenthemes</a>
						</div>
						<div class="kt-footer__menu">
							<a href="http://keenthemes.com/metronic" target="_blank" class="kt-footer__menu-link kt-link">About</a>
							<a href="http://keenthemes.com/metronic" target="_blank" class="kt-footer__menu-link kt-link">Team</a>
							<a href="http://keenthemes.com/metronic" target="_blank" class="kt-footer__menu-link kt-link">Contact</a>
						</div>
					</div>

					<!-- end:: Footer -->
				</div>
			</div>
		</div>

		<!-- end:: Page -->
				<!-- begin::Scrolltop -->
		<div id="kt_scrolltop" class="kt-scrolltop">
			<i class="fa fa-arrow-up"></i>
		</div>

		<!-- end::Scrolltop -->
		<!--begin::Modal-->
		<div class="modal fade" id="property_category_new_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">New Property Category</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						</button>
					</div>
					<form id="propertycategory_new_form" action="<%=request.getContextPath()%>/propertycategory/save" method="post">
						<div class="modal-body">
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Property Category:</label>
								<input type="text" class="form-control" id="propertyCategoryName" name="propertyCategoryName">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="savepropertycategory">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--end::Modal-->
		<!--begin::Modal-->
		<div class="modal fade" id="property_category_edit_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Edit Property Category</h5>
						<button type="button" class="btn btn-danger btn-sm btn-icon" id="delete_property_category"><i class="fa fa-trash"></i></button>
					</div>
					<form id="propertycategory_edit_form" action="<%=request.getContextPath()%>/propertycategory/save" method="post">
						<input type="hidden" name="id" id="propertyCategoryId"/>
						<div class="modal-body">
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Property Category:</label>
								<input type="text" class="form-control" id="updatePropertyCategoryName" name="propertyCategoryName">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="editpropertycategory">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--end::Modal-->
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
		<script src="<%=request.getContextPath()%>/assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/assets/vendors/custom/js/vendors/sweetalert2.init.js" type="text/javascript"></script>
		
		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Bundle(used by all pages) -->
		<script src="<%=request.getContextPath()%>/assets/js/demo1/scripts.bundle.js" type="text/javascript"></script>

		<!--end::Global Theme Bundle -->

		<!--begin::Page Vendors(used by this page) -->
		<script src="<%=request.getContextPath()%>/assets/vendors/formvalidation/formValidation.min.js"></script>
		<script src="<%=request.getContextPath()%>/assets/vendors/formvalidation/framework/bootstrap.min.js"></script>
		
	
		<!--end::Page Vendors -->

		<!--begin::Page Scripts(used by this page) -->
		<script src="<%=request.getContextPath()%>/script/propertycategory-new-script.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/script/propertycategory-edit-script.js" type="text/javascript"></script>
		<!--end::Page Scripts -->
		
		<script type="text/javascript">
		$('#delete_property_category').click(function(e) {
            swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!'
            }).then(function(result) {
                if (result.value) {
                    window.location.href = "/propertycategory/" + $("#propertyCategoryId").val() + "/delete"
                }
            });
        });
		</script>
	</body>

	<!-- end::Body -->
</html>