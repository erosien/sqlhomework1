-- 1 / 2 actors with the last name 'Wahlberg'
select LAST_NAME
from actor
where LAST_NAME like 'Wahlberg';

-- 2 / 2 payments between $3.99 and $5.99
select count(amount)
from payment
where amount between 3.99 and 5.99;

-- 3 / there are many films with 4 copies
select store_id, film_id, count(film_id)
from inventory
where store_id = '1'
group by store_id, film_id
order by count(film_id) desc;

-- 4 / 0 customers have the last name 'William'
select last_name
from customer
where last_name like 'William';

-- 5 staff_id 2 sold the most
select staff_id, count(rental_id)
from payment
group by staff_id
order by count(rental_id) desc;

-- 6 / 378 district different district names
select count(distinct district)
from address;

-- 7 film_id 508 has the most actors
select film_id, count(actor_id)
from film_actor
group by film_id 
order by count(actor_id) desc;

-- 8 / 13 customers from store_id 1 with the last name ending with 'es'
select store_id, count(last_name)
from customer
where last_name like '%es'
group by store_id
order by store_id;

-- 9 / 0 payment amounts had a number of rentals above 250 for ids between 380 and 430
select count(amount), customer_id
from payment
group by customer_id having customer_id between 380 and 430 and count(amount) > 250
order by count(amount) desc;

-- 10 / 5 rating categories, PG-13 had the most at 223
select count(distinct rating), rating, count(title)
from film 
group by rating
order by count(title) desc;

