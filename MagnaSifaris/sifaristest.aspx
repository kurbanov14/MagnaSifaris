<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sifaristest.aspx.cs" Inherits="MagnaSifaris.sifaristest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>Sifaris Test</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Açıq boz */
        }

        /* --- Loading ekranı --- */
        #loadingScreen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #B92627;
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

        /* Butonların ümumi tərtibatı */
        .btn {
            margin-top: 8px;
            width: 200px; /* Kiçik ölçü */
            padding: 10px;
            font-size: 14px; /* Daha kiçik şrift */
            font-weight: bold;
            cursor: pointer;
            background-color: #dc3545; /* Kırmızı əsas fon rəngi */
            color: white; /* Beyaz yazı rəngi */
            border: none;
            border-radius: 4px; /* Küncləri yuvarlaqlaşdırılmış */
            transition: all 0.3s ease; /* Hamısı üçün yumşaq keçid */
            text-align: center;
        }

        /* Hover vəziyyətində butonun dəyişməsi */
        .btn:hover {
            background-color: #c82333; /* Hover zamanı tünd qırmızı fon rəngi */
            transform: scale(1.05); /* Hover zamanı böyümə effekti */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Kölgə effekti */
            color: #f8f9fa; /* Hoverda yazı rəngi dəyişir */
        }

        /* Aktiv halda buton */
        .btn:active {
            background-color: #bd2130; /* Tıklanmış halda daha tünd qırmızı */
            transform: scale(1); /* Tıklanmış halda böyümə effekti sıfırlanır */
        }

        footer {
            width: 100%;
            background-color: #f8f9fa; /* Açıq gri arka plan */
            padding: 20px 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border:1px solid;
            border-color:lightgray;
        }

        .footer_top {
            width: 100%;
            padding: 10px 0;
            height:100px;
        }

        .footer_logo_box img {
            width: 150px;
            height: auto;
            margin-top:50px;
            margin-left:150px;
        }

        .footer_text {
            font-size: 14px;
            color: #333;
        }

        .footer_hotline {
            font-size: 14px;
            text-align: right;
        }

        .ul_social {
            list-style: none;
            display: flex;
            padding: 0;
            margin-top: 10px;
        }

        .ul_social li {
            margin-right: 10px;
        }

        .ul_social a {
            font-size: 38px;
            color: #333;
            text-decoration: none;
        }

        .ul_social a:hover {
            color: #007acc;
        }

        .site_by {
            font-size: 18px;
            color: #666;
            margin-top: 10px;
            text-decoration: none;
        }

        .site_by img {
            width: 80px;
            margin-left: 5px;
        }

        .footer_bottom {
            display: flex;
            justify-content: center; /* Yatayda ortalanma */
            align-items: center; /* Şaquli olaraq ortalanma */
            width: 100%; /* Footer'in enini tam doldurmasını sağlar */
            margin-top: 34px;
        }

        .footer_bottom {
            display: flex;
            flex-wrap: nowrap;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
        }

        .footer_bottom span {
            flex: 1;
            height: 20px;
        }

        /* Navbar stilini əlavə edirik */
        #navbar {
            height: 30px;
            background-color: #B92627;        
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #navbarLabel {
            color: white;
            font-size: 16px;
            font-weight: bold;
        }

        @media (max-width: 991px) {
            .image-row {
                flex-direction: column;
                align-items: center;
            }

            .image-container {
                width: 100%;
                max-width: 300px;
            }

            .btn {
                width: 100%;
                font-size: 13px;
            }

            .footer_top .row {
                flex-direction: column;
                align-items: center;
            }

            .footer_logo_box {
                justify-content: center !important;
                margin-bottom: 15px;
            }

            .footer_text,
            .footer_hotline {
                text-align: center;
                margin-top: 10px;
            }

            .ul_social {
                justify-content: center;
            }

            .footer_logo_box img {
                margin: 0 auto;
            }

            .footer_bottom {
                flex-wrap: wrap;
                gap: 5px;
            }

            #logoText {
                font-size: 40px;
                text-align: center;
            }

            #navbarLabel {
                font-size: 14px;
                text-align: center;
            }
        }

        @media (max-width: 576px) {
            .image-box {
                width: 100%;
                height: auto;
            }

            .footer_text span {
                font-size: 12px;
            }

            .ul_social a {
                font-size: 28px;
            }
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
            }, 400);
        });
    </script>
