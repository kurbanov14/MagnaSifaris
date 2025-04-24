<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pencere2.aspx.cs" Inherits="MagnaSifaris.pencere2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Borutest Sayfası</title>
    <style>
     body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f2f5;
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: flex-start;
        padding: 40px;
        gap: 30px;
    }

    .image-box {
        width: 600px;
        height: 600px;
        object-fit: cover;
        border-radius: 12px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    .info {
        max-width: 400px;
        background: #ffffff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.08);
    }

    .info h2 {
        margin-bottom: 10px;
        font-size: 24px;
        color: #333;
    }

    .info p {
        font-size: 14px;
        color: #666;
    }

    .color-selector {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        margin: 20px 0;
    }

    .color-circle {
        width: 36px;
        height: 36px;
        border-radius: 50%;
        cursor: pointer;
        border: 2px solid #ddd;
        transition: transform 0.2s ease, border-color 0.2s ease;
    }

    .color-circle:hover {
        transform: scale(1.1);
        border-color: #007acc;
    }

    .inputs {
        display: flex;
        flex-direction: column;
        gap: 12px;
        margin-bottom: 20px;
    }

    .inputs input[type="text"] {
        padding: 10px 12px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
        transition: border-color 0.2s;
    }

    .inputs input[type="text"]:focus {
        border-color: #007acc;
        outline: none;
    }

    .inputs .aspNetDisabled {
        background-color: #f5f5f5;
    }

    .inputs br {
        display: none;
    }

       .btn {
    width: 200px;
    padding: 12px;
    font-size: 16px;
    font-weight: 500;
    text-align: center;
    background-color: transparent;
    border: 2px solid #007acc;
    color: #007acc;
    border-radius: 30px;
    cursor: pointer;
    transition: all 0.3s ease;
    outline: none;
}

    .btn:hover {
        background-color: #005fa3;
        color:white;
    }

    .result {
        margin-top: 40px;
        font-size: 18px;
        font-weight: 600;
        color: #2b2b2b;
    }

    input[type="radio"] {
        margin-right: 6px;
        cursor: pointer;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-size: 14px;
        color: #333;
    }

    /* Add the position for the confirmation button */
    .confirmation-container {
        display: flex;
        justify-content: center;
        margin-top: 30px;
    }

    .confirmation-message {
        text-align: center;
        font-size: 18px;
        font-weight: bold;
        color: #007acc;
        display: none; /* Hidden by default */
    }

    .radio-group {
    display: flex;
    gap: 20px;
    margin-top: 10px;
}

.custom-radio {
    display: flex;
    align-items: center;
    gap: 8px;
    font-size: 14px;
    color: #333;
    cursor: pointer;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-radius: 6px;
    transition: border-color 0.2s ease, background-color 0.2s ease;
}

.custom-radio:hover {
    border-color: #007acc;
    background-color: #f5faff;
}

.radio-btn input[type="radio"] {
    margin-right: 6px;
    cursor: pointer;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <a href="sifaristest.aspx" style="position: absolute; top: 20px; left: 20px; background-color: #007acc; color: white; padding: 8px 14px; border-radius: 6px; text-decoration: none; font-weight: 500;">← Geri</a>

            <asp:Image ID="ImageSelected" runat="server" CssClass="image-box" />

            <div class="info">
               <h2>2 şüşəli model</h2>
                <p>Ölçülərə görə qiymət hesablayın.</p>

                <!-- 7 Yuvarlak Renk Seçimi -->
                <div class="color-selector">
                    <div class="color-circle" style="background-color: red;" onclick="selectColor('red')"></div>
                    <div class="color-circle" style="background-color: blue;" onclick="selectColor('blue')"></div>
                    <div class="color-circle" style="background-color: green;" onclick="selectColor('green')"></div>
                    <div class="color-circle" style="background-color: yellow;" onclick="selectColor('yellow')"></div>
                    <div class="color-circle" style="background-color: orange;" onclick="selectColor('orange')"></div>
                    <div class="color-circle" style="background-color: purple;" onclick="selectColor('purple')"></div>
                    <div class="color-circle" style="background-color: pink;" onclick="selectColor('pink')"></div>
                </div>

                     <div class="result">
                         <asp:Label ID="lblSelectedColor" runat="server" Text="Seçilen Renk: " />
                     </div>

                <!-- 3 Adet TextBox -->
                <div class="inputs">
                  <!-- En Seçimi Başlığı -->
                    <label for="rb2" style="display:block; font-weight:bold; margin-bottom:5px;">Qalınlığı seçin:</label>

                    <!-- RadioButton Seçenekleri - yan yana hizalı -->
                    <div style="display:flex; gap:15px; margin-bottom:10px;">
                        <label>
                            <asp:RadioButton ID="rb2" runat="server" GroupName="enSecim" />
                            2 sm
                        </label>
                        <label>
                            <asp:RadioButton ID="rb4" runat="server" GroupName="enSecim" />
                            4 sm
                        </label>
                        <label>
                            <asp:RadioButton ID="rb6" runat="server" GroupName="enSecim" />
                            6 sm
                        </label>
                    </div>

                    <!-- Diğer inputlar -->
                    <input type="text" id="txtLength" placeholder="Uzunluk (cm)" runat="server" />
                    <input type="text" id="txtHeight" placeholder="Hündürlük (cm)" runat="server" />

                      <asp:TextBox ID="txtSpecialPrice" placeholder="Pəncərə sayını qeyd edin" runat="server"></asp:TextBox>


                   <br />
                 <div class="radio-group">
    <label class="custom-radio">
        <asp:RadioButton ID="rb1qat" runat="server" GroupName="secim" CssClass="radio-btn" />
        <span>1 Qat Suse</span>
    </label>
    <label class="custom-radio">
        <asp:RadioButton ID="rb2qat" runat="server" GroupName="secim" CssClass="radio-btn" />
        <span>2 Qat Suse</span>
    </label>
</div>
                    
                    <!-- HiddenField for color -->
                    <asp:HiddenField ID="hfColor" runat="server" />
                    
                    <!-- HiddenField for option selection -->
                    <asp:HiddenField ID="hfOption" runat="server" />

                </div>

                <!-- Hesapla Butonu -->
                <asp:Button ID="btnCalculate" runat="server" Text="Hesabla" CssClass="btn" OnClick="btnCalculate_Click" />
            </div>
            <div class="result">
    <asp:Label ID="lblResult" runat="server" Text="Toplam Qiymət: 0" />
</div>
        </div>

        <!-- Confirmation Button outside the container -->
      <div class="confirmation-container">
    <asp:Button ID="btnConfirm" runat="server" Text="Sifaris Et" CssClass="btn" OnClientClick="showOrderMessage(); return false;" />
</div>

        <!-- Confirmation Message -->
        <div class="confirmation-message" id="confirmationMessage">
            Əgər sifariş etmək istəyirsinizsə +994 (55) 226-31-21 nömrəsinə zəng vurub sifarişinizi verə bilərsiniz.
        </div>
        
    </form>

  <script type="text/javascript">
      function selectColor(color) {
          // HiddenField'e seçilen rengi yazıyoruz
          document.getElementById('<%= hfColor.ClientID %>').value = color;


        // Seçilen rengi label'da gösteriyoruz
        document.getElementById('<%= lblSelectedColor.ClientID %>').innerText = 'Seçilen Renk: ' + color;
}

function showOrderMessage() {
    // Confirmation mesajını gösteriyoruz
    document.getElementById('confirmationMessage').style.display = 'block';
}

window.onload = function() {
    // Sayfa her yüklendiğinde HiddenField'teki rengi alıp label'a yansıtıyoruz
    var color = document.getElementById('<%= hfColor.ClientID %>').value;
    if (color) {
        document.getElementById('<%= lblSelectedColor.ClientID %>').innerText = 'Seçilen Renk: ' + color;
          }
      }
  </script>
</body>
</html>
