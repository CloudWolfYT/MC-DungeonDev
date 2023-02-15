summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg dg run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp dg run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 dg run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 dg run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg dg += #temp dg
scoreboard players operation #lcg dg += #temp1 dg
scoreboard players operation #lcg dg += #temp2 dg
kill @e[tag=uuid]