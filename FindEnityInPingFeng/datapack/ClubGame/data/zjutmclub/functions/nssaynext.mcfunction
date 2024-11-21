scoreboard players add @p zjutmclub.scorediamod 1

scoreboard players set @p ifnsnext 0
execute as @s run function zjutmclub:count

title @p title [{"text":"下界之星:看,咱们学校果然是双一流吧,哈哈哈哈...","color":"aqua"}]
title @p subtitle [{"text":"围观群众:是啊是啊,还真是这么回事捏,哈哈哈哈...","color":"green"}]

tellraw @p [{"text":"[你]好耶,完成任务了...哈哈哈哈哈","color":"yellow"}]
schedule function zjutmclub:finish_room 8s