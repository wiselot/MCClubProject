scoreboard players add @p zjutmclub.scorediamod 1

title @p title [{"text":"似乎有什么地方的门开了...","color":"red"}]

scoreboard players set @p ifkey 0

#把铁门打开!
# 1
setblock -179 10 -145 air
setblock -179 10 -145 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -179 11 -145 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 2
setblock -179 10 -141 air
setblock -179 10 -141 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -179 11 -141 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 3
setblock -179 10 -137 air
setblock -179 10 -137 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -179 11 -137 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 4
setblock -179 10 -132 air
setblock -179 10 -132 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -179 11 -132 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 5
setblock -179 10 -122 air
setblock -179 10 -122 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -179 11 -122 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 6
setblock -179 10 -121 air
setblock -179 10 -121 minecraft:iron_door[half=lower,facing=east,hinge=right,open=true,powered=false]
setblock -179 11 -121 minecraft:iron_door[half=upper,facing=east,hinge=right,open=true,powered=false]

# 7
setblock -179 10 -112 air
setblock -179 10 -112 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -179 11 -112 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 8
setblock -179 10 -111 air
setblock -179 10 -111 minecraft:iron_door[half=lower,facing=east,hinge=right,open=true,powered=false]
setblock -179 11 -111 minecraft:iron_door[half=upper,facing=east,hinge=right,open=true,powered=false]

# 9
setblock -179 10 -104 air
setblock -179 10 -104 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -179 11 -104 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 10
setblock -179 10 -103 air
setblock -179 10 -103 minecraft:iron_door[half=lower,facing=east,hinge=right,open=true,powered=false]
setblock -179 11 -103 minecraft:iron_door[half=upper,facing=east,hinge=right,open=true,powered=false]

# 11
setblock -174 10 -94 air
setblock -174 10 -94 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -174 11 -94 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

# 12
setblock -174 10 -94 air
setblock -174 10 -94 minecraft:iron_door[half=lower,facing=east,hinge=right,open=true,powered=false]
setblock -174 11 -94 minecraft:iron_door[half=upper,facing=east,hinge=right,open=true,powered=false]

# 13(厕所1)
setblock -175 10 -136 air
setblock -175 10 -136 minecraft:iron_door[half=lower,facing=north,hinge=left,open=true,powered=false]
setblock -175 11 -136 minecraft:iron_door[half=upper,facing=north,hinge=left,open=true,powered=false]

# 14(厕所2)
setblock -172 10 -134 air
setblock -172 10 -134 minecraft:iron_door[half=lower,facing=east,hinge=left,open=true,powered=false]
setblock -172 11 -134 minecraft:iron_door[half=upper,facing=east,hinge=left,open=true,powered=false]

kill @e[type=minecraft:glow_item_frame]
summon minecraft:glow_item_frame -169 11 -137 {Facing:3,Item:{id:"minecraft:paper",tag:{RepairCost:0,display:{Name:'{"text":"差点被冲走的双一流证书"}'}},Count:1b}}