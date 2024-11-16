say 小游戏数据包加载成功!

tp @p -224 0 -124
gamemode adventure @p
effect clear @p

title @p title [{"text":"欢迎游玩!","color":"gold"}]
title @p subtitle [{"text":"书署名不然没分数哦","color":"red"}]

scoreboard objectives add flagClock dummy
scoreboard players set @s flagClock 0

# setblock -254 0 -125 minecraft:air
# setblock -254 0 -125 minecraft:lectern
clear @p

## 发一本书给玩家签名哈
give @p minecraft:writable_book 1

schedule function zjutmclub:entry_next 5s