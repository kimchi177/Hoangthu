<%@page import="DAO.PhongDaoTaoDAO"%>
<%@page import="Model.AnhPhongBanModel"%>
<%@page import="DAO.AnhPhongBanDAO"%>
<%@page import="DAO.PhongBanDAO"%>
<%@page import="javax.crypto.interfaces.PBEKey"%>
<%@page import="Model.PhongDaoTaoModel"%>
<%@page import="Model.PhongBanModel"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><%=request.getAttribute("tenphongban")%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />

    

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Google Webfonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <!-- Animate.css -->
    <link rel="stylesheet" href="mystyle_phongban/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="mystyle_phongban/css/icomoon.css">
    <!-- Simple Line Icons-->
    <link rel="stylesheet" href="mystyle_phongban/css/simple-line-icons.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="mystyle_phongban/css/magnific-popup.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="mystyle_phongban/css/owl.carousel.min.css">
    <link rel="stylesheet" href="mystyle_phongban/css/owl.theme.default.min.css">
    <!-- Salvattore -->
    <link rel="stylesheet" href="mystyle_phongban/css/salvattore.css">
    <!-- Theme Style -->
    <link rel="stylesheet" href="mystyle_phongban/css/style.css">
    <!-- Modernizr JS -->
    <script src="mystyle_phongban/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<link href="mystyle_phongban/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="mystyle_phongban/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="mystyle_phongban/css/ken-burns.css" type="text/css" media="all" />
<link rel="stylesheet" href="mystyle_phongban/css/animate.min.css" type="text/css" media="all" />
        <!--js-->
    <script src="mystyle_phongban/js/jquery.min.js"></script>
    <script src="mystyle_phongban/js/bootstrap.min.js"></script>
    <!--js-->

</head>

<body>
	<% 
		List<PhongDaoTaoModel> dshd = (ArrayList<PhongDaoTaoModel>) request.getAttribute("dsHoatDong");
		PhongBanDAO phongban = new PhongBanDAO();
		AnhPhongBanDAO listanhphongban = new AnhPhongBanDAO();
		PhongDaoTaoDAO dshoatdong = new PhongDaoTaoDAO();
	%>
    <div id="fh5co-offcanvass">
        <ul>
        	<%

	        		for(PhongBanModel pb : phongban.gestlistPhongBan())
	        		{
        	%>
            <li class="active"><a href="#" data-nav-section="home"><%=pb.getTenphongban() %></a></li>
           	<% 
           			}
        	%>
		<li><a href="#" data-nav-section="features">Trang chủ</a></li>

        </ul>

    </div>

    <div id="fh5co-menu" class="navbar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><span>Menu</span> <i></i></a>
                    <a href="index.html" class="navbar-brand"><span>Load trang</span></a>
                </div>
            </div>
        </div>
    </div>

    <div id="fh5co-page">
        <div id="fh5co-wrap">
                <!-- banner -->
    <div class="banner">
        <div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">

            <!-- Wrapper-for-Slides -->
            <div class="carousel-inner" role="listbox">
				<%
						String id_pb =request.getAttribute("id_pb").toString();
            			int i=0;
						for(AnhPhongBanModel anhphongban : listanhphongban.gestanhPhongBan(id_pb))
						{
							if(i==0)
							{
				%>
				
                <!-- First-Slide -->
                <div class="item active">
                    <img src="<%=anhphongban.getLink()%>.jpg" alt="<%=anhphongban.getTenAnh() %>" class="img-responsive" />
                    <div class="carousel-caption kb_caption">
                        <h3 data-animation="animated flipInX"><%=request.getAttribute("tenphongban")%></h3>
                       <!--  <h4 data-animation="animated flipInX">cupidatat non proident</h4> -->
                    </div>
                </div>
         
             			<%	
							i=1;
							}
							else
							{
						%>
						
						<!-- Third-Slide -->
		                <div class="item">
		                    <img src="<%=anhphongban.getLink()%>.jpg" alt="<%=anhphongban.getTenAnh() %>" class="img-responsive" />
		                    <div class="carousel-caption kb_caption kb_caption_center">
		                        <h3 data-animation="animated flipInX"><%=request.getAttribute("tenphongban")%></</h3>
		                        
		                    </div>
		                </div>
                <% 			}
					}%>
				
            </div>
            
            <!-- Left-Button -->
            <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <!-- Right-Button -->
            <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            
        </div>
        <script src="mystyle_phongban/js/custom.js"></script>
    </div>
