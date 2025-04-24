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
                ImageSelected.ImageUrl = "~/Foto/ag1.png";

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

                    meterPrice = 75; // 2cm seçilibsə, metrin qiyməti 2 manat olacaq
                    qalinliqMesaji = "Seçilən qalınlıq: 58 mm (kvMetrinin qiyməti: 75 AZN)";
                }
                else if (rb4.Checked)
                {

                    meterPrice = 95; // 4cm seçilibsə, metrin qiyməti 4 manat olacaq
                    qalinliqMesaji = "Seçilən qalınlıq: 60 mm (kvMetrinin qiyməti: 95 AZN)";
                }
                else if (rb6.Checked)
                {

                    meterPrice = 125; // 6cm seçilibsə, metrin qiyməti 6 manat olacaq
                    qalinliqMesaji = "Seçilən qalınlıq: 70 mm (kvMetrinin qiyməti: 125 AZN)";
                }
                else
                {
                    lblResult.Text = "Zəhmət olmasa qalınlığı və ya modeli seçin.";
                    return;
                }

                // Digər ölçüləri al
                double lengthCm = Convert.ToDouble(txtLength.Value);
                double heightCm = Convert.ToDouble(txtHeight.Value);

                // Toplam uzunluğu hesabla (cm)
                double totalCm = lengthCm * heightCm;

                // Metrlərə çevir
                double totalMeters = totalCm / 10000.0;

                // Qiymət hesabla (meterPrice ilə)
                double totalCost = totalMeters * meterPrice;

                // Rəngə görə əlavə qiymət
                string selectedColor = hfColor.Value.ToLower();
                string colorMessage = string.Empty;

                if (string.IsNullOrEmpty(selectedColor))
                {
                    lblResult.Text = "Zəhmət olmasa rəng seçin.";
                    return;
                }

                if (selectedColor == "white")
                {

                    if (rb2.Checked)
                    {

                        meterPrice = 75; // 2cm seçilibsə, metrin qiyməti 2 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 58 mm (kvMetrinin qiyməti: 75 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Ağ";
                    }
                    else if (rb4.Checked)
                    {
                        meterPrice = 95; // 4cm seçilibsə, metrin qiyməti 4 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 60 mm (kvMetrinin qiyməti: 95 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Ağ";
                    }
                    else if (rb6.Checked)
                    {
                        meterPrice = 125; // 6cm seçilibsə, metrin qiyməti 6 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 70 mm (kvMetrinin qiyməti: 125 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Ağ";
                    }
                    else
                    {
                        lblResult.Text = "Zəhmət olmasa qalınlığı və ya modeli seçin.";
                        return;
                    }
                }
                else if (selectedColor == "antrasit")
                {

                    if (rb2.Checked)
                    {

                        meterPrice = 110; // 2cm seçilibsə, metrin qiyməti 2 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 58 mm (kvMetrinin qiyməti: 110 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Antrasit";
                    }
                    else if (rb4.Checked)
                    {
                        meterPrice = 130; // 4cm seçilibsə, metrin qiyməti 4 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 60 mm (kvMetrinin qiyməti: 130 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Antrasit";
                    }
                    else if (rb6.Checked)
                    {
                        meterPrice = 150; // 6cm seçilibsə, metrin qiyməti 6 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 70 mm (kvMetrinin qiyməti: 150 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Antrasit";
                    }
                    else
                    {
                        lblResult.Text = "Zəhmət olmasa qalınlığı və ya modeli seçin.";
                        return;
                    }
                }
                else if (selectedColor == "altunmese")
                {
                    if (rb2.Checked)
                    {

                        meterPrice = 110; // 2cm seçilibsə, metrin qiyməti 2 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 58 mm (kvMetrinin qiyməti: 110 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Altın meşə";
                    }
                    else if (rb4.Checked)
                    {
                        meterPrice = 130; // 4cm seçilibsə, metrin qiyməti 4 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 60 mm (kvMetrinin qiyməti: 130 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Altın meşə";
                    }
                    else if (rb6.Checked)
                    {
                        meterPrice = 150; // 6cm seçilibsə, metrin qiyməti 6 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 70 mm (kvMetrinin qiyməti: 150 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Altın meşə";
                    }
                    else
                    {
                        lblResult.Text = "Zəhmət olmasa qalınlığı və ya modeli seçin.";
                        return;
                    }
                }
                else if (selectedColor == "koyumese")
                {
                    if (rb2.Checked)
                    {

                        meterPrice = 110; // 2cm seçilibsə, metrin qiyməti 2 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 58 mm (kvMetrinin qiyməti: 110 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Koyu meşə";
                    }
                    else if (rb4.Checked)
                    {
                        meterPrice = 130; // 4cm seçilibsə, metrin qiyməti 4 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 60 mm (kvMetrinin qiyməti: 130 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Koyu meşə";
                    }
                    else if (rb6.Checked)
                    {
                        meterPrice = 150; // 6cm seçilibsə, metrin qiyməti 6 manat olacaq
                        qalinliqMesaji = "Seçilən qalınlıq: 70 mm (kvMetrinin qiyməti: 150 AZN)";
                        totalCost = totalMeters * meterPrice;
                        colorMessage = "Koyu meşə";
                    }
                    else
                    {
                        lblResult.Text = "Zəhmət olmasa qalınlığı və ya modeli seçin.";
                        return;
                    }
                }
                else if (!string.IsNullOrEmpty(selectedColor))
                {
                    colorMessage = selectedColor;
                }

                //else if (!string.IsNullOrEmpty(selectedColor))
                //{
                //    totalCost += 4;
                //    colorMessage = "Rəng: " + selectedColor + " (Metrinin Qiyməti: 4 AZN)";
                //}

                // Qat seçiminə görə əlavə qiymət
                if (rb1qat.Checked)
                {
                    totalCost += 20;
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
                double umumilikdeUzunluqSm = uzunluqMetr * hundurlukMetr;


                string acilistipi = rb1qat.Checked ? "Ciftli" : rb2qat.Checked ? "Ciftsiz" : "Seçilmedi";


                lblResult.Text =
                     "<div class='order-summary'>" +
                         "<div class='order-item'><strong>Qalınlığı və ya modeli:</strong> " + qalinliqMesaji + "</div>" +
                         "<div class='order-item'><strong>Rəng Seçimi:</strong> " + colorMessage + "</div>" +
                         "<div class='order-item'><strong>Uzunluq:</strong> " + uzunluqMetr.ToString("F0") + " metr</div>" +
                         "<div class='order-item'><strong>Hündürlük:</strong> " + hundurlukMetr.ToString("F0") + " metr</div>" +
                         "<div class='order-item'><strong>KvMetr:</strong> " + umumilikdeUzunluqSm.ToString("F0") + " kvMetr</div>" +
                         "<div class='order-item'><strong>Açılış tipi:</strong> " + acilistipi + "</div>" +
                         "<div class='order-item'><strong>Məhsul Sayı:</strong> " + mehsulSayiGoster.ToString("F0") + " Ədəd</div>" +
                         "<div class='order-item'><strong>Toplam Qiymət:</strong> " + totalCost.ToString("F0") + " AZN</div>" +

                     "</div>";



            }
            catch (Exception ex)
            {
                lblResult.Text = "Xəta baş verdi: Olculeri duzgun daxil edin";
            }
        }






    }
}