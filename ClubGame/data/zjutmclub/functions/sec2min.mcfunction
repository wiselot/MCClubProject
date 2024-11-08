scoreboard players remove @s zjutmclub.minute 1
scoreboard players add @s zjutmclub.second 60
execute if score @s zjutmclub.minute matches ..-1 run function zjutmclub:timerunout