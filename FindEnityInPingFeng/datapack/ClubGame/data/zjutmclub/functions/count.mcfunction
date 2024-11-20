effect clear @p

## 统计分数力!
scoreboard objectives remove zjutmclub.tick
## 换一下坐标!
tp @p -224 0 -124

## 公布分数!
tellraw @p [{"text":"统计分数中: ","color":"green"}]
tellraw @p [{"text":"你的分数是: ","color":"gold"},{"score":{"name":"@p","objective":"zjutmclub.scorediamod"}},{"text":" 分"}]
#execute as @p run data get block -254 0 -125
execute as @p run storeData

## 打广告和准备重新加载
tellraw @p [{"text":"欢迎访问我们的项目:","color":"gold"},{"text":"https://github.com/wiselot/MCClubProject","color":"aqua"},{"text":"(给个Star吧","color":"red"},{"text":"(悲","color":"blue"}]
tellraw @p [{"text":"游戏结束: ","color":"gold"},{"text":"[点这里开始下一次哦]","color":"aqua","clickEvent":{"action":"run_command","value":"/reload"}}]
