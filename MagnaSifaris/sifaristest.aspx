<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sifaristest.aspx.cs" Inherits="MagnaSifaris.sifaristest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <title>Sifaris Test</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
            font-family: Arial;
        }

        /* --- Loading ekranı --- */
        #loadingScreen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
            transition: opacity 0.5s ease;
        }

        #logo {
            font-size: 30px;
            font-weight: bold;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); opacity: 0.7; }
            50% { transform: scale(1.1); opacity: 1; }
            100% { transform: scale(1); opacity: 0.7; }
        }

        /* Sayfa içeriği */
        #mainContent {
            display: none;
        }

        .image-row {
            display: flex;
            justify-content: center;
            margin: 10px 0;
        }

        .image-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 10px;
        }

        .image-box {
            width: 250px;
            height: 250px;
            border: 1px solid #ccc;
        }

        .btn {
            margin-top: 8px;
            width: 250px;
            padding: 8px;
            font-size: 14px;
            cursor: pointer;
            background-color: #007acc;
            color: white;
            border: none;
            border-radius: 4px;
        }

        .btn:hover {
            background-color: #005fa3;
        }

        #loadingScreen {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: red;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 9999;
    transition: opacity 0.5s ease;
}

#logoText {
    color: white;
    font-size: 60px;
    font-weight: bold;
    font-family: Arial, sans-serif;
    letter-spacing: 5px;
    animation: fadeInOut 1.5s infinite;
}

@keyframes fadeInOut {
    0% { opacity: 0.3; transform: scale(0.98); }
    50% { opacity: 1; transform: scale(1.05); }
    100% { opacity: 0.3; transform: scale(0.98); }
}

.footer {
    padding-top: 5px;
}

.footer_top {
    padding: 40px 0;
    background: #fff;
    color: #333;
    border-top: 1px solid #333;
}

.footer_logo_box {
    display: flex;
}

.footer_logo {
    max-width: 100%;
    height: auto;
}

.footer_text p {
    font-weight: bold;
    margin: 0 0 5px;
}

.footer_text span {
    font-size: 14px;
}

.footer_hotline {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.footer_hotline a.hot_line {
    color: red;
    font-weight: bold;
    text-decoration: none;
}

.ul_social {
    list-style: none;
    display: flex;
    gap: 10px;
    padding-left: 0;
    margin-top: 10px;
}

.ul_social li a {
    font-size: 18px;
    color: #333;
    transition: 0.3s;
}

.ul_social li a:hover {
    color: red;
}

.footer_bottom {
    display: flex;
    height: 30px;
    margin:0;
    margin-top: -5px;
}

.footer_bottom span {
    flex: 1;
}

.color_1 { background-color: #e53935; }
.color_2 { background-color: #d81b60; }
.color_3 { background-color: #8e24aa; }
.color_4 { background-color: #3949ab; }
.color_5 { background-color: #00897b; }

.site_by {
    display: flex;
    align-items: center;
    gap: 6px;
    font-size: 12px;
    margin: 10px auto;
    color: #999;
    text-decoration: none;
    justify-content: center;
}


    </style>

    <script>    

        window.addEventListener('load', function () {
            setTimeout(function () {
                document.getElementById('loadingScreen').style.opacity = '0';
                setTimeout(function () {
                    document.getElementById('loadingScreen').style.display = 'none';
                    document.getElementById('mainContent').style.display = 'block';
                }, 500);
            }, 3000);
        });
    </script>
</head>
<body>
   <!-- Loading ekranı -->
<div id="loadingScreen">
    <div id="logoText">MAGNA</div>
</div>

    <!-- Gerçek sayfa -->
    <div id="mainContent">
        <form id="form1" runat="server">
            <div class="image-row">
                <div class="image-container">
                    <asp:Image ID="Image1" runat="server" CssClass="image-box" ImageUrl="~/Foto/agpencere1.png" />
                    <asp:Button ID="Button1" runat="server" Text="Sifariş Et " CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image2" runat="server" CssClass="image-box" ImageUrl="~/Foto/ag1.png" />
                    <asp:Button ID="Button2" runat="server" Text="Sifariş Et " CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image4" runat="server" CssClass="image-box" ImageUrl="/Foto/tekpencere.jpg" />
                    <asp:Button ID="Button4" runat="server" Text="Sifariş Et " CssClass="btn" />
                </div>
            </div>

            <div class="image-row">
                <div class="image-container">
                    <asp:Image ID="Image3" runat="server" CssClass="image-box" ImageUrl="~/Foto/p3yeni.png" />
                    <asp:Button ID="Button3" runat="server" Text="Sifariş Et " CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image5" runat="server" CssClass="image-box" ImageUrl="~/Foto/3-2pencere.jpeg" />
                    <asp:Button ID="Button5" runat="server" Text="Sifariş Et " CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image6" runat="server" CssClass="image-box" ImageUrl="~/Foto/qapiag.png" />
                    <asp:Button ID="Button6" runat="server" Text="Sifariş Et " CssClass="btn" />
                </div>
            </div>
        </form>
    </div>

    <footer>
    <div class="footer_top container_custom">
        <div class="row flexBetween footer_top_row">
            <div class="col-6 col-lg-3 p-0 footer_logo_box align-items-start justify-content-center">
                <img class="footer_logo" src="http://www.magna.az/assets/img/icons/logo_red.png" alt="">
            </div>
            <div class="col-7 col-lg-4 footer_text">
                <p>Магна / завод</p>
                <span>
                    Ул. Азербайджана 20, AZ7000, Нахчыван, Азербайджан<br>
                    Тел.:
                    <a href="tel:+994365441315">+994365441315</a>
                </span>
            </div>
            <div class="col-5 col-lg-3 footer_hotline">
                <span class="footer_span">
                    Горячая линия &nbsp;
                    <a href="tel:*3444" class="hot_line">*3444</a>
                </span>
                <ul class="ul_social">
                    <li>
                        <a href="https://www.youtube.com/channel/UCJX8DBJk2rPwHfH6SwNPgkw">
                            <i class="fa-brands fa-youtube" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/magna.az">
                            <i class="fa-brands fa-facebook-f" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                        <a class="me-0" href="https://www.instagram.com/magna.az/">
                            <i class="fa-brands fa-instagram" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-6 col-lg-2 p-0 footer_logo_box align-items-end justify-content-center">
                <img class="footer_logo_cahan footer_logo" src="http://www.magna.az/assets/img/icons/cahan.png" alt="">
            </div>
        </div>
    </div>
    <a href="http://www.elementvs.com" class="site_by container_custom">
        Site by <img src="http://www.magna.az/assets/img/icons/element_red.svg" alt=""> CAHAN
    </a>
    <div class="footer_bottom flexBetween">
        <span class="color_1"></span>
        <span class="color_2"></span>
        <span class="color_3"></span>
        <span class="color_4"></span>
        <span class="color_5"></span>
    </div>
</footer>

</body>
</html>
