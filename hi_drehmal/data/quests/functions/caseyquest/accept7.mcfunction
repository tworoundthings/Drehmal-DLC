execute positioned ~ ~ ~ as @p[tag=qst4] at @s run tellraw @s ["",{"text":"Quest Started: ","color":"yellow"},{"text":"Sabotage Johmund's Melon Business","color":"white"}]
execute positioned ~ ~ ~ as @p[tag=qst4] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
execute positioned ~ ~ ~ as @p[tag=qst4] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 40
execute as @e[type=villager,name="Melon Masher Casey"] run tag @s add qstarted