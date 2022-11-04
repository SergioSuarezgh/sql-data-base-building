#1. VER LAS PELIS POR LENGUAJE
select title,l.name 
from film f, language l
where f.language_id=l.language_id
group by title;

#2. VER LAS PELIS,PROTAGANISTAS Y CATEGORIAS
select f.title,o.first_name,o.last_name, c.name
from film f, old_hdd o,category c 
where f.film_id=o.film_id and c.category_id=o.category_id
group by title;

#3. USO DEL IF
SELECT title,if( length>100, 'Larga duración', 'Corta duración') from film;

#4. NUMERO DE PELICULAS POR CATEGORIAS
select c.name,count(f.title) AS 'Pelis por Categoria'
from film f, old_hdd o,category c 
where f.film_id=o.film_id and c.category_id=o.category_id
group by o.category_id;

#5.SABER EL STORE DE LAS PELICULAS
select f.title, l.name, count(i.inventory_id) as 'Cantidad/almacen'
FROM inventory i, film f, language l
WHERE i.film_id=f.film_id and l.language_id=f.language_id
group by f.title;

#6. SELECCIONAR SOLO LAS PELICULAS EN MANDARIN
SELECT title, name
from film f, language l
where f.language_id=l.language_id and l.name='Mandarin';

#7. SELECCIONAR LAS PELICULAS QUE TIENEN TRAILER
SELECT title, TRAILERS
from (SELECT * FROM FILM WHERE TRAILERS='Y') AS PRUEBA;

#8. SELECCIONAR PELICULAS CUYO RATING DEBE SER PG-13, PROTAGONIZADO POR ACTOR_ID 1 Y COMMENTARIES Y
SELECT *
FROM film f, old_hdd o
where f.film_id=o.film_id and rating='PG-13' and Commentaries='Y' and o.actor_id between 1 and 10;

#9. SELECCIONAR PELICLAS DE PG-13 Y NC-17 Y POR RENTAL_DURARION 6
SELECT f.title, o.first_name,o.last_name
FROM film f, old_hdd o
where f.film_id=o.film_id and f.rating in ('PG-13','NC-17') and rental_duration=6
GROUP BY f.title;

#10. AGRUPAR POR CUSTOMER LOS ALQUILERES DE LAS PELICULAS
SELECT r.customer_id, f.title, count(f.title) as 'Cantidad'
FROM film f, inventory i, rental r
where f.film_id=i.film_id and i.inventory_id=r.inventory_id
GROUP BY r.customer_id;









