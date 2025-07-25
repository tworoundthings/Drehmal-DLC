
execute as @p[predicate=entities:overhead_clear] at @s store result score .target x run data get entity @s Pos[0] 100
execute as @p[predicate=entities:overhead_clear] at @s store result score .target z run data get entity @s Pos[2] 100

execute store result score .self x run data get entity @s Pos[0] 100
execute store result score .self z run data get entity @s Pos[2] 100

scoreboard players operation .target x -= .self x
scoreboard players operation .target z -= .self z

scoreboard players set .target y 6

function core:rng
scoreboard players operation #tevus_proj temp = #rand temp
scoreboard players operation #tevus_proj temp %= #2000 const
scoreboard players operation #tevus_proj temp -= #1000 const
scoreboard players operation .target x += #tevus_proj temp

function core:rng
scoreboard players operation #tevus_proj temp = #rand temp
scoreboard players operation #tevus_proj temp %= #2000 const
scoreboard players operation #tevus_proj temp -= #1000 const
scoreboard players operation .target z += #tevus_proj temp

function core:rng
scoreboard players operation #tevus_proj temp = #rand temp
scoreboard players operation #tevus_proj temp %= #5 const
scoreboard players operation .target y += #tevus_proj temp

execute store result entity @s Motion[0] double 0.00015 run scoreboard players get .target x
execute store result entity @s Motion[1] double 0.1 run scoreboard players get .target y
execute store result entity @s Motion[2] double 0.0003 run scoreboard players get .target z

data modify entity @s Air set value 2s