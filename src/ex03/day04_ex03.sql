SELECT generated_date AS missing_data FROM v_generated_dates
EXCEPT
SELECT visit_date FROM person_visits pv
ORDER BY 1;