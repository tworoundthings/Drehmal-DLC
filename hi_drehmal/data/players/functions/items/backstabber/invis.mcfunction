execute as @e[type=!player,type=!#entities:dummy,type=!#entities:highcapacity,type=!#entities:proj,tag=!firsthit,tag=!firsthit1,tag=!secondhit] at @s if predicate entities:hurt2 run tag @s add firsthit
execute as @e[tag=firsthit,tag=!firsthit1,tag=!secondhit] run execute as @s at @s run playsound minecraft:entity.turtle.egg_break player @a ~ ~ ~ 1 0
execute as @e[tag=firsthit,tag=!firsthit1,tag=!secondhit] run damage @s 20 generic by @p
execute as @e[type=!player,type=!#entities:dummy,type=!#entities:highcapacity,type=!#entities:proj,tag=!firsthit1] at @s if predicate entities:hurt2 run tag @s add firsthit1
function core:rng
scoreboard players operation #rand temp %= #10 const
execute if score #rand temp matches 1 run execute as @e[type=!player,type=!#entities:dummy,type=!#entities:highcapacity,type=!#entities:proj,tag=!secondhit] at @s if predicate entities:hurt2 run tag @s add secondhit
execute as @e[tag=secondhit,tag=!secondhit1] run execute as @s at @s run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.6
execute as @e[tag=secondhit,tag=!secondhit1] run execute as @s at @s run particle block redstone_block ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal @a
execute as @e[tag=secondhit,tag=!secondhit1] run damage @s 40 generic by @p
execute as @e[type=!player,type=!#entities:dummy,type=!#entities:highcapacity,type=!#entities:proj,tag=!secondhit1] at @s if predicate entities:hurt2 run tag @s add secondhit1
execute as @s run scale set pehkui:entity_reach 0.5 @s