tellraw @a [{"selector":"@s"},{"text":"你找到了所有宝藏!","color":"green"}]
title @p title {"text":"你找到了所有宝藏!","color":"green"}

scoreboard players set @p flagScoreWait 0

#execute as @p run function zjutmclub:count

# 有附加环节哦

scoreboard objectives remove zjutmclub.tick
schedule function zjutmclub:addition 2s