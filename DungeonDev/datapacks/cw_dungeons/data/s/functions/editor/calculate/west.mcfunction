execute store result score #X dg run data get entity @s Pos[0]
execute store result score #Y dg run data get entity @s Pos[1]
execute store result score #Z dg run data get entity @s Pos[2]

scoreboard players operation .r dg = #Z dg
scoreboard players operation .r dg -= #oZ dg
scoreboard players operation .l dg = #sZ dg
scoreboard players operation .l dg -= .r dg
scoreboard players remove .l dg 1
scoreboard players operation .d dg = #Y dg
scoreboard players operation .d dg -= #oY dg
scoreboard players operation .u dg = #sY dg
scoreboard players operation .u dg -= .d dg
scoreboard players remove .u dg 1
