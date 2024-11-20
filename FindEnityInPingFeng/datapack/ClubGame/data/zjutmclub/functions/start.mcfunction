## 开始新的游戏 !

# 清除物品前记录一下名字哈
execute as @p run getData

clear @p
effect give @p minecraft:speed 500 10
effect give @a minecraft:resistance 300 5
# ns说给个抗性5
scoreboard players set @p flagClock 1

scoreboard objectives add zjutmclub.scorediamod dummy
scoreboard players set @p zjutmclub.scorediamod 0

scoreboard objectives add flagScoreWait dummy
scoreboard players set @p flagScoreWait 1

## 门状态还原
# 1
setblock -179 10 -145 air
setblock -179 10 -145 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -179 11 -145 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 2
setblock -179 10 -141 air
setblock -179 10 -141 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -179 11 -141 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 3
setblock -179 10 -137 air
setblock -179 10 -137 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -179 11 -137 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 4
setblock -179 10 -132 air
setblock -179 10 -132 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -179 11 -132 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 5
setblock -179 10 -122 air
setblock -179 10 -122 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -179 11 -122 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 6
setblock -179 10 -121 air
setblock -179 10 -121 minecraft:iron_door[half=lower,facing=east,hinge=right,open=false,powered=false]
setblock -179 11 -121 minecraft:iron_door[half=upper,facing=east,hinge=right,open=false,powered=false]

# 7
setblock -179 10 -112 air
setblock -179 10 -112 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -179 11 -112 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 8
setblock -179 10 -111 air
setblock -179 10 -111 minecraft:iron_door[half=lower,facing=east,hinge=right,open=false,powered=false]
setblock -179 11 -111 minecraft:iron_door[half=upper,facing=east,hinge=right,open=false,powered=false]

# 9
setblock -179 10 -104 air
setblock -179 10 -104 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -179 11 -104 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 10
setblock -179 10 -103 air
setblock -179 10 -103 minecraft:iron_door[half=lower,facing=east,hinge=right,open=false,powered=false]
setblock -179 11 -103 minecraft:iron_door[half=upper,facing=east,hinge=right,open=false,powered=false]

# 11
setblock -174 10 -94 air
setblock -174 10 -94 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -174 11 -94 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

# 12
setblock -174 10 -94 air
setblock -174 10 -94 minecraft:iron_door[half=lower,facing=east,hinge=right,open=false,powered=false]
setblock -174 11 -94 minecraft:iron_door[half=upper,facing=east,hinge=right,open=false,powered=false]

# 13(厕所1)
setblock -175 10 -136 air
setblock -175 10 -136 minecraft:iron_door[half=lower,facing=north,hinge=left,open=false,powered=false]
setblock -175 11 -136 minecraft:iron_door[half=upper,facing=north,hinge=left,open=false,powered=false]

# 14(厕所2)
setblock -172 10 -134 air
setblock -172 10 -134 minecraft:iron_door[half=lower,facing=east,hinge=left,open=false,powered=false]
setblock -172 11 -134 minecraft:iron_door[half=upper,facing=east,hinge=left,open=false,powered=false]

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
summon minecraft:glow_item_frame -319 2 -86 {Facing:5,Item:{id:"minecraft:clay_ball",tag:{RepairCost:0,display:{Name:'{"text":"底气!"}'}},Count:1b}}
# 我爱工大
summon minecraft:glow_item_frame -142 0 -114 {Facing:1,Item:{id:"minecraft:red_dye",tag:{RepairCost:0,display:{Name:'{"text":"我爱浙江工业大学"}'}},Count:1b}}
# 隔间校园卡
#summon minecraft:glow_item_frame -180 3 -188 {Facing:1,Item:{id:"minecraft:warped_trapdoor",tag:{RepairCost:0,display:{Name:'{"text":"不知是谁遗失的校园卡"}'}},Count:1b}}
summon minecraft:glow_item_frame -180 0 -150 {Facing:1,Item:{id:"minecraft:warped_trapdoor",tag:{RepairCost:0,display:{Name:'{"text":"不知是谁遗失的校园卡"}'}},Count:1b}}

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

#
#
#
## 铁门关上哈
#
#
#

title @a title {"text":"努力找到所有宝藏!","color":"yellow"}

scoreboard objectives add zjutmclub.minute dummy
scoreboard objectives add zjutmclub.second dummy
scoreboard objectives add zjutmclub.tick dummy

scoreboard players set @a zjutmclub.tick 0
scoreboard players set @a zjutmclub.second 0
scoreboard players set @a zjutmclub.minute 5