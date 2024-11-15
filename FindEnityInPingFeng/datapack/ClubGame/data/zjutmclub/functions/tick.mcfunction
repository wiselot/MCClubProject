execute as @p run function zjutmclub:main
## 分数最大值
execute as @p store result score @p zjutmclub.scorediamod run data get entity @p Inventory
execute if score @p flagScoreWait matches 1 if score @p zjutmclub.scorediamod matches 2 run function zjutmclub:getallwin