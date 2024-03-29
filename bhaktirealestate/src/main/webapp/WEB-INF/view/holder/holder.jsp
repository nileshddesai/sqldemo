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
		<style type="text/css">
			.kt-widget__status {
				font-weight: 500;
				-webkit-box-flex: 1;
				-ms-flex-positive: 1;
				flex-grow: 1;
				text-align: right;
			}
			.holder-item {
				cursor: pointer;
			}
		</style>
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
										<div class="kt-user-card__badge">
											<!-- <span class="btn btn-success btn-sm btn-bold btn-font-md">23 messages</span> -->
										</div>
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
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">

									<!--begin:: Widgets/Notifications-->
									<div class="kt-portlet kt-portlet--height-fluid">
										<div class="kt-portlet__head">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title">
													<a class="btn btn-clean btn-bold btn-upper" href="<%=request.getContextPath()%>/propertycategory">
														<span><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
																<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																	<polygon id="Shape" points="0 0 24 0 24 24 0 24"></polygon>
																	<path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" id="Path-94" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999) "></path>
																	<path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" id="Path-94" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999) "></path>
																</g>
															</svg></span>
													</a>
													<span>${propertyCategory.propertyCategoryName}</span>
												</h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												<a href="#" class="btn btn-primary btn-icon" data-toggle="modal" data-target="#holder_new_modal">
													<i class="flaticon2-plus"></i>
												</a>
											</div>
										</div>
										<div class="kt-portlet__body">
											<form class="kt-margin-b-20" id="kt_subheader_search_form">
												<div class="kt-input-icon kt-input-icon--left">
													<input type="text" class="form-control" placeholder="Search..." id="searchBox">
													<span class="kt-input-icon__icon kt-input-icon__icon--left">
														<span><i class="la la-search"></i></span>
													</span>
												</div>
											</form>
											
											<div class="tab-content">
												<!-- <div class="alert alert-secondary " role="alert">
													<div class="alert-text">No Records found</div>
												</div> -->
												<div class="row " id="holder-container">
													<c:forEach items="${holders}" var="holder" varStatus="status">
														<div class="col-xl-12 holder-item" data-id="${holder.id}">
															<input type="hidden" id="holderName${holder.id}" value="${holder.holderName}"/>
															<input type="hidden" id="addressLine1${holder.id}" value="${holder.addressLine1}"/>
															<input type="hidden" id="addressLine2${holder.id}" value="${holder.addressLine2}"/>
															<input type="hidden" id="mobileNo${holder.id}" value="${holder.mobileNo}"/>
															<input type="hidden" id="propertySize${holder.id}" value="${holder.propertySize}"/>
															<input type="hidden" id="propertyPrice${holder.id}" value="${holder.propertyPrice}"/>
															<input type="hidden" id="note${holder.id}" value="${holder.note}"/>
															<!--Begin::Portlet-->
															<div class="kt-portlet kt-portlet--height-fluid">
																<div class="kt-portlet__body kt-padding-10">
																	<!--begin::Widget -->
																	<div class="kt-widget kt-widget--user-profile-2 kt-margin-t-50">
																		<div class="kt-widget__head">
																			<div class="kt-widget__info kt-padding-l-0">
																				<span class="kt-widget__username">
																					${holder.holderName}
																				</span>
																				<span class="kt-widget__desc" data-address-line1="">
																					${holder.addressLine1}
																				</span>
																				<span class="kt-widget__desc" data-address-line2="">
																					${holder.addressLine2}
																				</span>
																			</div>
																		</div>
																		<div class="kt-widget__body">
																			<div class="kt-widget__item">
																				<div class="kt-widget__contact" style="display: block;">
																					<span class="kt-widget__label">Mobile No.:</span>
																					<a href="tel:${holder.mobileNo}" onclick="event.stopPropagation()" class="kt-widget__data">${holder.mobileNo}</a>
																				</div>
																				<div class="kt-widget__contact" style="display: block;">
																					<span class="kt-widget__label">Size:</span>
																					<a href="#" class="kt-widget__data">${holder.propertySize}</a>
																				</div>
																				<div class="kt-widget__contact" style="display: block;">
																					<span class="kt-widget__label">Price:</span>
																					<span class="kt-widget__data">${holder.propertyPrice}</span>
																				</div>
																				<c:if test="${not empty holder.note}">
																					<div class="kt-widget__contact" style="display: block;">
																						<span class="kt-widget__label">Note:</span>
																						<span class="kt-widget__data">${holder.note}</span>
																					</div>
																				</c:if>
																			</div>
																		</div>
																	</div>
																	
																	<!--end::Widget -->
																</div>
															</div>
						
															<!--End::Portlet-->
														</div>
													</c:forEach>
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
		<div class="modal fade" id="holder_new_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">New Holder</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						</button>
					</div>
					<form method="post" action="<%=request.getContextPath()%>/holder/save" id="holder_new_form">
						<input type="hidden" name="propertyCategory.id" value="${propertyCategory.id}"/>
						<div class="modal-body">
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Holder Name:</label>
								<input type="text" class="form-control" id="holderName" name="holderName">
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Address Line 1:</label>
								<input type="text" class="form-control" id="addressLine1" name="addressLine1">
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Address Line 2:</label>
								<input type="text" class="form-control" id="addressLine2" name="addressLine2">
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Mobile No.:</label>
								<input type="text" class="form-control" id="mobileNo" name="mobileNo">
							</div>
							<div class="form-group row">
								<div class="col-lg-6">
									<label for="recipient-name" class="form-control-label">Property Size:</label>
									<input type="text" class="form-control" id="propertySize" name="propertySize">
								</div>
								<div class="col-lg-6">
									<label for="recipient-name" class="form-control-label">Property Price:</label>
								<input type="text" class="form-control" id="propertyPrice" name="propertyPrice">
								</div>
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Note:</label>
								<textarea class="form-control" id="note" name="note"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="saveholder">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!--end::Modal-->
		<!--begin::Modal-->
		<div class="modal fade" id="holder_edit_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Edit Holder</h5>
						<button type="button" class="btn btn-danger btn-sm btn-icon" id="delete_holder"><i class="fa fa-trash"></i></button>
					</div>
					<form method="post" action="<%=request.getContextPath()%>/holder/save" id="holder_edit_form">
						<input type="hidden" name="id" id="holderId" value=""/>
						<input type="hidden" name="propertyCategory.id" value="${propertyCategory.id}"/>
						<div class="modal-body">
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Holder Name:</label>
								<input type="text" class="form-control" id="updateHolderName" name="holderName">
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Address Line 1:</label>
								<input type="text" class="form-control" id="updateAddressLine1" name="addressLine1">
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Address Line 2:</label>
								<input type="text" class="form-control" id="updateAddressLine2" name="addressLine2">
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Mobile No.:</label>
								<input type="text" class="form-control" id="updateMobileNo" name="mobileNo">
							</div>
							<div class="form-group row">
								<div class="col-lg-6">
									<label for="recipient-name" class="form-control-label">Property Size:</label>
									<input type="text" class="form-control" id="updatePropertySize" name="propertySize">
								</div>
								<div class="col-lg-6">
									<label for="recipient-name" class="form-control-label">Property Price:</label>
								<input type="text" class="form-control" id="updatePropertyPrice" name="propertyPrice">
								</div>
							</div>
							<div class="form-group">
								<label for="recipient-name" class="form-control-label">Note:</label>
								<textarea class="form-control" id="updateNote" name="note"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="updateholder">Save</button>
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
		<script src="<%=request.getContextPath()%>/script/holder-new-script.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/script/holder-edit-script.js" type="text/javascript"></script>
		<!--end::Page Scripts -->
		
	</body>

	<!-- end::Body -->
</html>