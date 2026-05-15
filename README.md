# Credit-Risk-Analysis-SQL
Automated credit risk segmentation and visualization using SQL (BigQuery) and Looker Studio to identify high-default probability segments.
# 🏦 Credit Risk Analysis: Loan Default Prediction

## 📌 Project Overview
Proyek ini bertujuan untuk menganalisis profil risiko nasabah perbankan menggunakan dataset LendingClub. Fokus utama adalah mengidentifikasi korelasi antara skor FICO, suku bunga, dan tingkat gagal bayar nasabah.

## 🛠️ Tech Stack
- **Database:** Google BigQuery (SQL)
- **Visualization:** Google Looker Studio
- **Language:** SQL (Common Table Expressions, EXP function for data transformation)

## 🔍 Key Insights
Berdasarkan analisis terhadap 9.578 data nasabah, ditemukan bahwa:
1. **Risiko Berbanding Terbalik dengan Skor Kredit:** Segmen nasabah dengan skor FICO terendah (Fair: 580-669) memiliki tingkat gagal bayar sebesar **25.8%**.
2. **Risk Premium:** Bank menetapkan suku bunga rata-rata **15.2%** untuk segmen risiko tinggi, dibandingkan hanya **9.25%** untuk segmen Exceptional.
3. **Volume vs Risk:** Segmen "Good" memiliki volume nasabah terbanyak (6.007 orang), namun tingkat gagal bayarnya melonjak menjadi **16.75%**.

## 📊 Dashboard Preview
<img width="685" height="488" alt="image" src="https://github.com/user-attachments/assets/1696012e-486d-4600-bbfb-2321be8e049a" />


## 📄 SQL Queries
Kueri lengkap untuk pembersihan data dan segmentasi dapat ditemukan di file `analysis_queries.sql` dalam repository ini.
