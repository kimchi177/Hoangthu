<%@page import="java.util.List"%>
<%@page import="Model.PhongBanModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="UTF-8">
    <title>Trang Chủ</title>
    <link rel="stylesheet" href="mystyle_trangchu/css/font-awesome/css/font-awesome.min.css" />

    <link rel="stylesheet" href="mystyle_trangchu/css/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/linearicons.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/iconmoon.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/animat/animate.min.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/fancybox/jquery.fancybox.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/nivo-lightbox/nivo-lightbox.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/themes/default/default.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/owl-carousel/owl.carousel.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/owl-carousel/owl.theme.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/owl-carousel/owl.transitions.css">

    <link rel="stylesheet" href="mystyle_trangchu/css/style.css" />
    <link rel="stylesheet" href="mystyle_trangchu/css/responsive.css" />

    <!-- Modernizr JS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    .newspaper {
        -webkit-column-count: 3;
        /* Chrome, Safari, Opera */
        -moz-column-count: 3;
        /* Firefox */
        color: black;
        column-count: 3;
    }
    
    body {
        font-family: 'Lato', sans-serif;
    }
    
    .overlay {
        height: 0%;
        width: 100%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
        background-image: url(https://previews.123rf.com/images/usbfco/usbfco1210/usbfco121000031/15640017-snowflakes-background-with-shiny-lights-Stock-Photo.jpg);
        background-repeat: no-repeat;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        background-color: rgb(0, 256, 256);
        background-color: rgb(200, 200, 202);
        overflow-y: hidden;
        transition: 0.5s;
    }
    
    .overlay-content {
        position: relative;
        top: 25%;
        width: 100%;
        text-align: center;
        margin-top: 30px;
    }
    
    .overlay a {
        padding: 8px;
        text-decoration: none;
        font-size: 36px;
        color: #818181;
        display: block;
        transition: 0.3s;
    }
    
    .overlay a:hover,
    .overlay a:focus {
        color: #f1f1f1;
    }
    
    .overlay .closebtn {
        position: absolute;
        top: 20px;
        right: 45px;
        font-size: 60px;
    }
    
    @media screen and (max-height: 450px) {
        .overlay {
            overflow-y: auto;
        }
        .overlay a {
            font-size: 20px
        }
        .overlay .closebtn {
            font-size: 40px;
            top: 15px;
            right: 35px;
        }
    }
</style>

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
         	//response.sendRedirect("/Web_QuanLyBienChung/login.jsp");
         }
         %>

	<% 
		List<PhongBanModel> myList = (ArrayList<PhongBanModel>) request.getAttribute("danhsachphongban");


	%>
    <div class='preloader'>
        <div class='loaded'>&nbsp;</div>
    </div>
    <header id="home" class="header">
        <div class="main_menu_bg navbar-fixed-top">
            <div class="container">
                <div class="row">
                    <div class="nave_menu">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						  </button>
                                    <a class="navbar-brand" href="#home">
                                        <div class="logo">
                                            <!---<img src="images/logo.png" alt="" />-->
                                        </div>
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="color: black">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li style="color: black"><a href="#" onclick="openNav()">TRANG CHỦ</a>

                                        </li>
                                        <li><a href="#" onclick="openNav()">KHOA</a>

                                        </li>
                                        <li><a href="#" onclick="openNav()">PHONG BAN</a>

                                        </li>
                                        <li><a href="#" onclick="openNav()">TRUNG TÂM</a>

                                        </li>
                                        <li><a href="#">CÔNG TÁC XÃ HỘI</a></li>
                                        
                                        <%  
                                        	if(user == null || user.trim().equals(""))
                                        	{%>
                                        
                                        <li><a href="/Web_QuanLyBienChung/login.jsp">Login</a></li>
										<%
											}else
												{
											%>
											<li><a href="/Web_QuanLyBienChung/logout" style="color: red"><%=user%>--LogOut</a></li>
											<%} %>
                                    </ul>
                                </div>
                                <!-- /.navbar-collapse -->
                            </div>
                            <!-- /.container-fluid -->
                        </nav>
                    </div>
                </div>
                <!--End of row -->

            </div>
            <!--End of container -->

        </div>
    </header>
    <!--End of header -->
    <div id="myNav" class="overlay">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="overlay-content">
            <div class="newspaper">
                <h2>khoa</h2>
                <a href="#">Khoa công nghệ thông tin</a>
                <a href="#">Khoa khoa học ứng dụng</a>
                <a href="#">Khoa khoa học ứng dụng</a>
                <h2>Phòng ban</h2>
               <%
					for(PhongBanModel pb : myList)
					{
				%>
                <a href="/Web_QuanLyBienChung/phongdaotaocontroller?ID_PB=<%=pb.getId_phongban()%>&Ten_PB=<%=pb.getTenphongban() %>"><%=pb.getTenphongban() %></a>
                <% } %>
                <h2>Trung tâm</h2>
                <a href="#">Trung tâm...</a>
                <a href="#">Khoa khoa học ứng dụng</a>

            </div>
        </div>
    </div>
    <script>
        function openNav() {
            document.getElementById("myNav").style.height = "100%";
        }

        function closeNav() {
            document.getElementById("myNav").style.height = "0%";
        }
    </script>
    <!---->

    <section id="banner" class="banner">
        <div class="container">
            <div class="row">
                <div class="main_banner_area">
                    <div class="col-md-6 col-sm-6">
                        <div class="single_banner wow fadeIn w3-opacity-min w3-display-container">
                            <img src="mystyle_trangchu/images/iphone1.png" alt="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="single_banner_text wow zoomIn" data-wow-duration="1s">
                            <h1 style="font-size: 60px;">HCMUTE</h1>
                            <p style="color: black;font-size: 30px;">Trường đại học sư phạm kỹ thuật Thành Phố Hồ CHí Minh </p>

                            <div class="apps_downlod">
                                <!--<a href=""><img src="images/ap.png" alt="" /></a>

                                <a href=""><img src="images/ag.png" alt="" /></a><!-->
                            </div>
                        </div>
                    </div>


                    <div class="scrolldown">
                        <a href="#features" class="scroll_btn"></a>
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- End of Banner Section -->




    <section id="abouts" class="abouts">
        <div class="container">
            <div class="row">
                <div class="abouts_content">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="single_abouts_img text-center wow fadeInLeft" data-wow-duration="1s">
                            <img src="mystyle_trangchu/images/abouts.png" alt="" />
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="single_abouts_text wow fadeInRight" data-wow-duration="1s">
                            <h2>KẾ HOẠCH BẢO VỆ KHÓA LUẬN TỐT NGHIỆP SV TMĐT 2013 NĂM HỌC 2016-2017.</h2>
                            <p>Thời gian tổ chức: Từ ngày 12/06/2017 – 03/07/2017. Sinh viên lưu ý: Nộp 5 quyển báo cáo bìa mềm có chữ ký của Giảng viên Hướng dẫn và 05 đĩa CD. Sau khi ra Hội đồng bảo vệ thành công, sinh viên phải hoàn thành báo cáo trong
                                vòng 10 ngày (tính từ ngày ra bảo vệ); Sinh viên phải chỉnh sửa nội dung của quyển báo cáo theo yêu cầu của Hội đồng và có chữ ký của Giảng viên hướng dẫn trong 2 quyển báo cáo</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of Abouts Section -->




    <section id="features" class="features">
        <div class="container">
            <div class="row">
                <div class="main_features">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="single_features_text wow fadeIn" data-wow-duration="2s">
                            <h2>Bắt đầu chiến dịch Xuân tình nguyện 2017</h2>
                            <p>Trường ĐH Sư phạm Kỹ thuật Tp.HCM có gần 400 chiễn sĩ tham gia xuân tình nguyện trên các mặt trận Củ Chi, Thủ Đức, Quận 9, Thạnh Hóa (Long An) .Trong không khí háo hức đón chào năm mới – năm 2014, trường ĐH Sư phạm Kỹ thuật
                                Tp. HCM vinh dự đăng cai tổ chức Lễ ra quân chiến dịch Xuân tình nguyện lần thứ X – cụm hoạt động số 3 vào ngày 18/01/2017 tại trường.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="single_features_img wow fadeIn" data-wow-duration="2s">
                            <img src="mystyle_trangchu/images/features.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of Features Section -->



    <section id="works" class="works">
        <div class="container">
            <div class="row">
                <div class="main_works">

                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="single_works text-right wow fadeInLeft" data-wow-duration="2s">
                            <div class="single_works_deatels">
                                <i class="icon icon-puzzle"></i>
                                <h5>ngày hội của những người học tiếng Anh tại HCMUTE</h5>
                                <p> trong khu vực do Đoàn Thanh Niên - Hội Sinh viên trường và Khoa Ngoại ngữ phụ trách chính tổ ....</p>
                            </div>
                            <div class="single_works_deatels">
                                <i class="icon icon-files"></i>
                                <h5>CLB Tiếng Anh ESC </h5>
                                <p>sinh hoạt vào thứ 5 vào lúc 15h-17h tại phòng họp 5 Thứ 7 vào lúc 15h-17h bãi cỏ..</p>
                            </div>
                            <div class="single_works_deatels">
                                <i class="icon icon-star"></i>
                                <h5>Young Debate Championship</h5>
                                <p>sân chơi về TRANH LUẬN một cách chuyên nghiệp dành cho các bạn trẻ đến từ TP.HCM và Bình Dương
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="single_works_text_middel text-center wow fadeInDown" data-wow-duration="2s">
                            <img src="mystyle_trangchu/images/workiphone.png" alt="" />
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="single_works text-left wow fadeInRight" data-wow-duration="2s">
                            <div class="single_works_deatels">
                                <i class="icon icon-focus"></i>
                                <h5>LEAD THE CHANGE </h5>
                                <p>cuộc thi với quy mô toàn thành - hứa hẹn là một cuộc thi đánh dấu bước chuyển mình mạnh mẽ trong hành trình tìm kiếm - khẳng định</p>
                            </div>

                            <div class="single_works_deatels">
                                <i class="icon icon-brush2"></i>
                                <h5>Triangle English</h5>
                                <p>Câu lạc bộ tiếng anh của Triangle English ở Thủ Đức có gì ? Các bạn đã sẵn sàng “quẩy” cùng những giai điệu
                                </p>
                            </div>

                            <div class="single_works_deatels">
                                <i class="icon icon-flash-outline"></i>
                                <h5> TOEIC 4 KỸ NĂNG CHUẨN TIẾNG ANH ĐẦU RA 2017</h5>
                                <p>Nhằm trang bị cho các bạn sinh viên HCMUTE, đặc biệt là sinh viên năm nhất
                                </p>
                            </div>
                            <!-- End of single works deatels -->
                        </div>
                    </div>
                    <!-- End of col-md-4 -->
                </div>
                <!-- End of main Works -->
            </div>
            <!-- End of row -->
        </div>
        <!-- End of container -->
    </section>






    <!-- Video Section -->


    <section id="video" class="video_area wow fadeIn" data-wow-duration="2s" data-wow-dealy="1.5s">
        <div class="container">
            <div class="row">
                <div class="main_video_content text-center">
                    <div class="head_title">
                        <h2>Xuân sẻ chia và trải nghiệm tại HCMUTE</h2>
                        <p>rong không khí tất bật của những ngày cuối năm, Trung tâm dịch vụ sinh viên Trường Đại học Sư phạm Kỹ thuật TPHCM (HCMUTE) cùng các đơn vị hỗ trợ đã tổ chức chương trình “Xuân sẻ chia - Xuân trải nghiệm” trong ba ngày 10-12/1..</p>
                    </div>
                    <div class="col-md-12 col-sm-12">
                        <div class="icon_area">
                            <img src="mystyle_trangchu/images/a.png" alt="" />
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </section>



    <!-- Clients Section -->

    <section id="clients" class="clients wow fadeIn" data-wow-duration="3s">
        <div class="container">
            <div class="row">
                <div class="main_clients_content">
                    <div class="head_title text-center">
                        <h2>Ngày hội tuyển dụng Sư phạm kỹ thuật.</h2>
                    </div>
                    <div class="main_clients">
                        <div class="col-md-4">
                            <div class="single_clients">
                                <p>
                                    Là đơn vị có kinh nghiệm nhiều năm trong lĩnh vực giải pháp công nghệ thông tin, chúng tôi hân hạnh cung cấp đến quý khách hàng các dịch vụ
                                </p>
                                <div class="clients_details">
                                    <div class="clients_img">
                                        <img src="mystyle_trangchu/images/clients.png" alt="" />
                                    </div>
                                    <div class="clients_name">
                                        <p>Công ty VSIS .</span>
                                        </p>
                                        <p><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="single_clients">
                                <p>Một talkshow sắp được phát hành và sản xuất bởi JANETO và Trung Tâm Đào Tạo Lập Trình Viên JANETO với tên gọi DEVTALK. </p>
                                <div class="clients_details">
                                    <div class="clients_img">
                                        <img src="mystyle_trangchu/images/clients.png" alt="" />
                                    </div>
                                    <div class="clients_name">
                                        <p> công ty Janeto.</span>
                                        </p>
                                        <p><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="single_clients">
                                <p>Ltd tuyển dụng hàng trăm nhân sự với lương hấp dẫn, môi trường chuyên nghiệp, phúc lợi tốt. Tìm hiểu ngay tại VietnamWorks!. </p>
                                <div class="clients_details">
                                    <div class="clients_img">
                                        <img src="mystyle_trangchu/images/clients.png" alt="" />
                                    </div>
                                    <div class="clients_name">
                                        <p>Công ty SV PROBE VN .
                                            </span>
                                        </p>
                                        <p><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a><a href=""><i class="fa fa-star"></i></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Customize Section -->

    <section id="customiz" class="customiz wow fadeIn" data-wow-duration="2s">
        <div class="container">
            <div class="row">
                <div class="main_customiz">
                    <div class="col-md-6 col-md-offset-6 col-sm-9 col-sm-offset-3 col-xs-8 col-xs-offset-4">
                        <div class="single_customiz">
                            <h2>Nét đẹp sinh viên</h2>

                            <a href="">Load trang<i class="fa fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>






    <!---->

    <section id="joinus" class="joinus wow zoomIn">
        <div class="container">
            <div class="row">
                <div class="main_joine_content text-center">
                    <div class="head_title">
                        <h2>Thông tin </h2>
                        <p>Sáng ngày 22 tháng 5 năm 2017, Góc sẻ chia UTE – Trường Đại học Sư phạm Kỹ thuật Thành phố Hồ Chí Minh đã chính thức khai trương tại tầng hầm tòa nhà trung tâm.Tham dự buổi lễ có PGS.TS Đỗ Văn Dũng - Hiệu trưởng nhà trường , PGS.TS
                            Lê Hiếu Giang, Phó hiệu trưởng nhà trường, TS. Ngô Văn Thuyên – Phó hiệu trưởng nhà trường</p>
                    </div>
                    <div class="main_joinus">
                        <a href=""><i class="fa fa-bicycle"></i>Noel</a>
                        <a href=""><i class="fa fa-linux"></i>Tết nguyên đán</a>
                        <a href=""><i class="fa fa-github-alt"></i>Tết Ta</a>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <!---->



    <!-- footer Section -->

    <footer id="footer" class="footer">
        <div class="container">
            <div class="row wow zoomIn" data-wow-duration="2s">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="single_footer">
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                                <button type="submit" class="submit_btn">Submit</button>
                            </div>

                        </form>
                        <p>Copyright © 2014. Trường Đại Học Sư Phạm Kỹ Thuật - TPHCM Địa chỉ: 1 Võ Văn Ngân, Quận Thủ Đức, Thành Phố Hồ Chí Minh.</p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="single_footer text-right">
                        <div class="footer_menu">
                            <p>Điện thoại: (+84.8) 38960987. E-mail: itc@hcmute.edu.vn.</p>
                        </div>

                        <div class="footer_socail">
                            <a href=""><i class="fa fa-facebook"></i></a>
                            <a href=""><i class="fa fa-twitter"></i></a>
                            <a href=""><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>



    <!-- STRAT SCROLL TO TOP -->

    <div class="scrollup">
        <a href="#"><i class="fa fa-chevron-up"></i></a>
    </div>






    <script type="text/javascript" src="mystyle_trangchu/js/jquery/jquery.js"></script>

    <script type="text/javascript" src="mystyle_trangchu/js/script.js"></script>

    <script type="text/javascript" src="mystyle_trangchu/js/bootstrap/bootstrap.min.js"></script>

    <script type="text/javascript" src="mystyle_trangchu/js/fancybox/jquery.fancybox.pack.js"></script>

    <script type="text/javascript" src="mystyle_trangchu/js/nivo-lightbox/nivo-lightbox.min.js"></script>

    <script type="text/javascript" src="mystyle_trangchu/js/owl-carousel/owl.carousel.min.js"></script>



    <script type="text/javascript" src="mystyle_trangchu/js/jquery-easing/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="mystyle_trangchu/js/wow/wow.min.js"></script>
</body>

</html>