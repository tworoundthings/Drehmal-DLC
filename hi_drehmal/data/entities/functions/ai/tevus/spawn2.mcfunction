tp @e[tag=tevus] ~ ~ ~

execute unless score #low_particles? bool matches 1 run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 300
execute unless score #low_particles? bool matches 1 run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.2 100
execute unless score #low_particles? bool matches 1 run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
playsound minecraft:dcustom.entity.illusioner.prepare_blindness ambient @a ~ ~ ~ 3 0.6
playsound minecraft:dcustom.entity.zombie_villager.cure ambient @a ~ ~ ~ 2 0.8

bossbar set health2 name {"text":"Tevus, the Second General","obfuscated":false,"color":"white"}
bossbar set health2 visible true

execute as @e[tag=tevus] run scoreboard players reset @s ai_state2
execute as @e[tag=tevus] run data remove entity @s NoAI

execute if score #noswap2 bool matches 1 run tellraw @a[predicate=players:in_generals_arena] ["",{"text":"["},{"text":"Tevus, the Second General","color": "#FF7300"},{"text":"]"},{"text":" Avsohm dies with you!"}]
