<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pencere4.aspx.cs" Inherits="MagnaSifaris.pencere4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Borutest Sayfası</title>
    <style>
   body {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(to right, #eef2f3, #ffffff);
}

.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: flex-start;
    padding: 60px 20px;
    gap: 40px;
}

.image-box {
    width: 600px;
    height: 600px;
    object-fit: cover;
    border-radius: 20px;
    box-shadow: 0 14px 28px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
}
.image-box:hover {
    transform: scale(1.01);
}

.info {
    max-width: 400px;
    background: rgba(255, 255, 255, 0.95);
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.07);
}

.info h2 {
    margin-bottom: 15px;
    font-size: 26px;
    color: #222;
}

.info p {
    font-size: 15px;
    color: #555;
}

.color-selector {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
    margin: 20px 0;
}

.color-circle {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    cursor: pointer;
    border: 2px solid #ddd;
    transition: transform 0.2s ease, border-color 0.2s ease;
}
.color-circle:hover {
    transform: scale(1.1);
    border-color: #00aaff;
}

.inputs {
    display: flex;
    flex-direction: column;
    gap: 14px;
    margin-bottom: 20px;
}
.inputs input[type="text"],
.inputs .aspNetDisabled {
    padding: 12px 14px;
    border: 1px solid #ccc;
    border-radius: 10px;
    font-size: 15px;
    transition: all 0.2s ease;
}
.inputs input[type="text"]:focus {
    border-color: #00aaff;
    outline: none;
}

