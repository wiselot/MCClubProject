## 开始新的游戏 !
clear @p
gamemode adventure @p
scoreboard players set @p flagClock 1

scoreboard objectives add zjutmclub.scorediamod dummy
scoreboard players set @p zjutmclub.scorediamod 0

scoreboard objectives add flagScoreWait dummy
scoreboard players set @p flagScoreWait 1

## 放箱子
# test
setblock -254 1 -129 chest[facing=east]
setblock -251 1 -131 chest[facing=south]
setblock -251 1 -123 chest[facing=west]
setblock -257 1 -124 chest[facing=north]
data merge block -251 1 -131 {Items:[{id:"minecraft:diamond",Count:1b,tag:{display:{Name:"[{\"text\":\"金色传说!\",\"color\":\"gold\"}]"},Tags:["treasure_0"]}}]}

## 放展示框
# test
# 藏箱子底下统计的时候要把展示框清除哦
summon item_frame -254 0 -129 {Items:[{id:"minecraft:diamond",Count:1b,tag:{display:{Name:"[{\"text\":\"金色传说!\",\"color\":\"gold\",}]"},Tags:["treasure_1"]}}],Rotation:0}

## 其他的再说吧

## 最高分就是玩家物品栏物品个数最大值

title @a title {"text":"努力找到所有宝藏!","color":"yellow"}

scoreboard objectives add zjutmclub.minute dummy
scoreboard objectives add zjutmclub.second dummy
scoreboard objectives add zjutmclub.tick dummy

scoreboard players set @a zjutmclub.tick 0
scoreboard players set @a zjutmclub.second 0
scoreboard players set @a zjutmclub.minute 5