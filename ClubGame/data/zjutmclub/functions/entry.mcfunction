say 小游戏数据包加载成功!
title @a title {"text":"欢迎游玩!","color":"green"}

tellraw @a [{"text":"准备好开始新的游戏了吗?: ","color":"gold"},{"text":"[点这里开始]","color":"aqua","clickEvent":{"action":"run_command","value":"/function zjutmclub:start"}}]