function core:rng
scoreboard players operation #rand temp %= #4 const
execute if score #rand temp matches 0 unless score @s prevLambient matches 1 run function players:music/tribute
execute if score #rand temp matches 1 unless score @s prevLambient matches 3 run function players:music/omen
execute if score #rand temp matches 2 unless score @s prevLambient matches 5 run function players:music/lodahr6
execute if score #rand temp matches 3 unless score @s prevLambient matches 6 run function players:music/gloom

execute unless score @s playingMusic matches 1.. run function players:music/lodahr/khive