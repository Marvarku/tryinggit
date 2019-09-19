{\rtf1\ansi\ansicpg1252\cocoartf1671
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* SELECT food.food_id, restaurant.restaurant_id, food.country, restaurant.city\
FROM food\
INNER JOIN restaurant\
ON food.food_name=restaurant.food_name; */\
\
\
\
/* SELECT food.food_name, restaurant.food_name\
FROM food\
LEFT JOIN restaurant ON food.food_name= restaurant.food_name\
ORDER BY food.food_name; */\
\
\
\
/*  SELECT productLine,COUNT(*) as 'number of productlines'\
 FROM products\
 GROUP BY productLine; */\
\
\
select distinct (productLine)\
from products }