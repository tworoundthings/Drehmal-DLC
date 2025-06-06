scoreboard players set @s damage_s 42
scoreboard players set @s speed 0

scoreboard players set @s time_limit 400

execute unless score #pavgun? temp matches 1 run tag @s add enemy_proj
data modify entity @s Pos set from storage drehmal:entities tempEntity.Pos
execute at @s facing entity @e[type=arrow,tag=temp_avgun,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s if score #skeleton? temp matches 1 run teleport @s ~ ~ ~ ~ ~8
execute rotated as @s run teleport @s ~ ~-1.7 ~ ~ ~
tag @s remove special
execute unless score #pavgun? temp matches 1 at @s run function projectiles:enemy/main

schedule function entities:proj_schedule 1t