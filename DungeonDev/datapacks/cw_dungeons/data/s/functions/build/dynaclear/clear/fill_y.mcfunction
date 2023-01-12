scoreboard players remove #y dg 1

scoreboard players operation #x dg = @s dg.door.zX
function s:build/dynaclear/clear/fill_x

execute if score #y dg matches 0.. positioned ~ ~1 ~ run function s:build/dynaclear/clear/fill_y