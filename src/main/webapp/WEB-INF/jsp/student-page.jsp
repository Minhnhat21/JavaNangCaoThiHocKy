<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang cá nhân</title>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.js"></script>
    
    <!-- Custom CSS -->
    <link href="/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/studentpage.css">
</head>
<body>

<!-- <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div> -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
         data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <div class="navbar-header" data-logobg="skin6">
                    <a class="navbar-brand" href="/student/home">
                        <b class="logo-icon">
                            <img src="/images/husc_logo.png" width="45" height="50" alt="homepage" class="dark-logo" />
                        </b>
                        <span class="logo-text">
                                <div class="sidebar-heading border-bottom">Trang cá nhân</div>
                        </span>
                    </a>

                </div>

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
            </nav>
        </header>
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                                     href="/student/home" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span
                                class="hide-menu">Lý lịch cá nhân</span></a></li>

                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                                     href="/student/scoreTable" aria-expanded="false"><i class="mdi mdi-border-all"></i><span
                                class="hide-menu">Bảng điểm</span></a></li>
                    </ul>

                </nav>
            </div>
        </aside>
        <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-6">
                        <h1 class="mb-0 fw-bold">Thông tin cá nhân</h1>
                    </div>
                </div>
            </div>

            <div class="container" style="height: 1000px">
                <div class="infomation-box row">
                    <div class="col col-inf col-image">
                        <img src="/images/avatar.jpg" alt="anh dai dien" style="width:125px; height:140px;">
                    </div>
                    <div class="col-10 col-inf">
                        <div class="row">
                            <div class="col-6 col-inf">
                                <strong>Họ và tên: </strong><span> <c:out value="${student.fullName}"></c:out>  </span>
                            </div>
                            <div class="col-6 col-inf">
                      
                                <strong>Giới tính:</strong> <span> <c:choose>
													    <c:when test="${student.gender == true}">
													        Nam 
													        <br />
													    </c:when>    
													    <c:otherwise>
													       Nữ
													        <br />
													    </c:otherwise>
													</c:choose></span>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-6 col-inf">
                                <strong> Nơi sinh: </strong> <span> <c:out value="${student.birthPlace}"></c:out> </span>
                            </div>
                            <div class="col-6 col-inf">
                                <strong>Căn cước công dân: </strong>  <span> <c:out value="${student.citizenIdentity}"></c:out> </span>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-6 col-inf">
                                 <strong>Quốc tịch: </strong>  <span > <c:out value="${student.national}"></c:out> </span>
                            </div>
                            <div class="col-6 col-inf">
                                <strong>Số điện thoại: </strong> <span > <c:out value="${student.phoneNumber}"></c:out></span>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-6 col-inf">
                                <strong>Tôn giáo: </strong>  <span > <c:out value="${student.religion}"></c:out></span>
                            </div>
                            <div class="col-6 col-inf">
                                <strong>Dân tộc: </strong>  <span><c:out value="${student.religion }"></c:out></span>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-6 col-inf">
                                <strong>Địa chỉ: </strong>  <span><c:out value="${student.address}"></c:out></span>
                            </div>
                            <div class="col-6 col-inf">
                                <strong>Email: </strong>  <span><c:out value="${student.email}"></c:out></span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

<footer class="footer text-center">
    Minh Nhat <a href="https://github.com/Minhnhat21">Github</a>.
</footer>

<script src="/js/lib/app-style-switcher.js"></script>
<!--Wave Effects -->
<script src="/js/lib/waves.js"></script>
<!--Menu sidebar -->
<script src="/js/lib/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="/js/lib/custom.js"></script>

<script src="/js/plugins/jquery.validate.js"></script>

<script src="/js/scripts.js" type="text/javascript"></script>
</body>
</html>