#data merge entity wiselot {Inventory:[{Slot:0b,id:"minecraft:writable_book",Count:1b,tag:{Score:1}}]}

#execute as wiselot store result score wiselot scorediamod run data get block -239 1 -113 Items

title @p title [{"text":"欢迎游玩!","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\n请署名手上的书!","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\n不然没分数哦\n","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]