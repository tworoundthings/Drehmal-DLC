execute positioned ~ ~ ~ as @p[tag=qst7] at @s run tellraw @s ["",{"text":"Quest Started: ","color":"yellow"},{"text":"Steal the Tide Queen's Blade","color":"white"}]
execute positioned ~ ~ ~ as @p[tag=qst7] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
execute positioned ~ ~ ~ as @p[tag=qst7] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 40
execute as @e[type=villager,name="Dredd'Lohk"] run tag @s add qstarted
