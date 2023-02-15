scoreboard players operation @s dg.door.zX = @e[type=marker,tag=dg.choice] dg.door.zX
scoreboard players operation @s dg.door.zY = @e[type=marker,tag=dg.choice] dg.door.zY
scoreboard players operation @s dg.door.zZ = @e[type=marker,tag=dg.choice] dg.door.zZ

# just to make clearing prettier
scoreboard players remove @s dg.door.zX 1
scoreboard players remove @s dg.door.zY 1
scoreboard players remove @s dg.door.zZ 1

scoreboard players operation @s dg.level = .level dg.build