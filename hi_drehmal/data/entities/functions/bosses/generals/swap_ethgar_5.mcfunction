execute if score #generals int matches 0 as @e[tag=temp_spawn,limit=1] at @s run function entities:ai/tevus/spawn2
execute if score #generals int matches 0 run tellraw @a[predicate=players:in_generals_arena] ["",{"text":"["},{"text":"Tevus, the Second General","color": "#FF7300"},{"text":"]"},{"text":" It shall be so."}]

execute if score #generals int matches 1 as @e[tag=temp_spawn,limit=1] at @s run function entities:ai/rhalon/spawn2
execute if score #generals int matches 1 run tellraw @a[predicate=players:in_generals_arena] ["",{"text":"["},{"text":"Rhalon, the First General","color":"dark_red"},{"text":"]"},{"text":" IT CRIES OUT FOR VICTORY!"}]

execute as @e[tag=ethgar] run effect give @s extraalchemy:recall 10 10 true
execute as @e[tag=ethgar] run effect clear @s extraalchemy:recall
execute as @e[tag=ethgar] run data modify entity @s NoAI set value 1b
execute as @e[tag=ethgar] run execute at @s run tp ~ ~195 ~
schedule function entities:bosses/generals/align_ethgar 10t

kill @e[tag=temp_spawn]
scoreboard players reset #generals2 int
