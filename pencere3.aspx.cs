using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MagnaSifaris
{
    public partial class pencere3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Image2-nin yolunu session ilə ötürmək daha sağlamdır, amma sadəlik üçün burada sabit veririk
                ImageSelected.ImageUrl = "~/Foto/p2.png";

                rb2.Checked = true;
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                double widthCm = 0;
                double meterPrice = 0; // Metrin qiymətini burada təyin edəcəyik
                string qalinliqMesaji = string.Empty;

                // RadioButton-lara görə en seçimi və metrin qiymətini təyin et
                if (rb2.Checked)
                {
                    widthCm = 2;
                    meterPrice = 2; // 2cm seçilibsə, metrin qiyməti 2 manat olacaq
                    qalinliqMesaji = "Seçilən qalınlıq: 2 sm (Metrinin qiyməti: 2 AZN)";
                }
                else if (rb4.Checked)
                {
                    widthCm = 4;
                    meterPrice = 4; // 4cm seçilibsə, metrin qiyməti 4 manat olacaq
                    qalinliqMesaji = "Seçilən qalınlıq: 4 sm (Metrinin qiyməti: 4 AZN)";
                }
                else if (rb6.Checked)
                {
                    widthCm = 6;
                    meterPrice = 6; // 6cm seçilibsə, metrin qiyməti 6 manat olacaq
                    qalinliqMesaji = "Seçilən qalınlıq: 6 sm (Metrinin qiyməti: 6 AZN)";
                }
                else
                {
                    lblResult.Text = "Zəhmət olmasa en ölçüsünü seçin.";
                    return;
                }

                // Digər ölçüləri al
                double lengthCm = Convert.ToDouble(txtLength.Value);
                double heightCm = Convert.ToDouble(txtHeight.Value);

                // Toplam uzunluğu hesabla (cm)
                double totalCm = ((lengthCm + heightCm) * 2) + 2 * heightCm;

                // Metrlərə çevir
                double totalMeters = totalCm / 100.0;

                // Qiymət hesabla (meterPrice ilə)
                double totalCost = totalMeters * meterPrice;

                // Rəngə görə əlavə qiymət
                string selectedColor = hfColor.Value.ToLower();
                string colorMessage = string.Empty;

                if (selectedColor == "red")
                {
                    totalCost *= 2;
                    colorMessage = "Rəng: Qırmızı (Metrinin Qiyməti: 2 AZN)";
                }
                else if (selectedColor == "blue")
                {
                    totalCost *= 4;
                    colorMessage = "Rəng: Mavi (Metrinin Qiyməti: 4 AZN)";
                }
                else if (selectedColor == "green")
                {
                    totalCost *= 4;
                    colorMessage = "Rəng: Yaşıl (Metrinin Qiyməti: 4 AZN)";
                }
                else if (selectedColor == "yellow")
                {
                    totalCost *= 4;
                    colorMessage = "Rəng: Sarı (Metrinin Qiyməti: 4 AZN)";
                }
                else if (selectedColor == "orange")
                {
                    totalCost *= 4;
                    colorMessage = "Rəng: Narıncı (Metrinin Qiyməti: 4 AZN)";
                }
                else if (selectedColor == "purple")
                {
                    totalCost *= 4;
                    colorMessage = "Rəng: Bənövşəyi (Metrinin Qiyməti: 4 AZN)";
                }
                else if (selectedColor == "pink")
                {
                    totalCost *= 4;
                    colorMessage = "Rəng: Pink (Metrinin Qiyməti: 4 AZN)";
                }
                else if (!string.IsNullOrEmpty(selectedColor))
                {
                    totalCost += 4;
                    colorMessage = "Rəng: " + selectedColor + " (Metrinin Qiyməti: 4 AZN)";
                }

                // Qat seçiminə görə əlavə qiymət
                if (rb1qat.Checked)
                {
                    totalCost += 30;
                }
                else if (rb2qat.Checked)
                {
                    totalCost += 60;
                }
                // Yeni əlavə edilmiş TextBoxun dəyəri ilə əlavə qiymət
                if (!string.IsNullOrEmpty(txtSpecialPrice.Text))  // Yeni TextBoxun dəyərini yoxlamaq
                {
                    double specialPrice = Convert.ToDouble(txtSpecialPrice.Text);  // TextBoxun dəyərini al
                    totalCost *= specialPrice;  // Toplam qiymətə əlavə et
                }

                double uzunluqSm = Convert.ToDouble(txtLength.Value);
                double hundurlukSm = Convert.ToDouble(txtHeight.Value);
                double mehsulSayiGoster = Convert.ToDouble(txtSpecialPrice.Text);

                double uzunluqMetr = uzunluqSm / 100;
                double hundurlukMetr = hundurlukSm / 100;

                // Ümumi uzunluq (sm olaraq)
                double umumilikdeUzunluqSm = 2 * uzunluqSm + 4 * hundurlukSm;

                // Metrə çevrilməsi
                double umumilikdeUzunluqMetr = umumilikdeUzunluqSm / 100;

                string suseTipi = rb1qat.Checked ? "1 Qatlı" : rb2qat.Checked ? "2 Qatlı" : "Seçilmedi";


                lblResult.Text =
                     "<div class='order-summary'>" +
                         "<div class='order-item'><strong>Qalinlıq Mesaji:</strong> " + qalinliqMesaji + "</div>" +
                         "<div class='order-item'><strong>Rəng Seçimi:</strong> " + colorMessage + "</div>" +
                         "<div class='order-item'><strong>Uzunluq:</strong> " + uzunluqMetr.ToString("F2") + " metr</div>" +
                         "<div class='order-item'><strong>Hündürlük:</strong> " + hundurlukMetr.ToString("F2") + " metr</div>" +
                         "<div class='order-item'><strong>Ümumi Uzunluq:</strong> " + umumilikdeUzunluqMetr.ToString("F2") + " metr</div>" +
                         "<div class='order-item'><strong>Şüşə tipi:</strong> " + suseTipi + "</div>" +
                         "<div class='order-item'><strong>Məhsul Sayı:</strong> " + mehsulSayiGoster.ToString("F2") + " Ədəd</div>" +
                         "<div class='order-item'><strong>Toplam Qiymət:</strong> " + totalCost.ToString("F2") + " AZN</div>" +
                         
                     "</div>";



            }
            catch (Exception ex)
            {
                lblResult.Text = "Xəta baş verdi: Olculeri duzgun daxil edin";
            }
        }






    }
}