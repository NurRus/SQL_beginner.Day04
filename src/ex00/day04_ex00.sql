CREATE VIEW v_persons_female AS
SELECT * FROM person pr
WHERE pr.gender = 'female';

CREATE VIEW v_persons_male AS
SELECT * FROM person pr
WHERE pr.gender = 'male'

SELECT * FROM v_persons_female;

SELECT * FROM v_persons_male