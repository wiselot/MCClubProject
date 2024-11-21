tp @p -224 0 -124
gamemode adventure @p
execute as @p run effect clear @p
clear @p
effect give @p minecraft:speed 500 10
effect give @p minecraft:resistance 300 5

# 
#scoreboard players set @p zjutmclub.second 0
#scoreboard players set @p zjutmclub.minute 3
#scoreboard objectives add zjutmclub.tick dummy

# 新游戏
title @p title [{"text":"你似乎听到报告厅二楼传来什么声音","color":"gold"}]

# 电梯维修手册
kill @e[type=minecraft:glow_item_frame]
summon minecraft:glow_item_frame -144 2 -177 {Facing:1,Item:{id:"minecraft:book",tag:{display:{Name:'[{"text":"电梯维修手册","color":"dark_blue"}]'}},Count:1b}}

scoreboard players set @p ifns 1

scoreboard objectives add netherstar dummy
scoreboard players set @p netherstar 90

scoreboard players set @p iflift 1
scoreboard players set @p ifkey 1
scoreboard players set @p ifCert 1