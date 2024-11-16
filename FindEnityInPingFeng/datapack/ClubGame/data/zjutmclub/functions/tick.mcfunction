execute as @p run function zjutmclub:main
## 分数最大值
clear @p minecraft:glow_item_frame
clear @p minecraft:white_stained_glass_pane
execute as @p store result score @p zjutmclub.scorediamod run data get entity @p Inventory
execute if score @p flagScoreWait matches 1 if score @p zjutmclub.scorediamod matches 9 run function zjutmclub:getallwin