effect give @p nausea 8 1
effect give @p blindness 8 1

tp @p -200 0 -120
tellraw @p [{"text":"[你]我怎么在这里...","color":"blue"}]
tellraw @p [{"text":"[你]陌生的...天花板...","color":"blue"}]

title @p title [{"text":"工大真的成为双一流了吗...?","color":"aqua","stay":6}]
title @p subtitle [{"text":"刚刚是一场梦吗...?","color":"green"}]

schedule function zjutmclub:count 15s