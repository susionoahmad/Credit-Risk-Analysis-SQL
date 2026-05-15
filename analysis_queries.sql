WITH Raw_Data AS (
  SELECT 
    *,
    -- Mengubah log income kembali ke nilai asli (Exp)
    ROUND(EXP(log_annual_inc), 0) AS annual_income,
    -- Membuat kategori skor FICO (Grouping)
    CASE 
      WHEN fico >= 800 THEN '1. Exceptional (800+)'
      WHEN fico >= 740 THEN '2. Very Good (740-799)'
      WHEN fico >= 670 THEN '3. Good (670-739)'
      WHEN fico >= 580 THEN '4. Fair (580-669)'
      ELSE '5. Poor (<580)'
    END AS credit_segment
  FROM `dataanalyst-496415.banking_analysis.loan_data`
)

SELECT 
  credit_segment,
  COUNT(*) AS total_nasabah,
  ROUND(AVG(annual_income), 0) AS rata_rata_pendapatan,
  ROUND(AVG(int_rate) * 100, 2) AS rata_rata_bunga_persen,
  -- Menghitung persentase yang tidak bayar penuh
  ROUND(SUM(not_fully_paid) * 100.0 / COUNT(*), 2) AS default_rate_persen
FROM Raw_Data
GROUP BY credit_segment
ORDER BY credit_segment ASC;