</head>
<body>
    <!-- Loading ekranı -->
    <div id="loadingScreen">
        <div id="logoText">MAGNA</div>
    </div>

    <div id="navbar">
        <label id="navbarLabel">Güvənli, gözəl, keyfiyyətli – Magna ilə yeni bir həyat!</label>
    </div>

    <!-- Gerçek sayfa -->
    <div id="mainContent">
        <form id="form1" runat="server">
            <div class="image-row">
                <div class="image-container">
                    <asp:Image ID="Image1" runat="server" CssClass="image-box" ImageUrl="~/Foto/pencereag1.png" />
                    <asp:Button ID="Button1" runat="server" Text="Hesabla" CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image2" runat="server" CssClass="image-box" ImageUrl="~/Foto/ag1.png" />
                    <asp:Button ID="Button2" runat="server" Text="Hesabla" CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image4" runat="server" CssClass="image-box" ImageUrl="/Foto/tek2.jpg" />
                    <asp:Button ID="Button4" runat="server" Text="Hesabla" CssClass="btn" />
                </div>
            </div>

            <div class="image-row">
                <div class="image-container">
                    <asp:Image ID="Image3" runat="server" CssClass="image-box" ImageUrl="~/Foto/penc.png" />
                    <asp:Button ID="Button3" runat="server" Text="Hesabla" CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image5" runat="server" CssClass="image-box" ImageUrl="~/Foto/pencere3-2teze.png" />
                    <asp:Button ID="Button5" runat="server" Text="Hesabla" CssClass="btn" />
                </div>
                <div class="image-container">
                    <asp:Image ID="Image6" runat="server" CssClass="image-box" ImageUrl="~/Foto/qapiag.png" />
                    <asp:Button ID="Button6" runat="server" Text="Hesabla" CssClass="btn" />
                </div>
            </div>
        </form>

        <footer>
            <div class="footer_top container_custom">
                <div class="row flexBetween footer_top_row">
                    <div class="col-6 col-lg-3 p-0 footer_logo_box align-items-start justify-content-center">
                        <img class="footer_logo" src="/Foto/magnalogofooter.png" alt=""/>
                    </div>
                    <div class="col-7 col-lg-4 footer_text">
                        <p><strong><h4>Magna</h4></strong></p>
                        <span>
                            Azərbaycan 20 küçəsi, AZ7000, Naxçıvan, Azərbaycan<br>
                            Теl:
                            <a href="Tel: +994365441315">+994365441315</a>
                        </span>
                    </div>
                    <div class="col-5 col-lg-3 footer_hotline">
                        <ul class="ul_social">
                            <li>
                                <a href="https://www.youtube.com/channel/UCJX8DBJk2rPwHfH6SwNPgkw">
                                    <i class="fa-brands fa-youtube" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.facebook.com/magna.az"><i class="fa-brands fa-facebook-f" aria-hidden="true"></i></a>
                            </li>
                            <li>
                                <a class="me-0" href="https://www.instagram.com/magna.az/">
                                    <i class="fa-brands fa-instagram" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-6 col-lg-2 p-0 footer_logo_box d-flex align-items-end justify-content-end">
                        <img class="footer_logo_cahan footer_logo" src="/Foto/cahanlogo1.png" style="width: 120px; height: auto; margin-right:100px; margin-top:20px" alt=""/>
                    </div>
                </div>
            </div>
            <a href="" class="site_by container_custom">Site by<img src="http://www.magna.az/assets/img/icons/element_red.svg" alt="" style="font-size:18px;">Cahan</a>

            <div class="footer_bottom flexBetween">
                <span class="color_1"></span>
                <span class="color_2"></span>
                <span class="color_3"></span>
                <span class="color_4"></span>
                <span class="color_5"></span>
            </div>
        </footer>
    </div>
</body>
</html>
