scoreboard players remove @s zjutmclub.tick 1
execute if score @s zjutmclub.tick matches ..-1 run function zjutmclub:tick2sec
title @s actionbar [{"text":"Time: ","color":"gold"},{"text":" ","color":"gold"},{"score":{"name":"@s","objective":"zjutmclub.minute"},"color":"aqua"},{"text":": ","color":"gold"},{"score":{"name":"@s","objective":"zjutmclub.second"},"color":"aqua"}]

