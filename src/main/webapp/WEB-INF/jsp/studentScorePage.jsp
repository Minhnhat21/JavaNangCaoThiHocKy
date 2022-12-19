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
<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full" data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
  <header class="topbar" data-navbarbg="skin6">
    <nav class="navbar top-navbar navbar-expand-md navbar-light">
      <div class="navbar-header" data-logobg="skin6">
        <a class="navbar-brand" href="/student">
          <b class="logo-icon">
            <img src="/images/husc_logo.png" width="45" height="50" alt="homepage" class="dark-logo" />
          </b>
          <span class="logo-text"><div class="sidebar-heading border-bottom">Trang cá nhân</div></span>
        </a>

      </div>
                  <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                      <ul class="navbar-nav float-end">
                          <li class="nav-item dropdown">
                              <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                  <img src="/images/husc_logo.png" alt="user" class="rounded-circle" width="31">
                              </a>
                              <ul class="dropdown-menu dropdown-menu-end user-dd animated" aria-labelledby="navbarDropdown">
                                  <a class="dropdown-item" href="/homepage"><i class="ti-user m-r-5 m-l-5"></i>Student homepage</a>
                              </ul>
                          </li>
                          <!-- ============================================================== -->
                          <!-- User profile and search -->
                          <!-- ============================================================== -->
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
          <h1 class="mb-0 fw-bold">Kết quả thi</h1>
        </div>
      </div>
    </div>

    <div class="container" style="height: 1000px">
      <div class="infomation-box row">
        <div class="col-10 col-inf">
        <h1> <c:out value="${message}"></c:out> </h1>
         <%--  <div class="table-responsive">
            <div class="table-wrapper">
              <div class="table-title">
                <div class="row">
                  <div class="col-sm-6">
                    <h4 style="color:aliceblue;" >Ngành học đăng ký: Công nghệ thông tin</h4>
                  </div>

                </div>
              </div>
              <table class="table table-striped table-hover">
                <thead>
                <tr>
                  <th><h5>Môn thi</h5></th>
                  <th><h5>Điểm</h5></th>>
                </tr>
                </thead>
                <tbody>
                  <tr th:each="score, state : ${studentInformation}">
                    <td th:utext="${score.examSubject.eExamSubject}">Môn thi</td>
                    <td th:utext="${score.testScore}">Điểm</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div> --%>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>