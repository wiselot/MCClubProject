scoreboard players add @p zjutmclub.scorediamod 1

tellraw @p [{"text":"围观群众:真的吗...难以置信...还有这样的事","color":"red"}]

tellraw @p [{"text":"下界之星：怎么没有这样的事？我们工大背负四非大学的名分太久了！唉你正好来了，把咱工大的双一流证书拿出来给大家伙看看！","color":"aqua"}]

tellraw @p [{"text":"他似乎示意你去跑道旁边某个房间里找什么...","color":"red"}]

# 计时从ns说话开始
scoreboard players set @p zjutmclub.second 0
scoreboard players set @p zjutmclub.minute 3
scoreboard objectives add zjutmclub.tick dummy