<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Project1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body,
        input,
        textarea {
            font-family: 'Times New Roman', Times, serif;
        }

        /* body{
            overflow-y: scroll;
        } */

        .container {
            position: relative;
            width: 100%;
            min-height: 100vh;
            padding: 2rem;
            background-color: rgb(255, 255, 230);
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .form {
            width: 100%;
            max-width: 900px;
            height: 700px;
            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.3);
            /* z-index: 1000; */
            overflow: hidden;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
        }

        .contact-data {
            background-color: rgb(197, 231, 212);
        }

        .contact-form {
            background-color: #1abc9a;
            position: relative;
        }

        .circle {
            width: 100px;
            height: 100px;
            border-radius: 60px;
            position: absolute;
            background: linear-gradient(135deg, transparent 20%, #149279);
        }

        .circle.one {
            width: 130px;
            height: 130px;
            top: 130px;
            right: -10px;
        }

        .circle.two {
            width: 80px;
            height: 80px;
            top: 40px;
            right: -30px;
        }

        .circle.three {
            width: 150px;
            height: 160px;
            top: 295px;
            right: -10px;
        }

       /* .contact-form:before {
            content: "";
            position: absolute;
            width: 26px;
            height: 27px;
            background-color: #1abc9a;
            transform: rotate(45deg);
            top: 50px;
            left: -13px;
        }*/

        form {
            padding: 2.3rem 2.2rem;
            z-index: 10;
            position: relative;
            overflow: hidden;
        }

        .title {
            color: #fff;
            font-weight: 800;
            font-size: 2.3rem;
            line-height: 2;
            margin-bottom: 0.5rem;
        }

        .input-container {
            position: relative;
            margin: 1rem 0;
        }

        label {
            display: none;
        }

        .input {
            width: 100%;
            outline: none;
            border: 2px solid #fafafa;
            border-radius: 10px;
            background: none;
            padding: 0.6rem 1rem;
            color: #fff;
            transition: 0.5s;
            font-size: 1.2rem;
            font-weight: 500;
            letter-spacing: 1px;
        }

        textarea.input {
            border-radius: 13px;
            padding: 00.5rem 1.2rem;
            overflow-y: auto;
            resize: none;
            min-height: 140px;
        }

        .input-container {
            top: 5%;
            left: 15px;
            z-index: 1000;
            transition: 0.3s;
            transform: translate(-10%);
            color: #fafafa;
            font-size: 0.9rem;
            font-weight: 600;
            padding: 0 0.4rem;
        }

        .input-container.textarea label {
            top: 1rem;
            transform: translateY(0);
        }

        .btn {
            padding: 00.6rem 1.3rem;
            margin-top: 30px;
            border-radius: 15px;
            /* outline: none; */
            line-height: 1;
            cursor: pointer;
            background-color: #fff;
            border: 2px solid #fafafa;
            font-size: 1.2rem;
            color: #1abc9a;
            transition: 0.5s;
        }

        .input-container span {
            font: size 0.9rem;
            position: absolute;
            padding: 0 0.6rem;
            top: 0;
            left: 35px;
            transform: translateY(-50%);
            color: #fff;
            background-color: #1abc9a;
            z-index: 500;
            pointer-events: none;
        }

        /* .input-container span::before,.input-container span::after{
                content: "";
                position: absolute;
                width: 10%;
                opacity: 0;
                transition: 0.4s;
                height: 5px;
                top: 50%;
                background-color:#1abc9a;
                transform: translateY(-65px);
            }
            .input-container span::before{
                left: 50%;
            }
            .input-container span::after{
                right: 50%;
            }
            .input-container.focus label{
                top: 0;
                transform: translateY(-50%);
                left: 24px;
                font-size: 0.9rem;
            } */


        .btn:hover {
            background-color: transparent;
            color: #fff;
            transform: scale(1.50);
        }

        .icon {
            width: 30px;
            padding-right: 9px;
        }

        .contact-data {
            padding: 2.2rem 2.3rem;
            position: relative;
        }

        .contact-data h2 {
            color: #10705b;
        }

        .text {
            color: rgb(37, 33, 33);
            margin: 1.5rem 0 2rem 0;
            font-size: 1.0rem;
        }

        .information {
            display: flex;
            margin: 1rem 0;
            color: rgb(37, 33, 33);
            align-items: center;
            font-size: 1.0rem;
        }

        .social-media {
            padding: 2rem 0 0 0;
        }

        .social-media p {
            color: rgb(37, 33, 33);
        }

        .social-icon {
            display: flex;
            margin-top: 0.5rem;
        }

        .social-icon a {
            width: 45px;
            height: 45px;
            border-radius: 5px;
            background: linear-gradient(45deg, #1abc9c, #0e3d33);
            color: #fff;
            text-align: center;
            line-height: 45px;
            margin-right: 0.7rem;
            transition: 0.3s;
        }

        .social-icon a:hover {
            transform: scale(1.50);
        }

        .alert {
            text-align: center;
            padding: 10px;
            background: #79c879;
            color: #fff;
            margin-bottom: 10px;
            display: none;
        }

        @media (max-width:850px) {
            .form {
                grid-template-columns: 1fr;
            }

            .contact-data:before {
                bottom: initial;
                top: -75px;
                right: 65px;
                transform: scale(0.95);
            }

            .contact-form:before {
                top: -13px;
                left: initial;
                right: 70px;
            }

            .text {
                margin: 1rem 0 1.5rem 0;
            }

            .social-media {
                padding: 1.5rem 0 0 0;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 1.5rem;
            }

            .contact-data:before {
                display: none;
            }

            form,
            .contact-info {
                padding: 1.7rem 1.6rem;
            }

            .text,
            .information,
            .social-media p {
                font-size: 0.8rem;
            }

            h2 {
                font-size: 1.15rem;
            }

            .social-icons a {
                width: 30px;
                height: 30px;
                line-height: 30px;
            }

            .icon {
                width: 23px;
            }

            .input {
                padding: 0.45rem 1.2rem;
            }

            .btn {
                padding: 0.45rem 1.2rem;
            }
        }
    </style>
    


    <title>ContactUs</title>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="container">
        <div class="form">
            <div class="contact-data">
                <h2>Let's Connect</h2>
                <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis ullam voluptate at
                    doloribus natus, cum quas recusandae temporibus optio earum quae nostrum placeat quia. Iusto omnis
                    enim illo reiciendis voluptatem.</p>
                <div class="info">
                    <div class="information">
                        <img src="images\location.jpg" class="icon" alt="located">
                        <p>12/24,KarolBag,Delhi India</p>
                    </div>
                    <div class="information">
                        <img src="images\email.png" class="icon" alt="located">
                        <p>helpIndia@bookcafe.com</p>
                    </div>
                    <div class="information">
                        <img src="images\phone.png" class="icon" alt="located">
                        <p>+91 5344486792</p>
                    </div>
                </div>

                <div class="social-media">
                    <p>Connect On :</p>
                    <div class="social-icon">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>

            </div>

            <div class="contact-form">
                <span class="circle one"></span>
                <span class="circle two"></span>
                <span class="circle three"></span>

                <form action=""  id="contactForm">
                    <h3 class="title">Contact Us</h3>
                    <div class="input-container ">
                        <input type="text " name="name" class="input" id="name" required>
                        <label for="">UserName</label>
                        <span>UserName</span>
                    </div>
                    <div class="input-container">
                        <input type="email" name="email" class="input" id="email" required>
                        <label for="">Email</label>
                        <span>Email</span>
                    </div>
                    <div class="input-container">
                        <input type="tel" name="phone" class="input" id="phone">
                        <label for="">Phone</label>
                        <span>Phone</span>
                    </div>
                    <div class="input-container">
                        <input type="text" name="subject" class="input" id="subject">
                        <label for="">Subject</label>
                        <span>Subject</span>
                    </div>
                    <div class="input-container textarea">
                        <textarea name="message" class="input" id="message"></textarea>
                        <label for="">Message Or Query</label>
                        <span>Message Or Query</span>
                    </div>
                    <input type="submit" value="Submit" class="btn">
                </form>
            </div>
        </div>
    </div>
        

        <h1 align="center"  style="background-color:#1abc9a">Locate Us </h1>
        <div>
          <center>  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3768.759680152293!2d72.95236701517665!3d19.161994054242587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b8f30097b92f%3A0x7047f743bbac49df!2sV.P.M&#39;s%20R.%20Z.%20Shah%20College%20Mulund!5e0!3m2!1sen!2sin!4v1634626468850!5m2!1sen!2sin" width="964" height="510" style="border:groove" allowfullscreen="true" loading="lazy"></iframe></center>
        </div>
    </form>
</body>
</html>
