scoreboard players remove #x dg 1

function s:build/dynaclear/clear/fill_z

execute if score #x dg matches 0.. positioned ~1 ~ ~ run function s:build/dynaclear/clear/fill_x