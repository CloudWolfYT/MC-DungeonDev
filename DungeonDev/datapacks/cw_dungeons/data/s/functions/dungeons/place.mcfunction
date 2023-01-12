# directory to find what room to place
tag @s remove dg.choice

execute if score @s dg.level matches 0 run function s:dungeons/demo/names