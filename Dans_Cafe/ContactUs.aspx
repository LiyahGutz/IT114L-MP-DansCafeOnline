<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Dans_Cafe.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--links--%>
    
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
</head>
<body>
    <style>
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        .contact-section {
            text-align: center;
            padding: 50px 0;
        }

        .title {
            margin-bottom: 30px;
        }

            .title h2 {
                font-size: 42px;
                color: #333;
            }

            .title p {
                margin: 0 auto;
                max-width: 800px;
                line-height: 1.5;
                text-align: justify;
                color: #666;
            }

        .contactUs {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
        }

        .card {
            width: 250px;
            margin: 0 20px;
            padding: 20px;
            border-radius: 10px;
            background-color: #F1E2D2;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease;
        }

            .card:hover {
                transform: translateY(-5px);
            }

            .card .icon {
                font-size: 35px;
                margin-bottom: 10px;
                color: #2E1308;
            }

            .card h4 {
                font-size: 18px;
                margin-bottom: 10px;
                color: #333;
            }

            .card .btn{
                background-color: #2E1308;
                color: #fff;
                border: none;
                padding: 10px 40px;
                border-radius: 8px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                font-size: 20px;
            }

                .card .btn:hover {
                    background-color: #B19470;
                }

                @media only screen and (max-width: 768px) {
                    .contactUs {
                        flex-direction: column;
                    }
            
                    .card {
                        width: 250px;
                        margin: 0 20px 20px 20px;
                    }
                    .msg{
                        padding-right:20px;
                        padding-left:20px;
                    }
                }

    </style>

    <div class="contact-section">
        <div class="title">
            <h2>Contact Us</h2>
            <p class="msg" >Have any questions or feedback?
               Reach out to us here! Our dedicated team is ready to assist you with any inquiries, 
               support requests, or suggestions you may have. Your satisfaction is our priority, 
               and we're committed to providing you with the best experience possible. Feel free to 
               contact us via Facebook, Instagram, or TikTok. We look forward to hearing from you!</p>
        </div>
        <form id="form1" runat="server">
            <div class="contactUs">
                <div class="card">
                    <div class="icon">
                        <i class="fa-brands fa-square-facebook"></i>
                        </div>
                    <h4>Facebook</h4>
                    <asp:Button class="btn" runat="server" Text="Visit" OnClientClick="window.location.href='https://www.facebook.com/'; return false;"/>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-brands fa-square-instagram"></i>
                    </div>
                    <h4>Instagram</h4>
                    <asp:Button class="btn" runat="server" Text="Visit" OnClientClick="window.location.href='https://www.instagram.com/'; return false;"/>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-brands fa-tiktok"></i>
                    </div>
                    <h4>TikTok</h4>
                    <asp:Button class="btn" runat="server" Text="Visit" OnClientClick="window.location.href='https://www.tiktok.com/@dans.cafe'; return false;"/>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
