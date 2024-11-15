## 统计分数力!
scoreboard objectives remove zjutmclub.tick
## 换一下坐标!
tp @s -239 1 -113
#execute as @p store result score @p zjutmclub.scorediamod run data get entity @p Inventory

## 公布分数!
tellraw @s [{"text":"你的分数是: ","color":"gold"},{"score":{"name":"@p","objective":"zjutmclub.scorediamod"}},{"text":" 分"}]
tellraw @s [{"text":"统计分数中: ","color":"green"}]


## 准备重新加载
tellraw @a [{"text":"游戏结束: ","color":"gold"},{"text":"[点这里开始下一次哦]","color":"aqua","clickEvent":{"action":"run_command","value":"/reload"}}]
