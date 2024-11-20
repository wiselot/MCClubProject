say 小游戏数据包加载成功!

tp @p -224 0 -124
gamemode adventure @p
effect clear @p

title @p title [{"text":"欢迎游玩!","color":"gold"}]
title @p subtitle [{"text":"书署名不然没分数哦","color":"red"}]

## 是否启动计时
scoreboard objectives add flagClock dummy
scoreboard players set @p flagClock 0

## NS是否在开会捏
scoreboard objectives add ifns dummy
scoreboard players set @p ifns 0

## 找到维修手册了吗
scoreboard objectives add iflift dummy
scoreboard players set @p iflift 0

## 找到电子密钥了吗
scoreboard objectives add ifkey dummy
scoreboard players set @p ifkey 0

## 找到双一流证书了吗
scoreboard objectives add ifCert dummy
scoreboard players set @p ifCert 0

## NS的双一流认证哈
scoreboard objectives add ifnsnext dummy
scoreboard players set @p ifnsnext 0

clear @p

## 发一本书给玩家签名哈
give @p minecraft:writable_book 1

schedule function zjutmclub:entry_next 5s