
-- create table if not exists pizzas (
--     id serial primary key,
--     name text not null
-- );

-- create table if not exists batches (
--     id serial primary key,
--     pizza_id integer references pizzas,
--     quantity integer not null
-- );
update pizzas set name = 'veggie apocalypse' 
	where id = 2; 
 -- INSERT INTO pizzas (name)
	-- VALUES ('Sausage and Bacon'),
	--  ('Pepperoni'),
	--  ('Chicken Bacon Ranch'),
	--  ('Pineapple'),
	--  ('Six cheese'),
	--  ('Mushroom'),
	--  ('Kale'),
	--  ('Meat Lovers');


-- INSERT INTO batches (pizza_id,quantity) 
-- 	VALUES (1 , 10),
-- 	(2,5),
-- 	(3,4),
-- 	(4,2),
-- 	(5,3),
-- 	(6,1),
-- 	(7,9),
-- 	(8,1),
-- 	(9,2);

	create table if not exists toppings (
    id serial primary key,
    name text not null
);

create table if not exists pizzas_toppings (
    pizza_id integer references pizzas,
    topping_id integer references toppings,
    primary key (pizza_id, topping_id)
);


INSERT INTO toppings (name) VALUES
('bacon'),
('sausage'),
('Mushrooms'),
('Kale'),
('Extra cheese'),
('Chicken'),
('peppers'),
('pepperoni'),
('ham');

INSERT INTO pizzas_toppings (pizza_id , topping_id) VALUES
(1,2),
(1,1),
(1,3),
(1,4),
(2,3),
(3,4),
(4,6),
(5,8),
(6,1);
