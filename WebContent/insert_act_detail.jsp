<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@taglib prefix="d"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql1" uri="http://java.sun.com/jsp/jstl/sql" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Material Dashboard by Creative Tim</title>
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
<title>Thêm hoạt động</title>

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
                    Quản lí biên chứng
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="active">
                        <a href="dashbroad.jsp">
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
                    <li>
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
        <!-------------------->
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
                        <a class="navbar-brand" href="#"> Insert Event </a>
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
            <div class="content" style="width: 100%;">
                <div class="container-fluid" style="width: 170%;">


                    <!------------------------------------------------>
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="card card-nav-tabs">
                                <div class="card-header" data-background-color="purple">
                                    <div class="nav-tabs-navigation">
                                        <div class="nav-tabs-wrapper">
                                            <span class="nav-tabs-title">Thêm Hoạt động :</span>
                                            <ul class="nav nav-tabs" data-tabs="tabs">
                                                <li class="active">
                                                    <a href="#profile" data-toggle="tab">
                                                        <i class="material-icons">bug_report</i> Thêm chi tiết hoạt động
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                                <li class="">
                                                    <a href="#messages" data-toggle="tab">
                                                        <i class="material-icons">code</i> Thêm hoạt động
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                                <li class="">
                                                    <a href="#settings" data-toggle="tab">
                                                        <i class="material-icons">cloud</i>Thêm lĩnh vực
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                               <!-- //insert image --> 
                                <div class="card-content">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="profile">
                                        
                                            <form action="ThemChiTietHD" method="post" enctype="multipart/form-data">
                                                <table align="center" style="width:  100%">
                                                    <tr>
                                                        <td align="center" colapan="2">
                                                            Thêm chi tiết hoạt động
                                                        </td>
                                                    </tr>
                                                    <tr style="background-color: antiquewhite">
                                                        <td>Mã hoạt động</td>
                                                        <td>
                                                            <input type="text" name="mahd" />
                                                        </td>
                                                    </tr>
                                                    <tr >
                                                        <td> Tên  dữ liệu</td>
                                                        <td>
                                                            <input type="text" name="tendulieu" />
                                                        </td>
                                                    </tr>
                                                    <tr >
                                                        <td> Nội dung  dữ liệu</td>
                                                        <td>
                                                            <input type="text" name="thongtindulieu" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Loại Dữ Liệu</td>
														<td>	
															<input type="radio" name="kieu" value="Loai1"/>Văn bản<br/>
															<input type="radio" name="kieu" value="Loai2"/>Hình ảnh<br/>
															<input type="radio" name="kieu" value="Loai3"/>Video<br/> 
														</td>
                                                    </tr>
                                                    <tr >
                                                        <td> Link</td>
                                                        <td>
                                                            <input type="file" name="dulieu" />
                                                        </td>
                                                    </tr>
                                                    <tr >
                                                        <td> Nhân Viên Thêm Dữ Liệu</td>
                                                        <td>
                                                            <input type="text" name="nhanvien" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td> </td>
                                                        <td>
                                                            <input type="submit" name="submit" value="Lưu" style="background-color:chartreuse" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </form>
                                         <!-- //insert image --> 
                                             <!-- //insert Event --> 
                                           
                                        </div>
                                           <!-- //insert Event --> 
                                              <!-- //insert Event --> 
                                        <div class="tab-pane" id="messages">
                                            <form action="ThemHoatDong" method="post" >
                                                <table align="center" style="width:  100%">
                                                    <tr>
                                                        <td align="center" colapan="2">
                                                            Thêm Hoạt động
                                                        </td>
                                                    </tr>
                                                    <tr style="background-color: antiquewhite">
                                                        <td>Mã hoạt động</td>
                                                        <td>
                                                            <input type="text" name="mahd" />
                                                        </td>
                                                        <td> Tên hoạt động </td>
                                                        <td>
                                                            <input type="text" name="tenhd" />
                                                        </td>
                                                    </tr>

                                                    <tr >
                                                        
                                                        <td> Mã nhân viên </td>
                                                        <td>
                                                            <input type="text" name="manv" />
                                                        </td>
                                                         
                                                        
                                                    </tr>
                                                    
													<tr>
                                                        <td>Lĩnh vực</td>
														<td>	
															<input type="radio" name="linhvuc" value="LV1"/>Văn nghệ<br/>
															<input type="radio" name="linhvuc" value="LV2"/>Học thuật<br/>
															<input type="radio" name="linhvuc" value="LV3"/>Xã hội<br/> 
														</td>
                                                    </tr>
