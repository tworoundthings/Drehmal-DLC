function core:rng
scoreboard players operation #rand temp %= #4 const
scoreboard players operation #spawnType temp = #rand temp

execute if score #spawnType temp matches 0 run scoreboard players set #packCap num 1
execute if score #spawnType temp matches 0 run function entities:spawn/lodahr_cycle/passive/checks/pseudodragon_green

execute if score #spawnType temp matches 1.. run scoreboard players set #packCap num 4
execute if score #spawnType temp matches 1.. run function entities:spawn/lodahr_cycle/passive/checks/goat
