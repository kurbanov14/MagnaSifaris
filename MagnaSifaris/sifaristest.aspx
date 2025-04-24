<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sifaristest.aspx.cs" Inherits="MagnaSifaris.sifaristest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sifaris Test</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            background-color: #f8f8f8;
            font-family: Arial;
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
    </style>
</head>
<body>
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
</body>
</html>
