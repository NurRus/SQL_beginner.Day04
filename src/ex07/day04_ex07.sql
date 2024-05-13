INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
    VALUES ((SELECT (MAX(id) + 1) FROM person_visits),
    (SELECT pr.id FROM person pr WHERE pr.name = 'Dmitriy'),
    (SELECT pz.id FROM pizzeria pz
        JOIN menu ON menu.pizzeria_id = pz.id
        WHERE price < 800 AND pz.name != 'Papa Johns' limit 1),
     '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT * FROM mv_dmitriy_visits_and_eats;


