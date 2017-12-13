<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" />
    <link rel="icon" type="Imagepng" href="assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="assets/css/material-dashboard.css?v=1.2.0" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
<title>Phòng ban</title>

</head>
<body>
<%
         String user = "";
         // kiem tra cookie
         try
         {
         	Cookie[] cookies = request.getCookies();
         	for (Cookie c : cookies)
         	{
         		if (c.getName().equals("user"))
         		{
         			user = c.getValue();
         		}
         	}
         
         } catch (Exception e)
         {
         	System.out.println("loi cookie");
         }
         if (user == null || user.trim().equals(""))
         {
         	response.sendRedirect("/Web_QuanLyBienChung/login.jsp");
         }
         %>
	<div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-1.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Quản lí  biên chứng
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li>
                        <a href="insert_act_detail.jsp">
                            <i class="material-icons">dashboard</i>
                            <p>Hoạt động</p>
                        </a>
                    </li>
                    <% if(user.trim().equals("admin")) 
                    {
                    %>
                    <li>
                        <a href="NhanVien.jsp">
                            <i class="material-icons">person</i>
                            <p>Nhân viên</p>
                        </a>
                    </li>
                    <%} %>
                    <li class="active">
                        <a href="Phongban.jsp">
                            <i class="material-icons">content_paste</i>
                            <p>Phòng Ban</p>
                        </a>
                    </li>
                   
                   
                    <li class="active-pro">
                        <a href="upgrade.html">
                            <i class="material-icons">unarchive</i>
                            <p>Upgrade to PRO</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <nav class="navbar navbar-transparent navbar-absolute">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Phongban.jsp"> Phòng ban  </a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="material-icons">dashboard</i>
                                    <p class="hidden-lg hidden-md">Dashboard</p>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="material-icons">notifications</i>
                                    <span class="notification">5</span>
                                    <p class="hidden-lg hidden-md">Notifications</p>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">Mike John responded to your email</a>
                                    </li>
                                    <li>
                                        <a href="#">You have 5 new tasks</a>
                                    </li>
                                    <li>
                                        <a href="#">You're now friend with Andrew</a>
                                    </li>
                                    <li>
                                        <a href="#">Another Notification</a>
                                    </li>
                                    <li>
                                        <a href="#">Another One</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="/Web_QuanLyBienChung/logout" style="color: red"><%=user %>--LogOut--</a>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-right" role="search">
                            <div class="form-group  is-empty">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="material-input"></span>
                            </div>
                            <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                <i class="material-icons">search</i>
                                <div class="ripple-container"></div>
                            </button>
                        </form>
                    </div>
                </div>
            </nav>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header" data-background-color="purple">
                                    <h4 class="title">Thêm phòng ban</h4>
                                
                                </div>
                                <div class="card-content">
                                    <form action="ThemPhongBan" method="post">
                                        <div class="row">

                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Mã phòng ban</label>
                                                    <input type="text" class="form-control" name="mapb">
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">

                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Tên phòng ban</label>
                                                    <input type="text" class="form-control" name="tenpb">
                                                </div>
                                            </div>

                                        </div>
                                        <button type="submit" class="btn btn-primary pull-right">Thêm</button>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-4">
                            <div class="card card-profile">
                                <div class="card-avatar">
                                    <a href="#pablo">
                                        <img class="img" src="assets/img/faces/marc.jpg" />
                                    </a>
                                </div>
                                <div class="content">
                                <!-- ThemAnhPB (manv nvarchar(50), maanh nvarchar(50), tenanh nvarchar(50), dulieu longblob, mapb nvarchar(50)) -->
                                    <div class="card-content">
                                        <form action="ThemHinhAnhPhongBan" method="post" enctype="multipart/form-data">
                                            <div class="row">

                                                <div class="col-md-3">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Mã ảnh</label>
                                                        <input type="text" class="form-control" name="maanh">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Tên ảnh</label>
                                                        <input type="text" class="form-control" name="tenanh">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Mã phòng ban</label>
                                                        <input type="text" class="form-control" name="mapb">

                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Mã nhân viên</label>
                                                        <input type="text" class="form-control" name="manv">

                                                    </div>
                                                </div>
                                                <tr style="background-color: antiquewhite">
                                                    
                                                    <td>
                                                        <input type="file" name="dulieu" />
                                                    </td>
                                                </tr>
                                            </div>


                                            <div class="clearfix"></div>
                                            <button type="submit" class="btn btn-primary pull-right">Thêm hình ảnh phòng ban</button>
                                    
                                        </form>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---->
                <div class="card ">
                    <div class="card-header" data-background-color="purple">
                        <h4 class="title">Danh sách phòng ban</h4>
						
                    </div>
                    <div class="card-content table-responsive">
                    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/web_qlbc" user="root" password="123"/>
	<sql:query var="rs1" dataSource="${db }">select idpb, tenpb from phongban;</sql:query>
	
                        <table class="table table-hover">
                        
                            <thead>
                                <th>Mã phòng ban</th>
                                <th>Tên phòng ban</th>
                                
                                <th>Delete</th>

                            </thead>
                            <tbody>
                            <c:forEach items="${rs1.rows }" var="act">
                                <tr>
                                    <td><p>${act.idpb }</p></td>
                                    <td><p>${act.tenpb }</p></td>

									<td><a href="XoaPhongBan?mapb=${act.idpb }"> <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                                <i class="material-icons">close</i>
                                                            </button></a>
                                            </td>
                                </tr>
							</c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!---->
            
            <!---->
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                    Home
                                </a>
                        </li>
                        <li>
                            <a href="#">
                                    Company
                                </a>
                        </li>
                        <li>
                            <a href="#">
                                    Portfolio
                                </a>
                        </li>
                        <li>
                            <a href="#">
                                    Blog
                                </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                </p>
            </div>
        </footer>
    </div>
    </div>
</body>
<script src="assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js" type="text/javascript"></script>
<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>
<!--  Dynamic Elements plugin -->
<script src="assets/js/arrive.min.js"></script>
<!--  PerfectScrollbar Library -->
<script src="assets/js/perfect-scrollbar.jquery.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Material Dashboard javascript methods -->
<script src="assets/js/material-dashboard.js?v=1.2.0"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
</html>