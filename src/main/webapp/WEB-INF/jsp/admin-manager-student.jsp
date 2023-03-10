<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang quản lý</title>
 	
 	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- Font Awesome -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

    <!-- Popper Js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>


    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet"/>
	
	
 	<!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/images/husc_logo.png">
	<!-- <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" rel="stylesheet" type="text/css" /> -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.js"></script>

    <!-- Custom CSS -->
     <link href="/css/style.min.css" rel="stylesheet">

    <link href="/css/adminpage.css" rel="stylesheet">
</head>
<body>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="/admin">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <img src="/images/husc_logo.png" width="45" height="50" alt="homepage" class="dark-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <div class="sidebar-heading border-bottom">Admin Page</div>
                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-start me-auto">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <!-- <li class="nav-item search-box"> <a class="nav-link waves-effect waves-dark"
                                href="javascript:void(0)"><i class="mdi mdi-magnify me-1"></i> <span class="font-16">Search</span></a>
                            <form class="app-search position-absolute">
                                <input type="text" class="form-control" placeholder="Search &amp; enter"> <a
                                    class="srh-btn"><i class="mdi mdi-window-close"></i></a>
                            </form>
                        </li> -->
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
		                <ul class="navbar-nav float-start me-auto">
		   
		                </ul>
		                <div class="dropdown show navbar-nav float-end">
						  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    Menu
						  </a>
						
						  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						    <a class="dropdown-item" href="/home/">Tra cứu</a>
						    <a class="dropdown-item" href="#">Đăng xuất</a>
						  </div>
		            	</div>
		            	<ul class="navbar-nav float-end">
		   
		                </ul>
               		</div>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                                 href="/admin/home" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span
                            class="hide-menu">Dashboard</span></a></li>

                    	<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                                 href="/admin/table" aria-expanded="false"><i class="mdi mdi-border-all"></i><span
                            class="hide-menu">Table</span></a></li>
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-6">
                        <!--<nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 d-flex align-items-center">
                              <li class="breadcrumb-item"><a href="/admin" class="link"><i class="mdi mdi-home-outline fs-4"></i></a></li>
                              <li class="breadcrumb-item active" aria-current="page">Table</li>
                            </ol>
                          </nav>-->
                        <h1 class="mb-0 fw-bold">Bảng quản lý học sinh</h1>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <!-- Search -->
                         <!-- ============================Search================================== -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label for="search-content">Tìm kiếm</label>
                                        <input onclick="searchStudentByName(0)" id="search-content" type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
                                    </div>
                                    <div class="col-sm-4">
                                        <label for="filter">Môn học:</label>
                                        <select class="form-control" id="filter">
                                            <option value= "">Tất cả</option>
                                            <option value="CNTT">Công nghệ thông tin</option>
                                            <option value="KTPM">Kỹ thuật phần mềm</option>
                                            <option value="KT">Kiến trúc</option>
                                            <option value="BC">Báo chí</option>
                                            <option value="XHH">Xã hội học</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-1">
                                        <label for="btn-search"></label>
                                        <button style="margin-top: 8px" id="btn-search" type="button" class="btn btn-outline-primary">search</button>
                                    </div>
                                </div>
                            <!-- ============================================================== -->
                                <div class="table-responsive">
                                    <div class="table-wrapper">
                                        <div class="table-title">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <h2 style="color:aliceblue;" >Manage <b>Students</b></h2>
                                                </div>
                                                <div class="col-sm-6">
                                                    <a href="#addStudentModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm mới học sinh</span></a>
                                                    <a href="#importModal" class="btn btn-info" data-toggle="modal"><i class="material-icons">&#xE24D;</i> <span>Nhập dữ liệu từ CSV</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <table class="table table-striped table-hover">
                                            <thead>
                                                <tr>
                                                   <!--  <th>ID</th> -->
                                                    <th>Số căn cước</th>
                                                    <th>Họ và tên</th>
                                                    <th>Giới tính</th>
                                                    <th>Kết quả</th>
                                                    <th>Chỉnh sửa</th>
                                                    <th>Xóa</th>
                                                    <th>Chi tiết</th>
                                                </tr>
                                            </thead>
                                            <tbody id="get-data">
                                            </tbody>
                                        </table>
                                        <div class="clearfix">
                                            <ul id="pagination" class="pagination">

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                Minh Nhat <a href="https://github.com/Minhnhat21">Github</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- Add Modal HTML -->
    <div class="modal fade " id="addStudentModal" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <form id="add-form">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm mới học sinh</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                <div class="form-row">
                	
	                <div class="form-row">
	                    <div class="form-group col-md-6">
	                        <label for="addCitizenIdentity" class="col-form-label">Số căn cước</label>
	                        <input type="text" class="form-control" id="addCitizenIdentity" name="CitizenIdentity">
	                    </div>
	                    <div class="form-group col-md-6">
	                         <label for="full-name" class="col-form-label">Họ và tên</label>
	                         <input type="text" class="form-control" id="full-name" name="fullName">
	                     </div>
	                     
	                     
	                </div>
	                <div class="form-row">
	                	<div class="form-group col-md-3">
                                <label for="gender-input">Giới tính</label>
                                <select id="gender-input" class="form-control">
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="true">Nam</option>
                                    <option value="false">Nữ</option>
                                </select>
                      		</div>

                            <div class="form-group col-md-3">
                                <label for="dob-input" class="col-form-label">Ngày sinh</label>
                                <input type="date" class="form-control" id="dob-input" name="dateOfBirth">
                            </div>
	                     
	                     <div class="form-group col-md-3">
	                         <label for="religion-input" class="col-form-label">Tôn giáo</label>
	                         <input type="text" class="form-control" id="religion-input" name="religion">
	                     </div>
	                     
	                     <div class="form-group col-md-3">
	                         <label for="national" class="col-form-label">Quốc tịch</label>
	                         <input type="text" class="form-control" id="national" name="national">
	                     </div>
	                </div>
	                <div class="form-row">
	                	<div class="form-group col-md-6">
	                         <label for="birth-place" class="col-form-label">Quê quán</label>
	                         <input type="text" class="form-control" id="birth-place" name="birthPlace">
	                     </div>
                     	<div class="form-group col-md-6">
                          <label for="address-text" class="col-form-label">Address:</label>
                          <textarea class="form-control" id="address-text" name="address"></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="email-input" class="col-form-label">Email</label>
                            <input type="text" class="form-control" id="email-input" name="email">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="phonenumber-input" class="col-form-label">Số điện thoại</label>
                            <input type="text" class="form-control" id="phonenumber-input" name="phonenumber-input">
                        </div>
	                </div>              
                
                </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputMajors">Ngành học đăng ký</label>
                                <select id="inputMajors" class="form-control">
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="CNTT">Công nghệ thông tin</option>
                                    <option value="KTPM">Kỹ thuật phần mềm</option>
                                    <option value="KT">Kiến trúc</option>
                                    <option value="BC">Báo chí</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputPriorityPoint">Điểm ưu tiên</label>
                                <input type="text" class="form-control" id="inputPriorityPoint" name="priorityPoint">
                            </div>
                        </div>

                        <!--Form điểm-->
                        <!--Form điểm 1-->
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="input-subject-1">Môn học</label>
                                <select id="input-subject-1" class="form-control">
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="MATH">Toán</option>
                                    <option value="LITERATURE">Văn</option>
                                    <option value="ENGLISH">Tiếng Anh</option>
                                    <option value="CHEMISTRY">Hóa học</option>
                                    <option value="PHYSICS">Vật lý</option>
                                    <option value="BIOLOGY">Sinh học</option>
                                    <option value="GEOGRAPHY">Địa lý</option>
                                    <option value="HISTORY">Lịch sử</option>
                                    <option value="CIVIC_EDUCATION">GDCD</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="input-score-1">Điểm </label>
                                <input type="text" class="form-control" id="input-score-1" name="score1">
                            </div>
                        </div>
                        <!---->

                        <!--Form điểm 2-->
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="input-subject-2">Môn học</label>
                                <select id="input-subject-2" class="form-control">
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="MATH">Toán</option>
                                    <option value="LITERATURE">Văn</option>
                                    <option value="ENGLISH">Tiếng Anh</option>
                                    <option value="CHEMISTRY">Hóa học</option>
                                    <option value="PHYSICS">Vật lý</option>
                                    <option value="BIOLOGY">Sinh học</option>
                                    <option value="GEOGRAPHY">Địa lý</option>
                                    <option value="HISTORY">Lịch sử</option>
                                    <option value="CIVIC_EDUCATION">GDCD</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="input-score-2">Điểm </label>
                                <input type="text" class="form-control" id="input-score-2" name="score2">
                            </div>
                        </div>
                        <!---->

                        <!--Form điểm 1-->
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="input-subject-3">Môn học</label>
                                <select id="input-subject-3" class="form-control">
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="MATH">Toán</option>
                                    <option value="LITERATURE">Văn</option>
                                    <option value="ENGLISH">Tiếng Anh</option>
                                    <option value="CHEMISTRY">Hóa học</option>
                                    <option value="PHYSICS">Vật lý</option>
                                    <option value="BIOLOGY">Sinh học</option>
                                    <option value="GEOGRAPHY">Địa lý</option>
                                    <option value="HISTORY">Lịch sử</option>
                                    <option value="CIVIC_EDUCATION">GDCD</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="input-score-3">Điểm </label>
                                <input type="text" class="form-control" id="input-score-3" name="score3">
                            </div>
                        </div>
                        <!---->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <input type="submit"  id = "add-data-btn" class="btn btn-success" value="Add">
                </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Detail Modal HTML -->
    <div id="detailStudentModal" class="modal fade">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-title">Chi tiết học sinh</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                    	<div class="form-row">
		                	<div class="form-group col-md-6">
	                            <label for="detail-citizen-identity" class="col-form-label">Số căn cước</label>
	                            <input type="text" class="form-control" id="detail-citizen-identity" readonly>
                        	</div>
	                        <div class="form-group col-md-6">
	                            <label for="full-name-detail" class="col-form-label">Họ và tên</label>
	                            <input type="text" class="form-control" id="full-name-detail" readonly>
	                        </div>     
	                	</div>
	                	
	                	<div class="form-row">
		                	<div class="form-group col-md-3">
                                <label for="gender-detail">Giới tính</label>
               					<input type="text" class="form-control" id="gender-detail" readonly>
	                         </div>
							<div class="form-group col-md-3">
                                <label for="dob-detail" class="col-form-label">Ngày sinh</label>
                                <input type="text" class="form-control" id="dob-detail" readonly>
                            </div>

		                     
		                     <div class="form-group col-md-3">
		                         <label for="religion-detail" class="col-form-label">Tôn giáo</label>
		                         <input type="text" class="form-control" id="religion-detail" name="eligionDetail" readonly>
		                     </div>
		                     
		                     <div class="form-group col-md-3">
		                         <label for="national-detail" class="col-form-label">Quốc tịch</label>
		                         <input type="text" class="form-control" id="national-detail" name="nationalDetail" readonly>
		                     </div>
	                	</div>
                       
                        <div class="form-row">
	                        <div class="form-group col-md-6">
		                         <label for="birth-place-detail" class="col-form-label">Quê quán</label>
		                         <input type="text" class="form-control" id="birth-place-detail" name="birthPlaceDetail" readonly>
		                     </div>
	
	                        <div class="form-group col-md-6">
	                            <label for="phonenumber-detail" class="col-form-label">Số điện thoại</label>
	                            <input type="text" class="form-control" id="phonenumber-detail" name="phonenumberDetail" readonly>
	                        </div>
	                        <div class="form-group col-md-6">
	                            <label for="address-detail" class="col-form-label">Address:</label>
	                            <textarea class="form-control" id="address-detail" readonly></textarea>
	                        </div>
	                        <div class="form-group col-md-6">
	                            <label for="email-detail" class="col-form-label">Email</label>
	                            <input type="text" class="form-control" id="email-detail" readonly>
	                        </div>
 					
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="detailsMajors">Ngành học đăng ký</label>
                                <select id="detailsMajors" class="form-control">
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="CNTT">Công nghệ thông tin</option>
                                    <option value="KTPM">Kỹ thuật phần mềm</option>
                                    <option value="KT">Kiến trúc</option>
                                    <option value="BC">Báo chí</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="detailPriorityPoint">Điểm ưu tiên</label>
                                <input type="text" class="form-control" id="detailPriorityPoint" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    
    
    <!-- Edit Modal HTML -->
    <div id="editStudentModal" class="modal fade">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-title">Chỉnh sửa học sinh</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                    <h5 class="mb-4">Lý lịch học sinh</h5>
                	<br>
	                <div class="form-row">
	                     <div class="form-group col-md-6">
                            <label for="detail-citizen-identity" class="col-form-label">Số căn cước</label>
                            <input type="text" class="form-control" id="edit-citizen-identity" readonly>
                        </div>
	                    <div class="form-group col-md-6">
                            <label for="full-name-edit" class="col-form-label">Họ và tên</label>
                            <input type="text" class="form-control" id="full-name-edit">
                        </div>     
	                </div>
	                <div class="form-row">
	                	<div class="form-group col-md-3">
                                <label for="gender-edit">Giới tính</label>
                                <select id="gender-edit" class="form-control">
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="true">Nam</option>
                                    <option value="false">Nữ</option>
                                </select>
                         </div>
						<div class="form-group col-md-3">
                                <label for="dob-edit" class="col-form-label">Ngày sinh</label>
                                <input type="date" class="form-control" id="dob-edit">
                            </div>
	                     
	                     <div class="form-group col-md-3">
	                         <label for="religion-edit" class="col-form-label">Tôn giáo</label>
	                         <input type="text" class="form-control" id="religion-edit" name="eligionEdit">
	                     </div>
	                     
	                     <div class="form-group col-md-3">
	                         <label for="national-edit" class="col-form-label">Quốc tịch</label>
	                         <input type="text" class="form-control" id="national-edit" name="nationalEdit">
	                     </div>
	                </div>
                     <div class="form-row">
                     	<div class="form-group col-md-6">
	                         <label for="birth-place-edit" class="col-form-label">Quê quán</label>
	                         <input type="text" class="form-control" id="birth-place-edit" name="birthPlaceEdit">
	                     </div>

                        <div class="form-group col-md-6">
                            <label for="phonenumber-edit" class="col-form-label">Số điện thoại</label>
                            <input type="text" class="form-control" id="phonenumber-edit" name="phonenumberEdit">
                        </div>
                         <div class="form-group col-md-6">
                            <label for="address-edit" class="col-form-label">Address:</label>
                            <textarea class="form-control" id="address-edit"></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="email-edit" class="col-form-label">Email</label>
                            <input type="text" class="form-control" id="email-edit">
                        </div>    
                     </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="majors-edit">Ngành học đăng ký</label>
                                <select id="majors-edit" class="form-control" readonly>
                                    <option value="" selected hidden>Choose Option</option>
                                    <option value="CNTT">Công nghệ thông tin</option>
                                    <option value="KTPM">Kỹ thuật phần mềm</option>
                                    <option value="KT">Kiến trúc</option>
                                    <option value="BC">Báo chí</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="edit-Priority-Point">Điểm ưu tiên</label>
                                <input type="text" class="form-control" id="edit-Priority-Point">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input  type="submit" id="save-btn" class="btn btn-info" value="Save">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Imports Modal HTML -->
    <div id="importModal" class="modal fade">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Nhập dữ liêu từ file csv</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <form action="/api/csv/upload" enctype="multipart/form-data"
                      method="post" id="fileUploadForm">
                    <div class="form-group">
                        <label>Select File</label> <input class="form-control"
                                                          name="file" type="file">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary" id="upload_csv_form" type="submit">Upload</button>
                    </div>
                </form>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                </div>
            </div>
        </div>
    </div>

	 <script src="/js/lib/app-style-switcher.js"></script>
	<!--Wave Effects -->
	<script src="/js/lib/waves.js"></script>
	<!--Menu sidebar -->
	<script src="/js/lib/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="/js/lib/custom.js"></script>

    <script src="/plugins/pagination.min.js"></script>
    <script src="/plugins/jquery.twbsPagination.js"></script>
    <script src="/plugins/jquery.validate.js"></script>

    <!--Custom JavaScript -->
   <script src="/js/admin.js" type="text/javascript"></script>
</body>
</html>