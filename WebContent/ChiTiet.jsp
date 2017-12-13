<%@page import="Model.PhongDaoTaoModel"%>
<%@page import="DAO.PhongDaoTaoDAO"%>
<%@page import="Model.ChiTietHoatDongModel"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<title>Chi tiết</title>
<!--css-->
<link href="mystyle_chitiet/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="mystyle_chitiet/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="mystyle_chitiet/css/ken-burns.css" type="text/css" media="all" />
<link rel="stylesheet" href="mystyle_chitiet/css/animate.min.css" type="text/css" media="all" />
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Studies Plus Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--js-->
<script src="mystyle_chitiet/js/jquery.min.js"></script>
<script src="mystyle_chitiet/js/bootstrap.min.js"></script>
<!--js-->

</head>
<body>
	<%
	List<ChiTietHoatDongModel> dschitiethd = (ArrayList<ChiTietHoatDongModel>) request.getAttribute("chitiethoatdong");
	PhongDaoTaoDAO dshoatdong = new PhongDaoTaoDAO();
	String id_hd = request.getAttribute("id_hd").toString();
	%>
	<!--header-->
		<div class="header">
			<div class="header-top">
				<div class="container">
					<div class="detail">
						<ul>
							<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i> + 0164 9467 408</li>
							<li><i class="glyphicon glyphicon-time" aria-hidden="true"></i> 12/12/2017 13:24 </li>
						</ul>
					</div>
					<div class="indicate">
						<p><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, Thành phố Hồ Chí Minh.</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="container">
				<nav class="navbar navbar-default " id="myid">
					<div class="container-fluid">
				
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<nav class="link-effect-2" id="link-effect-2">
								<ul class="nav navbar-nav">
									<li ><a href="#">
										<span data-hover="Home">Trang Chủ</span></a>
									</li>
									<li>
										<a href="#"><span data-hover="Manager">Phòng Đào Tạo</span></a></li>
									<li class="active"><a href="#">
										<span data-hover="About">
											Chi Tiết
										</span></a>
								    </li>
									
								</ul>
							</nav>
						</div>
					</div>
				</nav>
			</div>
		</div>
	<!--header-->
	
	<!--content-->
		<div class="content">
			
			
			<!--student-->
			<div class="student-w3ls">
				<div class="container">
					
					<h3 class="tittle"><%=dshoatdong.hoatdong(id_hd).getTenhoatdong()%></h3>
					<div class="student-grids">
					
					<%
						int i=0;
						for(ChiTietHoatDongModel cthd : dschitiethd )
						{
					%>
						<div class="col-md-12 student-grid">
						<% if(i==0)
						{
						%>	
						<h3><%=dshoatdong.hoatdong(id_hd).getNoidung()%></h3>
						<%
						i=1;}else
						{
						%>
								<p><%=cthd.getNoiDungDuLieu() %></p>
						</div>
						<div class="col-md-8 student-grid col-md-offset-2">
							<img src="<%=cthd.getLink_DuLieu() %>" class="img-responsive" alt="Image-2">
							<p class="text-center"><i><%=cthd.getTenDuLieu() %></i></p>
						</div>

						<div class="clearfix"></div>
						<br />
						
						<%}
						}%>
					
					</div>
				</div>
			</div>
			<!--student-->
			<!--news-->
				<div class="new-w3agile">
					<div class="container">
						<div class="new-grids">
							<div class="col-md-4 new-left">
								<h3 class="tittle1">Tin gần đây</h3>
								<div class="new-top">
									<h5>Sự kiện 1</h5>
									<p>Proin fermentum diam eu massa blandit, congue finibus ante pulvinar. Aliquam lacinia odio eros.</p>
								</div>
								<div class="new-top">
									<h5>Sự kiện2</h5>
									<p>Proin fermentum diam eu massa blandit, congue finibus ante pulvinar. Aliquam lacinia odio eros.</p>
								</div>
								<div class="new-top">
									<h5>Sự kiện 3</h5>
									<p>Proin fermentum diam eu massa blandit, congue finibus ante pulvinar. Aliquam lacinia odio eros.</p>
								</div>
							
							</div>
							<div class="col-md-8 new-right">
								<h3 class="tittle1">Tin Nóng</h3>
								<div class="new-bottom">
									<div>
										<div class="new-bottom-left">
											<img src="mystyle_chitiet/images/w7.jpg" class="img-responsive" alt="">
										</div>
											<div class="new-bottom-right">
											<h5>lễ tốt nghiệp.</h5>
											<p>Nullam egestas diam eu felis dignissim, vitae posuere ex pretium. Morbi quam purus, rhoncus eget enim sed, laoreet venenatis arcu. Curabitur vestibulum, orci pulvinar pretium cursus, diam ante pretium elit, at finibus nisl ligula vitae enim. eu eleifend enim condimentum ac.</p>
											</div>
											<div class="clearfix"></div>
											<br />
									</div>
									<div>
										<div class="new-bottom-left">
											<img src="mystyle_chitiet/images/w7.jpg" class="img-responsive" alt="">
										</div>
											<div class="new-bottom-right">
											<h5>Morbi sed ex ac enim finibus vulputate.</h5>
											<p>Nullam egestas diam eu felis dignissim, vitae posuere ex pretium. Morbi quam purus, rhoncus eget enim sed, laoreet venenatis arcu. Curabitur vestibulum, orci pulvinar pretium cursus, diam ante pretium elit, at finibus nisl ligula vitae enim. eu eleifend enim condimentum ac.</p>
											</div>
											<div class="clearfix"></div>
											<br />
									</div>

								</div>
							</div>
								<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!--news-->
		</div>
		<!--content-->
		<!--footer-->
			<div class="footer-w3">
				<div class="container">
					<div class="footer-grids">
						<div class="col-md-4 footer-grid">
							<h4>Trường Đại Học Sư Phạm Kỹ Thuật TP.HCM</h4>
							<p><strong>Trường Đại học Sư phạm Kỹ thuật Thành phố Hồ Chí Minh </strong>(tên tiếng Anh: Ho Chi Minh City University of Technology and Education, viết tắt là HCMUTE) là một trường đại học<strong>chuyên về kỹ thuật</strong>  tại Thành phố Hồ Chí Minh, <strong>chuyên đào tạo Kỹ sư công nghệ và Giáo viên kỹ thuật</strong>, được thành lập ngày 05/10/1962.</p>
						</div>
						<div class="col-md-4 footer-grid">
						<h4>Hình Ảnh về trường</h4>
							<div class="footer-grid1">
								<img src="mystyle_chitiet/images/w1.jpg" alt=" " class="img-responsive">
							</div>
							<div class="footer-grid1">
								<img src="mystyle_chitiet/images/w2.jpg" alt=" " class="img-responsive">
							</div>
							<div class="footer-grid1">
								<img src="mystyle_chitiet/images/w4.jpg" alt=" " class="img-responsive">
							</div>
							<div class="footer-grid1">
								<img src="mystyle_chitiet/images/w5.jpg" alt=" " class="img-responsive">
							</div>
							<div class="footer-grid1">
								<img src="mystyle_chitiet/images/w6.jpg" alt=" " class="img-responsive">
							</div>
							<div class="footer-grid1">
								<img src="mystyle_chitiet/images/w2.jpg" alt=" " class="img-responsive">
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-4 footer-grid">
						<h4>Information</h4>
							<ul>
								<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, Thành phố Hồ Chí Minh.</li>
								<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i> (+84 - 028) 38968641 - (+84 -028) 38961333 - (+84 -028) 37221223</li>
								<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:nagaky4@mail.com"> nagaky4@gmail.com</a></li>
								<li><i class="glyphicon glyphicon-time" aria-hidden="true"></i>Mon-Sat 09:00 am to 16:00 pm</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<!--footer-->
						
</body>
</html>