.btn {
    width: 50%;
    padding: 14px;
    font-size: 16px;
    font-weight: 600;
    text-align: center;
    background-color: #00aaff;
    border: none;
    color: white;
    border-radius: 30px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
.btn:hover {
    background-color: #008ecc;
}

.radio-group {
    display: flex;
    gap: 15px;
    margin-top: 12px;
}
.custom-radio {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 15px;
    color: #333;
    cursor: pointer;
    padding: 8px 16px;
    border: 1px solid #ccc;
    border-radius: 10px;
    transition: all 0.2s ease;
}
.custom-radio:hover {
    border-color: #00aaff;
    background-color: #f0fbff;
}

.confirmation-container {
    display: flex;
    justify-content: center;
    margin-top: 40px;
}

.confirmation-message {
    text-align: center;
    font-size: 17px;
    font-weight: 500;
    color: #00aaff;
    margin-top: 20px;
    display: none;
}

.result {
    margin-top: 30px;
    font-size: 17px;
    font-weight: 600;
    color: #222;
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

.confirmation-container .btn {
    margin-top: -40px; /* Butonu yukarıya 10px taşıyacak */
}


.order-summary {
    border: 1px solid #ddd; /* Sepet için border */
    padding: 20px; /* İçeriği biraz boşlukla sarmak */
    background-color: #f9f9f9; /* Arka plan rengi */
    border-radius: 8px; /* Yuvarlak köşeler */
    width: 300px; /* Sabit genişlik */
    margin: auto; /* Ortalanmış içerik */
    font-family: Arial, sans-serif; /* Fontu değiştir */
}

.order-item {
    margin-bottom: 15px; /* Elemanlar arasında boşluk */
    padding-bottom: 5px; /* Alt boşluk */
    border-bottom: 1px solid #eee; /* Satır altı çizgisi */
}

.order-item:last-child {
    border-bottom: none; /* Son elemanda çizgi olmasın */
}

.order-item strong {
    font-weight: bold; /* Başlıkları kalın yap */
    color: #333; /* Başlık rengi */
}

.order-item {
    font-size: 14px; /* Metin boyutu */
    color: #555; /* Metin rengi */
}


</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <a href="sifaristest.aspx" style="position: absolute; top: 20px; left: 20px; background-color: #007acc; color: white; padding: 8px 14px; border-radius: 6px; text-decoration: none; font-weight: 500;">← Geri</a>

            <asp:Image ID="ImageSelected" runat="server" CssClass="image-box" />

            <div class="info">
                <h2>3 şüşəli model</h2>
                <p>Ölçülərə görə qiymət hesablayın.</p>

                    <div class="color-selector">
                         <div class="color-circle" style="background-color: white; border: 2px solid #ccc;" onclick="selectColor('white')"></div>
                         <div class="color-circle" style="background-color: #2F2F2F;" onclick="selectColor('antrasit')"></div>
                         <div class="color-circle" style="background-color: #C89F5D;" onclick="selectColor('altunmese')"></div>
                         <div class="color-circle" style="background-color: #8B5A2B;" onclick="selectColor('koyumese')"></div>
                     </div>

                 <!-- Renk Seçimi Label -->
                <div class="result">
                    <asp:Label ID="lblSelectedColor" runat="server" Text="Seçilən Rəng: " />
                </div>
                <br />
                <!-- 3 Adet TextBox -->
                <div class="inputs">
                  <!-- En Seçimi Başlığı -->
                    <label for="rb2" style="display:block; font-weight:bold; margin-bottom:5px;">Qalınlığı seçin:</label>

                     <!-- RadioButton Seçenekleri - yan yana hizalı -->
                      <div style="display:flex; gap:15px; margin-bottom:10px;">
                          <label>
                              <asp:RadioButton ID="rb2" runat="server" GroupName="enSecim" />
                              58 mm (WinPlust)
                          </label>
                          <label>
                              <asp:RadioButton ID="rb4" runat="server" GroupName="enSecim" />
                              60 mm (PowerPlustS60)
                          </label>
                          <label>
                              <asp:RadioButton ID="rb6" runat="server" GroupName="enSecim" />
                              70 mm (PowerPlustS70)
                          </label>
                      </div>
                    <!-- Diğer inputlar -->
                    <input type="text" id="txtLength" placeholder="En (sm ilə)" runat="server" />
                    <input type="text" id="txtHeight" placeholder="Hündürlük (sm ilə)" runat="server" />

                      
                   <asp:TextBox ID="txtSpecialPrice" placeholder="Məhsul sayını qeyd edin" runat="server"></asp:TextBox>


                   <br />
                  <div class="radio-group">
                    <label class="custom-radio">
                          <asp:RadioButton ID="rb1qat" runat="server" GroupName="secim" CssClass="radio-btn" />
                          <span>Ciftli (Əlavə 20 manat)</span>
                        

                        </label>
                     <label class="custom-radio">
                   <asp:RadioButton ID="rb2qat" runat="server" GroupName="secim" CssClass="radio-btn" />
                   <span>Ciftsiz</span>
                   
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

        <%--<!-- Confirmation Button outside the container -->
            <div class="confirmation-container">
    <asp:Button ID="btnConfirm" runat="server" Text="Sifaris Et" CssClass="btn" OnClientClick="showOrderMessage(); return false;" />
</div>

        <!-- Confirmation Message -->
        <div class="confirmation-message" id="confirmationMessage">
            Əgər sifariş etmək istəyirsinizsə +994 (55) 226-31-21 nömrəsinə zəng vurub sifarişinizi verə bilərsiniz.
        </div>--%>
        
    </form>

    <script type="text/javascript">
        // Renk seçimi yapıldığında çalışacak fonksiyon
        function selectColor(color) {
            // Seçilen rengi HiddenField'e yazıyoruz
            document.getElementById('<%= hfColor.ClientID %>').value = color;

            // Seçilen rengi label'da gösteriyoruz
            var colorText = getColorText(color);
            document.getElementById('<%= lblSelectedColor.ClientID %>').innerText = 'Seçilən Rəng: ' + colorText;

            // Yeni rengi kontrol et
            kontrolEt();

            // Resmi değiştir
            var imageElement = document.getElementById('<%= ImageSelected.ClientID %>');
            var imagePath = '';

            // Renk seçimine göre resim yolu belirliyoruz
            switch (color) {
                case 'white':
                    imagePath = '~/Foto/ag1.png';
                    break;
                case 'antrasit':
                    imagePath = '~/Foto/antrasit1.png';
                    break;
                case 'altunmese':
                    imagePath = '~/Foto/altinmese1.png';
                    break;
                case 'koyumese':
                    imagePath = '~/Foto/koyumese1.png';
                    break;
            }

            // ASP.NET'teki tilde (~) çalışmaz, onu kaldırıyoruz:
            imageElement.src = imagePath.replace('~', '');
        }

        // Seçilen rengi kontrol eden fonksiyon
        function kontrolEt() {
            var rb2 = document.getElementById('<%= rb2.ClientID %>');
            var selectedColor = document.getElementById('<%= hfColor.ClientID %>').value;

    // Eğer 58mm model seçili ve renk antrasitse, uyarı ver ve işlemi durdur
    if (rb2.checked && selectedColor === 'antrasit') {
        alert("58 mm (WinPlust) modelində antrasit rəngi mövcud deyil!");
        // Eğer 'antrasit' rengi seçilmişse, renk seçimini temizle
        document.getElementById('<%= hfColor.ClientID %>').value = '';
        document.getElementById('<%= lblSelectedColor.ClientID %>').innerText = 'Seçilən Rəng: ';
    }
}

// Seçilen rengi Türkçe'ye çeviren yardımcı fonksiyon
function getColorText(color) {
    switch (color.toLowerCase()) {
        case 'white':
            return 'Ağ';
        case 'antrasit':
            return 'Antrasit';
        case 'altunmese':
            return 'Altun Meşə';
        case 'koyumese':
            return 'Koyu Meşə';
        default:
            return color; // Tanımsız renkler için orijinal değeri döndür
    }
}

// Sayfa her yüklendiğinde yapılacak işlemler
window.onload = function () {
    // İlk başta HiddenField'deki rengi alıp label'a yansıtıyoruz
    var color = document.getElementById('<%= hfColor.ClientID %>').value;
    if (color) {
        var colorText = getColorText(color);
                document.getElementById('<%= lblSelectedColor.ClientID %>').innerText = 'Seçilən Rəng: ' + colorText;
            }


        }




    </script>
</body>
</html>
