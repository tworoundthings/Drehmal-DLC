function core:rng
scoreboard players operation @s temp = #rand temp
scoreboard players operation @s temp %= #3 const


scoreboard players reset @s ai_timer2
scoreboard players reset @s ai_state2



execute if score @s temp matches 0 as @s run function entities:ai/rhalon/attack1

execute if score @s temp matches 1 as @s run function entities:ai/rhalon/attack2

execute if score @s temp matches 2 as @s at @s run function entities:ai/rhalon/attack3


execute as @s run scale set pehkui:falling 0
