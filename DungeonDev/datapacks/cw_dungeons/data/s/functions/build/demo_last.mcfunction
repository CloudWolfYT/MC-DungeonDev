# copies seed to use for LCG
#function s:build/clear

scoreboard players set .seeded dg.build 1
scoreboard players operation .seed dg.build = #seed dg
execute positioned 0 64 0 run function s:build/start