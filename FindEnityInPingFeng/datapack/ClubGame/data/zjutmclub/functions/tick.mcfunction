execute as @p run function zjutmclub:main
## 分数最大值
clear @p minecraft:glow_item_frame
clear @p minecraft:white_stained_glass_pane
execute if score @p flagScoreWait matches 1 as @p store result score @p zjutmclub.scorediamod run data get entity @p Inventory
execute if score @p flagScoreWait matches 1 if score @p zjutmclub.scorediamod matches 9 run function zjutmclub:getallwin

## 找ns
execute if score @p ifns matches 1 run scoreboard players add @p netherstar 1
execute at @p if score @p netherstar matches 40 if entity @e[type=minecraft:armor_stand,distance=..5] run function zjutmclub:nssay
execute if score @p netherstar matches 40 run scoreboard players set @p netherstar 0

## 找电梯维修手册捏
execute if score @p iflift matches 1 if entity @a[nbt={Inventory:[{id:"minecraft:book",tag:{display:{Name:'[{"text":"电梯维修手册","color":"dark_blue"}]'}}}]}] run function zjutmclub:liftsay

## 找到电子密钥了吗
execute if score @p ifkey matches 1 if entity @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{display:{Name:'{"text":"不知是何处的电子密钥"}'}}}]}] run function zjutmclub:keysay

## 找到双一流证书了吗
execute if score @p ifCert matches 1 if entity @a[nbt={Inventory:[{id:"minecraft:paper",tag:{RepairCost:0,display:{Name:'{"text":"差点被冲走的双一流证书"}'}}}]}] run function zjutmclub:next_game_room

## 回去找NS哈
execute if score @p ifnsnext matches 1 run scoreboard players add @p netherstar 1
execute at @p if score @p netherstar matches 40 if entity @e[type=minecraft:armor_stand,distance=..5] run function zjutmclub:nssaynext
execute if score @p netherstar matches 40 run scoreboard players set @p netherstar 0
