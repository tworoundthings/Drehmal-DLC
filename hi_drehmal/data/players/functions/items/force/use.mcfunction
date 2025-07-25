execute at @s run summon marker ^ ^ ^ {Tags:["playerdist"]} 
execute at @e[tag=playerdist] as @s run execute as @e[distance=..4,type=!player,type=!#entities:dummy,type=!#entities:highcapacity,type=!#entities:proj,limit=1,sort=nearest] run execute at @s run summon marker ^ ^ ^ {Tags:["thun_dmg"]}
execute at @e[tag=thun_dmg] as @s run execute as @e[distance=..3,type=!player,type=!#entities:dummy,type=!#entities:highcapacity,type=!#entities:proj] run tag @s add thun
execute as @e[tag=thun,tag=!thum_dmg] as @s at @s run function particle:effects/rings/thunder_ring
execute as @e[tag=thun,tag=!thum_dmg] as @s at @s run playsound minecraft:dcustom.entity.lightning_bolt.impact player @a ~ ~ ~ 1 1
execute as @e[tag=thun,tag=!thum_dmg] as @s at @s as @s run effect give @s slowness 6 0 false
execute as @e[tag=thun,tag=!thum_dmg] at @s as @s run effect give @s weakness 6 0 false
execute as @e[tag=thun,tag=!thum_dmg] at @s as @s run effect give @s mcdar:stunned 1 0 false
execute as @e[tag=thun,tag=!thum_dmg] at @s as @s run effect give @s glowing 1 0 false
execute at @e[tag=thun] run summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["lightning"]}
execute at @e[tag=thun] run summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["lightning"]}
execute at @e[tag=thun] run summon area_effect_cloud ~ ~ ~ {Duration:40,Tags:["lightning"]}

execute as @e[tag=thun] run damage @s 10 minecraft:strangled by @p
kill @e[tag=thun_dmg]
kill @e[tag=playerdist]
tag @e[tag=thun] remove thun
execute as @s[scores={thun=40..}] run scoreboard players reset @s thun
scoreboard players reset @s use_thun