<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tra cứu kết quả nguyện vọng</title>

	<link rel="icon" type="image/png" sizes="16x16" href="/images/husc_logo.png">
		
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.js"></script>

    <!-- Popper Js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

    <!-- Bootstrap 4 Framework -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/css/homepage.css">
</head>
<body>
<!-- Image and text -->
<nav class="navbar navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <h5 style="padding-left: 10px">Tra cứu nguyện vọng 1</h5>
    </a>
    <ul class="nav navbar-nav navbar-right">
        <li>
            <a href="" class="glyphicon glyphicon-user" data-toggle="modal" data-target="#modalLoginForm" style="padding: 10px"><span>Đăng nhập</span> </a>
        </li>
    </ul>
</nav>

<div class="row justify-content-center padding">
    <h4>Tra cứu kết quả nguyện vọng 1 trường Đại học Khoa học, Đại học Huế</h4>
    <!-- Search -->
    <!-- ============================================================== -->
    <div class="input-group">
        <input id="search-content" name="CitizenIdentity" type="search" class="form-control rounded" placeholder="Căn cước công dân của bạn" aria-label="Search" aria-describedby="search-addon" />
        <button onclick="searchStudentByName()" type="button" class="btn btn-outline-primary">search</button>
    </div>
    <span class="error" style="color: red; margin: 20px; font-size: 30px"></span>
    <div class="result-group">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Căn cước công dân</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Tổng điểm</th>
                <th scope="col">Kết quả</th>
            </tr>
            </thead>
            <tbody id="body-data">
            </tbody>
        </table>
        <div>
            <h4 id="p-h4">Thứ hạng: </h4>
            <button id="btn-reload" type="button" class="btn btn-primary btn-sm">Reset</button>
        </div>
    </div>

<!--  Form Login cho sinh viên>-->

    <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Đăng nhập</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body mx-3">
                    <form action="/login/register">
		              <div class="form-floating mb-3">
		                <input name="username" type="text" class="form-control" id="usernameInput" placeholder="Username">
		                <label for="usernameInput">Tài khoản</label>
		              </div>
		              <div class="form-floating mb-3">
		                <input name="password" type="password" class="form-control" id="floatingPassword" placeholder="Password">
		                <label for="floatingPassword">Mật khẩu</label>
		              </div>
		              <div class="d-grid">
		                <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit"> Đăng nhập</button>
		              </div>
 
            	</form>   
            </div>
        </div>
    </div>

</div>
    <!-- All Jquery -->
    <!-- ============================================================== -->
  <!--   <script th:src="@{../assets/libs/jquery/dist/jquery.min.js}"></script> -->
    <!-- Bootstrap tether Core JavaScript -->
   <!--  <script th:src="@{../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js}"></script> -->

    <!--validate jQuery-->
    
   <script src="/plugins/jquery.validate.js"></script>

    <script type="text/javascript" src="/js/homepage.js"></script>
</body>
</html>