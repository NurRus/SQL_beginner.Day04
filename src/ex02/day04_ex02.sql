CREATE VIEW v_generated_dates AS
SELECT generated_date::DATE FROM generate_series('2022-01-01'::DATE, '2022-01-31', '1 day') AS generated_date;

SELECT COUNT(*) = 31 AS check_date FROM v_generated_dates