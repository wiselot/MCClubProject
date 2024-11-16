## 开始新的游戏 !

# 清除物品前记录一下名字哈
execute as @p run getData

clear @p
effect give @p minecraft:speed 500 10
scoreboard players set @p flagClock 1

scoreboard objectives add zjutmclub.scorediamod dummy
scoreboard players set @p zjutmclub.scorediamod 0

scoreboard objectives add flagScoreWait dummy
scoreboard players set @p flagScoreWait 1

## 放箱子
# ns
setblock -149 10 -217 chest[facing=south]
data merge block -149 10 -217 {Items:[{Count:1b,Slot:0b,id:"minecraft:poppy",tag:{RepairCost:0,display:{Name:'{"text":"给非星际玩家的奖励"}'}}}],id:"minecraft:chest",x:-163,y:10,z:-108}

# 窗台望远镜
setblock -163 10 -108 chest[facing=north]
data merge block -163 10 -108 {Items:[{Count:1b,Slot:0b,id:"minecraft:spyglass",tag:{RepairCost:0,display:{Name:'{"text":"看萌萌可爱ns的望远镜"}'}}}],id:"minecraft:chest",x:-163,y:10,z:-108}

# 大厅演讲稿
setblock -195 1 -164 chest[facing=south]
data merge block -195 1 -164 {Items:[{Count:1b,Slot:0b,id:"minecraft:paper",tag:{RepairCost:0,display:{Name:'{"text":"演讲稿"}'}}}],id:"minecraft:chest",x:-195,y:1,z:-164}

## 放展示框

# 展示框清除
kill @e[type=minecraft:glow_item_frame]

# 底气
summon minecraft:glow_item_frame -319 2 -86 {Facing:5,Item:{id:"minecraft:snowball",tag:{RepairCost:0,display:{Name:'{"text":"底气!"}'}},Count:1b}}
# 我爱工大
summon minecraft:glow_item_frame -142 0 -114 {Facing:1,Item:{id:"minecraft:red_dye",tag:{RepairCost:0,display:{Name:'{"text":"我爱浙江工业大学"}'}},Count:1b}}
# 大厅校园卡
summon minecraft:glow_item_frame -180 3 -188 {Facing:1,Item:{id:"minecraft:warped_trapdoor",tag:{RepairCost:0,display:{Name:'{"text":"不知是谁遗失的校园卡"}'}},Count:1b}}
# 球场的球
summon minecraft:glow_item_frame -86 0 -185 {Facing:1,Item:{id:"minecraft:magma_cream",tag:{RepairCost:0,display:{Name:'{"text":"球"}'}},Count:1b}}
# 拉拉棒
summon minecraft:glow_item_frame -217 4 -137 {Facing:5,Item:{id:"minecraft:soul_torch",tag:{RepairCost:0,display:{Name:'{"text":"观看板球赛的啦啦棒"}'}},Count:1b}}
#腮红
summon minecraft:glow_item_frame -200 11 -155 {Facing:4,Item:{id:"minecraft:pink_dye",tag:{RepairCost:0,display:{Name:'{"text":"腮红"}'}},Count:1b}}
# 镜子
summon minecraft:glow_item_frame -200 11 -155 {Facing:8,Item:{id:"minecraft:white_stained_glass_pane",tag:{RepairCost:0,display:{Name:'{"text":"镜子（我不是任务道具"}'}},Count:1b}}

## 其他的再说吧

## 最高分就是玩家物品栏物品个数最大值

title @a title {"text":"努力找到所有宝藏!","color":"yellow"}

scoreboard objectives add zjutmclub.minute dummy
scoreboard objectives add zjutmclub.second dummy
scoreboard objectives add zjutmclub.tick dummy

scoreboard players set @a zjutmclub.tick 0
scoreboard players set @a zjutmclub.second 0
scoreboard players set @a zjutmclub.minute 5