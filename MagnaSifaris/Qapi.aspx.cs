using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MagnaSifaris
{
    public partial class Qapi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Image2-nin yolunu session ilə ötürmək daha sağlamdır, amma sadəlik üçün burada sabit veririk
                ImageSelected1.ImageUrl = "~/Foto/qapiag.png";
                ImageSelected2.ImageUrl = "~/Foto/suseliqapiag.png";



                rb2.Checked = true;
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                double qiymet = 0;               
                string qalinliqMesaji = string.Empty;

                // RadioButton-lara görə en seçimi və metrin qiymətini təyin et
                if (rb2.Checked)
                {
                    qiymet = 135;
                    qalinliqMesaji = "58 mm (Winplust)";
                }
                else if (rb4.Checked)
                {
                    qiymet = 150;
                    qalinliqMesaji = "60 mm (Powerplust S60)";
                }
                else if (rb6.Checked)
                {
                    qiymet = 179;
                    qalinliqMesaji = "70 mm (Powerplust S70)";
                }
                else
                {
                    lblResult.Text = "Zəhmət olmasa qalınlığı və ya modeli seçin.";
                    return;
                }
                             

               


                // Rəngə görə əlavə qiymət
                string selectedColor = hfColor.Value.ToLower();
                string colorMessage = string.Empty;

                if (selectedColor == "white")     
                {                    
                    colorMessage = "Ağ";
                    if (rb2.Checked)
                    {
                        qiymet = 135;
                      
                    }
                    else if (rb4.Checked)
                    {
                        qiymet = 150;
                        
                    }
                    else if (rb6.Checked)
                    {
                        qiymet = 179;
                      
                    }
                }
                else if (selectedColor == "antrasit")
                {
                    
                    colorMessage = "Antrasit";
                    if (rb2.Checked)
                    {
                        qiymet = 180;

                    }
                    else if (rb4.Checked)
                    {
                        qiymet = 190;

                    }
                    else if (rb6.Checked)
                    {
                        qiymet = 214;

                    }
                }
                else if (selectedColor == "altunmese")
                {      
                  
                    colorMessage = "Altun Meşə";
                    if (rb2.Checked)
                    {
                        qiymet = 180;

                    }
                    else if (rb4.Checked)
                    {
                        qiymet = 190;

                    }
                    else if (rb6.Checked)
                    {
                        qiymet = 214;

                    }
                }
                else if (selectedColor == "koyumese")
                {
                    colorMessage = "Koyu Meşə";
                    if (rb2.Checked)
                    {
                        qiymet = 180;

                    }
                    else if (rb4.Checked)
                    {
                        qiymet = 190;

                    }
                    else if (rb6.Checked)
                    {
                        qiymet = 214;

                    }
                }               
               
                else if (!string.IsNullOrEmpty(selectedColor))
                {                   
                    colorMessage = selectedColor;
                }

                // Qat seçiminə görə əlavə qiymət
                if (rb1qat.Checked)
                {
                  
                }
                else if (rb2qat.Checked)
                {
                    qiymet += 24;
                    
                }
                // Yeni əlavə edilmiş TextBoxun dəyəri ilə əlavə qiymət
                if (!string.IsNullOrEmpty(txtSpecialPrice.Text))  // Yeni TextBoxun dəyərini yoxlamaq
                {
                    double specialPrice = Convert.ToDouble(txtSpecialPrice.Text);  // TextBoxun dəyərini al
                    
                }

                
                double mehsulSayiGoster = Convert.ToDouble(txtSpecialPrice.Text);
                double toplamcost = mehsulSayiGoster * qiymet;




                string qapiTipi = rb1qat.Checked ? "Sadə" : rb2qat.Checked ? "Şüşəli" : "Seçilmedi";

                string uzunluq = hfLength.Value;
                string hundurluk = hfHeight.Value;



                lblResult.Text =
                     "<div class='order-summary'>" +
                         "<div class='order-item'><strong>Seçilən qalınlıq:</strong> " + qalinliqMesaji + "</div>" +
                         "<div class='order-item'><strong>Rəng Seçimi:</strong> " + colorMessage + "</div>" +
                         "<div class='order-item'><strong>Qapı tipi:</strong> " + qapiTipi + "</div>" +
                         "<div class='order-item'><strong>Məhsul Sayı:</strong> " + mehsulSayiGoster.ToString("F2") + " Ədəd</div>" +
                         "<div class='order-item'><strong>Qiymət:</strong> " + toplamcost + " manat"  + "</div>" + 
                         "<div class='order-item'><strong>Ölçülər:</strong> Uzunluq " + uzunluq + " sm, Hündürlük " + hundurluk + " sm</div>";

            }
            catch (Exception ex)
            {
                lblResult.Text = "Xəta baş verdi: Ölçüləri düzgün daxil edin";
            }
        }

    }
}