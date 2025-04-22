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
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                double widthCm = 0;
                double meterPrice = 0; // Metrin qiymətini burada təyin edəcəyik

                // RadioButton-lara görə en seçimi və metrin qiymətini təyin et
                if (rb2.Checked)
                {
                    widthCm = 2;
                    meterPrice = 2; // 2cm seçilibsə, metrin qiyməti 2 manat olacaq
                }
                else if (rb4.Checked)
                {
                    widthCm = 4;
                    meterPrice = 4; // 4cm seçilibsə, metrin qiyməti 4 manat olacaq
                }
                else if (rb6.Checked)
                {
                    widthCm = 6;
                    meterPrice = 6; // 6cm seçilibsə, metrin qiyməti 6 manat olacaq
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
                double totalCm = (( lengthCm + heightCm) * 2) + 2 * heightCm;

                // Metrlərə çevir
                double totalMeters = totalCm / 100.0;

                // Qiymət hesabla (meterPrice ilə)
                double totalCost = totalMeters * meterPrice;

                // Rəngə görə əlavə qiymət
                string selectedColor = hfColor.Value.ToLower();
                if (selectedColor == "red")
                {
                    totalCost += 2;
                }
                else if (!string.IsNullOrEmpty(selectedColor))
                {
                    totalCost += 4;
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

                // Nəticə
                lblResult.Text = "Toplam Qiymət: " + totalCost.ToString("F2") + " AZN";
            }
            catch (Exception ex)
            {
                lblResult.Text = "Xəta baş verdi: Olculeri duzgun daxil edin" ;
            }
        }





    }
}