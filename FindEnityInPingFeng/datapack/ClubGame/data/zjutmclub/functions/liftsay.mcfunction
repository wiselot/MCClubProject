scoreboard players add @p zjutmclub.scorediamod 1

tellraw @p [{"text":"你学会了电梯维修,坏掉的电梯都能被你修好了捏","color":"aqua"}]
scoreboard players set @p iflift 0

# 电子密钥
setblock -174 14 -149 chest
data merge block -174 14 -149 {Items:[{Count:1b,Slot:0b,id:"minecraft:tripwire_hook",tag:{display:{Name:'{"text":"不知是何处的电子密钥"}'}}}],id:"minecraft:chest",x:-174,y:14,z:-149}