<!-- banner -->
            
            <!-- END .header -->

            <div id="fh5co-main">
                <div id="fh5co-clients">
                    <div class="container">
                        <div class="row text-center">

                        </div>
                    </div>
                </div>




                <div id="fh5co-features-2" data-section="design">
                    <div class="fh5co-features-2-content">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 fh5co-section-heading text-center">
                                    <h2 class="fh5co-lead to-animate">Thông tin trong tháng .
                                    </h2>

                                </div>
                                <div class="col-md-4 fh5co-text-wrap">
                                    <div class="row text-center">
                                    
                                    <%
                                    	for(PhongDaoTaoModel pdt : dshoatdong.dsHoatDongPhongDaoTaoPanelTrai(id_pb))
                                    	{
                              				
                                    %>
                                  		  <a href="/Web_QuanLyBienChung/chitiethoatdong?ID_HD=<%=pdt.getId_hoatdong()%>">
	                                        <div class="col-md-12 col-sm-6 col-xs-6 col-xxs-12 fh5co-text animate-object features-2-animate-3">
	                                            <span class="fh5co-icon"><i class="icon-rocket"></i></span>
	                                            <h4 class="fh5co-uppercase-sm"><%=pdt.getTenhoatdong() %></h4>
	                                        </div>
                                        </a>
                                        <%} %>
                                        
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-push-4 fh5co-text-wrap">
                                    <div class="row text-center">
                                    <%
                                    	for(PhongDaoTaoModel pdt : dshoatdong.dsHoatDongPhongDaoTaoPanelPhai(id_pb))
                                    	{
                                    %>
                                    	<a href="/Web_QuanLyBienChung/chitiethoatdong?ID_HD=<%=pdt.getId_hoatdong()%>">
                                        <div class="col-md-12 col-sm-6 col-xs-6 col-xxs-12 fh5co-text animate-object features-2-animate-5">
                                            <span class="fh5co-icon"><i class="icon-rocket"></i></span>
                                            <h4 class="fh5co-uppercase-sm"><%=pdt.getTenhoatdong() %></h4>

                                        </div>
                                        </a>
                                    <% } %>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-pull-4 fh5co-image animate-object features-2-animate-2">
                                    <p class="text-center">
                                        <img src="mystyle_phongban/images/iphone_blank_2.png" class="" alt="Outline Free HTML5 Responsive Bootstrap Template">
                                    </p>
                                    <p class="text-center">
                                        <img src="mystyle_phongban/images/1.jpg" class="" alt="Outline Free HTML5 Responsive Bootstrap Template">
                                    </p>
                                    <p class="text-center">
                                        <img src="mystyle_phongban/images/2.jpg" class="" alt="Outline Free HTML5 Responsive Bootstrap Template">
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>


                <div id="fh5co-testimony" data-section="testimonies">
                    <div class="container">
                        <div class="row animate-box">

                            <div class="owl-carousel">

								<%
									for(PhongDaoTaoModel pdt : dshoatdong.dsHoatDongPhongDaoTaoEnd(id_pb))
									{
								%>
                                <div class="item">
                                    <div class="col-md-3 col-sm-3 col-xs-4 col-xxs-12">
                                        <figure class="fh5co-vcard"><img src="<%=pdt.getImagehd()%>.jpg" alt="" class="img-responsive"></figure>
                                    </div>
                                    <a href="/Web_QuanLyBienChung/chitiethoatdong?ID_HD=<%=pdt.getId_hoatdong()%>">
	                                    <div class="col-md-9 col-sm-9 col-xs-8 col-xxs-12">
	                                        <blockquote>
	                                            <p><%=pdt.getTenhoatdong() %>.</p>
	                                        </blockquote>
	
	                                    </div>
                                    </a>
                                </div>
								<%
									}
								%>
 
                            </div>

                        </div>
                    </div>
                </div>


                <div id="fh5co-counter" class="fh5co-bg-section" style="background-image: url(images/bg_1.jpg); background-attachment: fixed;">
                    <div class="fh5co-overlay"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="fh5co-hero-wrap">

                                    <div class="fh5co-hero-intro text-center to-animate counter-animate">
                                        <div class="col-md-4 text-center">
                                            <span class="fh5co-counter js-counter" data-from="0" data-to="28" data-speed="5000" data-refresh-interval="50"></span>
                                            <span class="fh5co-counter-label">Số người theo dõi</span>

                                        </div>
                                        <div class="col-md-4 text-center">
                                            <span class="fh5co-counter js-counter" data-from="0" data-to="57" data-speed="5000" data-refresh-interval="50"></span>
                                            <span class="fh5co-counter-label">Số người theo dõi</span>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <span class="fh5co-counter js-counter" data-from="0" data-to="<%=dshoatdong.soluonghoatdong(id_pb) %>" data-speed="5000" data-refresh-interval="50"></span>
                                            <span class="fh5co-counter-label">Số Lượng tin tức</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                


            </div>
        </div>

        
    </div>


    <!-- jQuery -->
    <script src="mystyle_phongban/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="mystyle_phongban/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="mystyle_phongban/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="mystyle_phongban/js/jquery.waypoints.min.js"></script>
    <!-- Magnific Popup -->
    <script src="mystyle_phongban/js/jquery.magnific-popup.min.js"></script>
    <!-- Owl Carousel -->
    <script src="mystyle_phongban/js/owl.carousel.min.js"></script>
    <!-- toCount -->
    <script src="mystyle_phongban/js/jquery.countTo.js"></script>
    <!-- Main JS -->
    <script src="mystyle_phongban/js/main.js"></script>




</body>

</html>