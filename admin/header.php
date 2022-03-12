<!--begin::Header-->
					<div id="kt_header" class="header header-fixed">
						<!--begin::Container-->
						<div class="container-fluid d-flex align-items-stretch justify-content-between">
							<!--begin::Header Menu Wrapper-->
							<div class="header-menu-wrapper header-menu-wrapper-left" id="kt_header_menu_wrapper">
								<!--begin::Header Menu-->
								<div id="kt_header_menu" class="header-menu header-menu-mobile header-menu-layout-default">
									<!--begin::Header Nav-->
									<ul class="menu-nav">
										
									</ul>
									<!--end::Header Nav-->
								</div>
								<!--end::Header Menu-->
							</div>
							<!--end::Header Menu Wrapper-->
							<!--begin::Topbar-->
							<div class="topbar">
								<!--begin::User-->
								<div class="topbar-item">
									<div class="btn btn-icon btn-icon-mobile w-auto btn-clean d-flex align-items-center btn-lg px-2" id="kt_quick_user_toggle">
										<span class="text-muted font-weight-bold font-size-base d-none d-md-inline mr-1">Hi,</span>&nbsp;
										<span class="text-dark-50 font-weight-bolder font-size-base d-none d-md-inline mr-3">
											<?php echo $_SESSION["name"];?> </span>&nbsp;
										<span class="symbol symbol-lg-35 symbol-25 symbol-light-success">
											<form method="post"><button type="submit" name="btnLogout" class="btn btn-outline-danger">Logout</button></form>
										</span>
										<?php
											if(isset($_POST["btnLogout"])){
												session_destroy();
												echo "<script>window.location='/brts/admin/index.php';</script>";
											}
										?>
									</div>
								</div>
								<!--end::User-->
							</div>
							<!--end::Topbar-->
						</div>
						<!--end::Container-->
					</div>
					<!--end::Header-->