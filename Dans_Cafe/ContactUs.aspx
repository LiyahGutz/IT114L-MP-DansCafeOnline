<%@ Page MasterPageFile="~/BasicMasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Dans_Cafe.ContactUs" %>

<asp:Content ID="ContactUs" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="assets/css/contactUs.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <div class="contact-section">
        <div class="title">
            <h2>Contact Us</h2>
            <p class="msg" >Have any questions or feedback?
               Reach out to us here! Our dedicated team is ready to assist you with any inquiries, 
               support requests, or suggestions you may have. Your satisfaction is our priority, 
               and we're committed to providing you with the best experience possible. Feel free to 
               contact us via Facebook, Instagram, or TikTok. We look forward to hearing from you!</p>
        </div>
        <%--<form id="form1" runat="server">--%>
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
        <%--</form>--%>
    </div>
</asp:Content>
