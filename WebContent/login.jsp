<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<style>
        /* Style all input fields */
        
        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
        }
        /* Style the submit button */
        
        input {
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        
        input:hover {
            box-shadow: 0 0 7px 7px yellow;
        }
        
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
        }
        /* Style the container for inputs */
        
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        
        img {
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 5px;
            width: 150px;
            margin-top: 10%;
        }
        
        img:hover {
            box-shadow: 0 0 7px 7px yellow;
        }
        /* The message box is shown when the user clicks on the password field */
        
        #message {
            display: none;
            background: #f1f1f1;
            color: #000;
            position: relative;
            padding: 20px;
            margin-top: 10px;
        }
        
        #message p {
            padding: 10px 35px;
            font-size: 18px;
        }
        /* Add a green text color and a checkmark when the requirements are right */
        
        .valid {
            color: green;
        }
        
        .valid:before {
            position: relative;
            left: -35px;
            content: "✔";
        }
        /* Add a red text color and an "x" when the requirements are wrong */
        
        .invalid {
            color: red;
        }
        
        .invalid:before {
            position: relative;
            left: -35px;
            content: "✖";
        }
        
        body {
            margin-left: 24%;
        }
        /**/
        
        body {
            font-family: "Lato", sans-serif;
        }
        
        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }
        
        .sidenav a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        
        .sidenav a:hover {
            color: #f1f1f1;
        }
        
        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
        
        #main {
            transition: margin-left .5s;
            padding: 16px;
        }
        
        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }
            .sidenav a {
                font-size: 18px;
            }
        }
    </style>
</head>

<body>

    <form action="/Web_QuanLyBienChung/check-login" method="post">
        <div style=" width: 70% ;background-color:bisque;height: 590px">
            <div style=" width: 70%;   margin-left: 15%;">
                <div class="imgcontainer">
                    <img src="https://mindspark-ei.s3.amazonaws.com/Login_Image/loginHomeAlternate1.jpg" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <form action="/Web_QuanLyBienChung/check-login" method="post">
                        <label for="usrname">Username</label>
                        <input type="text" id="usrname" name="user" required>

                        <label for="psw">Password</label>
                        <input type="password" id="psw" name="pass"  >

                        <input type="submit" value="Submit">
                    </form>
                </div>

                
            </div>
        </div>
    </form>
    <!------------------------>





</body>

</html>