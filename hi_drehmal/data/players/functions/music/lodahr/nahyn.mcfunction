function core:rng
scoreboard players operation #rand temp %= #2 const
execute if score #rand temp matches 0 unless score @s prevLambient matches 1 run function players:music/tribute
execute if score #rand temp matches 1 unless score @s prevLambient matches 4 run function players:music/nascence

execute unless score @s playingMusic matches 1.. run function players:music/lodahr/nahyn