<%@ Page MasterPageFile="~/BasicMasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Dans_Cafe.Home" %>

<asp:Content ID="Home" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url(Properties/coffee_wall.jpg);
            background-size: 100%;
            background-position: top;
            height: 50%;
            background-repeat: no-repeat;
        }

        .contain {
            margin-left: 200px;
            margin-top: 150px;
            width: 300px;
        }

        

        .intro {
            font-family: Calibri;
            color: white;
            font-size: 30px;
            font-weight: lighter;
        }

        .welcome {
            font-family: Garamond;
            color: white;
            font-size: 60px;
            font-weight: 200;
        }

        .grid-container {
            display: inline-grid;
            /*background-color: coral;*/
            grid-template-columns: auto auto;
            padding: 10px;
            margin-top: 500px;
            gap: 100px;
            margin-left: 13%;
            /*margin-right: 10%;*/
            /*margin-left: auto;*/
            /*margin-right: auto;*/
            margin-bottom: 8%;
            
        }

        .square {
            width: 500px;
            background-color: rgb(56, 27, 13);
            display: grid;
            grid-column: 0;
            align-items: center;
        }

        .desc {
            text-align: center;
            padding: 15px;
            padding-top: 15px;
            color: white;
            font-size: 25px;
            font-family: Garamond;
            margin-bottom: -10px;
        }

        #buttons, #buttons2 {
            border-radius: 15px;
            background-color: rgb(56, 27, 13);
            border: 2px solid white;
            color: white;
            font-family: Calibri;
            cursor: pointer;
            font-size: 20px;
            width: 200px;
            font-weight: lighter;
            transition: all 0.5s;
            margin-left: 150px;
            margin-bottom: 30px;
        }

        /*#button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }*/

        #buttons:after, #buttons2:after {
            content: '\00bb';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        #buttons:hover, #buttons2:hover {
            padding-right: 25px;
        }

        #buttons:hover:after, #buttons2:hover:after {
            opacity: 1;
            right: 0;
        }

        footer {
            background-color: white;
            border-top: 0.5px solid gray;
        }
        h3 {
            font-family: Calibri;
            margin-left: 40px;
        }
        .list {
            font-family: Calibri;
            list-style: none;
        }
        .infooter {
            color: black;
            display: inline-grid;
            grid-template-columns: auto auto auto auto;
        }
        .foot-square {
            grid-column: 0;
            padding: 25px;
            padding-left: 50px;
        }
        li {
            margin-bottom: 8px;
        }

        
        @media screen and (max-width: 900px) {
            body {
                background-size: 900px, auto;
                height: 1600px;
            }

            .contain {
                margin: 0 auto;
                width: 80%;
                text-align: center;
            }

            .image img {
                margin: 0 auto;
                display: block;
                position: center;
                height: 50px;
            }

            .welcome {
                font-size: 50px;
            }

            .grid-container {
                grid-template-columns: auto;
                margin-left: auto;
                padding: 0 auto;
            }
            
            .square {
                width: auto;
            }


            .infooter {
                grid-template-columns: auto;
                margin: 0 auto;
            }

            #buttons, #buttons2 {
                margin: 0 auto;
                display: block;
                margin-bottom: 30px;
            }
        }
    </style>
    <%--<form id="homepage" runat="server">--%>
        <div class="contain">
            <p class="welcome">WELCOME TO DAN'S CAFE<%=Session["username"] %>!</p>
            <p class="intro">Indulge in the cozy place with quality foods and drinks here! Experience our fresh coffee</p>
        </div>
   
        <div class="grid-container">
            <div class="square">
                <img src="Properties/latte.png" style="width: 100%" />
                <div class="desc">
                    DRINK NOW!
                </div>
                <p style="color: white; text-align: center;">With our freshly brewed coffee, and you can choose any blends you like</p>
                <%--<button class="button"><span>TAKE A SIP</span></button>--%>
                <asp:Button ID="buttons"  runat="server" Text="TAKE A SIP" OnClick="TakeASip_Click" />
            </div>
            <div class="square">
                <img src="Properties/pastries.png" style="width: 100%" />
                <div class="desc">
                    BON APPETIT!
                </div>
                <p style="color: white; text-align: center;">Try our most delectable pastries fresh for your taste</p>
                <%--<button class="button"><span>TAKE A BITE</span></button>--%>
                <asp:Button ID="buttons2" Text="TAKE A BITE" runat="server"/>
            </div>
        </div>
        <footer>
            <div class="infooter">
                <div class="foot-square">
                    <h3 class="links">About Us</h3>
                    <ul class="list">
                        <li>Our Company</li>
                        <li>Stories and News</li>
                        <li>Customer Service</li>
                        <li>Careers</li>
                    </ul>
                </div>
        
                <div class="foot-square">
                    <h3 class="links">Order Online</h3>
                    <ul class="list">
                        <li>Order on the Web App</li>
                        <li>Delivery</li>
                        <li>Send eGifts</li>
                        <li>Grab Partnership</li>
                    </ul>
                </div>

                <div class="foot-square">
                    <h3 class="links">Rewards</h3>
                    <ul class="list">
                        <li>My Account</li>
                        <li>View Transactions</li>
                        <li>Reload</li>
                        <li>FAQs</li>
                    </ul>
                </div>

                
            </div>
    
        </footer>

    <%--</form>--%>
</asp:Content>