<tr>  <td> Mã phòng ban </td>
                                                        <td>
                                                            <input type="text" name="mapb" />
                                                        </td></tr>
                                                    <!-- Main content -->
                                                    <section class="content">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="box box-info">

                                                                    <h3 class="box-title">
                                                                        <small>Nội dung hoạt động</small>
                                                                    </h3>
                                                                    <!-- tools box -->
                                                                    
                                                                    <!-- /. tools -->
                                                                </div>
                                                                <!-- /.box-header -->
                                                                <div class="box-body pad">
                                                                    <form>
                                                                        <textarea id="editor1" name="thongtin" rows="10" cols="80">
                                           
                    </textarea>
                                                                    </form>

                                                                </div>
                                                                <!-- /.box -->


                                                            </div>
                                                            <!-- /.col-->
                                                        </div>
                                                        <!-- ./row -->
                                                    </section>
                                                    <!-- /.content -->
                                                    
                                        </div>
                                        <!-- /.content-wrapper -->


                                        <tr>
                                            <td> </td>
                                            <td>
                                                <input type="submit" name="Insert " value="Lưu" style="background-color:chartreuse" />
                                            </td>
                                        </tr>
                                        <tr></tr>
                                        </table>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="settings">
                                        <table class="table">
                                            <form action="Insert2" method="post" enctype="multipart/form-data">
                                                <table align="center" style="width:  100%">
                                                    <tr>
                                                        <td align="center" colapan="2">
                                                            Thêm lĩnh vực
                                                        </td>
                                                    </tr>
                                                    <tr style="background-color: antiquewhite">
                                                        <td>ID </td>
                                                        <td>
                                                            <input type="text" name="IDLV" />
                                                        </td>
                                                    </tr>
                                                    <tr >
                                                        <td> Mã nhân viên</td>
                                                        <td>
                                                            <input type="text" name="MaNV" />
                                                        </td>
                                                    </tr>
                                                     <tr style="background-color:chartreuse">
                                                        <td>Tên lĩnh vực</td>
                                                        <td>
                                                            <input type="text" name="TenLV" />
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td> </td>
                                                        <td>
                                                            <input type="submit" name="submit" value="submit" style="background-color:chartreuse" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </form>
                                           
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!------>
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="card">
                            <div class="card-header" data-background-color="blue">
                                <h4 class="title">Danh sách Hoạt động</h4>
                       
                            </div>
                            <div class="card-content table-responsive">
                            <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/web_qlbc" user="root" password="123"/>
							<sql:query var="rs1" dataSource="${db }">select ID_HD, TenHD, NgayNhap, TenNV, Ten_LV, TenPB from hoatdong, nhanvien, linhvuc, phongban where hoatdong.IDNhanVien=nhanvien.IDNhanVien and hoatdong.Id_LinhVuc=linhvuc.Id_LinhVuc and hoatdong.IdPB=phongban.IdPB;
</sql:query>
							
                                <table class="table table-hover" style="color:black">
                                    <thead class="text-warning">
                                        
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${rs1.rows }" var="act">
                                        <tr>
                                            <td><center><p align="center">${act.ID_HD }</p></center></td>
                                            <td><center><p align="center">${act.TenHD }</p></center></td>
                                            <td><center><p align="center">${act.NgayNhap }</p></center></td>
                                            <td><center><p align="center">${act.TenNV }</p></center></td>
                                            <td><center><p align="center">${act.Ten_LV }</p></center></td>
                                            <td><center><p align="center">${act.TenPB }</p></center></td>
                                            
                                            <td><a> <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-simple btn-xs">
                                                                <i class="material-icons">edit</i>
                                                            </button></a></td>

                                            <td><a href="XoaHoatDong?mahd=${act.ID_HD }"> <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
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
                </div>
                <!---->

                <div class="row">

                    <div class="col-lg-6 col-md-12">
                        <div class="card">
                            <div class="card-header" data-background-color="blue">
                                <h4 class="title">Danh sách chi tiết hoạt động </h4>

                            </div>
                            <div class="card-content table-responsive">
                            <sql1:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/web_qlbc" user="root" password="123"/>
							<sql1:query var="rs1" dataSource="${db }">select ID_HD, TenDuLieu, NoiDungDuLieu, TenDL, NgayNhap, TenNV from chitiethoatdong, loaidl, nhanvien where chitiethoatdong.LoaiDulieu=loaidl.LoaiDulieu and chitiethoatdong.IDNhanVien=nhanvien.IDNhanVien;
</sql1:query>
								
                                <table class="table table-hover">
                                    <thead>
                                        <th>Mã hoạt động</th>
                                        <th>Tên dữ liệu</th>
                                        <th>Nội dung dữ liệu</th>
                                        <th>Ngày nhập</th>
                                          <th>Tên nhân viên</th>
                                            <th>Loại dữ liệu</th>
                                        <th>Chỉnh sửa</th>
                                        <th>Xóa</th>
                                    </thead>
                                    <tbody>
                                    <d:forEach items="${rs1.rows }" var="act1">
                                        <tr>
                                            <td><center align="center"><p>${act1.ID_HD }</p></center></td>
                                            <td><center align="center"><p>${act1.TenDuLieu }</p></center></td>
                                            <td><center align="center"><p>${act1.NoiDungDuLieu }</p></center></td>
                                            <td><center align="center"><p>${act1.TenDL }</p></center></td>
                                            <td><center align="center"><p>${act1.NgayNhap }</p></center></td>
                                            <td><center align="center"><p>${act1.TenNV }</p></center></td>
                                            
                                            
                                            <td> <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-simple btn-xs">
                                                                <i class="material-icons">edit</i>
                                                            </button></td>

                                            <td><a> <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                                <i class="material-icons">close</i>
                                                            </button></a>
                                            </td>
                                        </tr>
										</d:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!------>
                <!---->

            </div>
            <!------>
        </div>
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
                <a href="http://www.creative-tim.com">Hcmute</a>, Quản lí biên chứng
            </p>
        </div>
    </footer>
    </div>
    </div>
    <!--   Core JS Files   -->
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
<script type="text/javascript">
    $(document).ready(function() {

        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

    });
</script>
</body>
</html>