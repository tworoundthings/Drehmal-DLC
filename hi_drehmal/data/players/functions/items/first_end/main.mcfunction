execute as @s run scoreboard players reset @s use_first
execute at @s if entity @e[type=!player,type=!#core:oblivion_immune,distance=..8,nbt={HurtTime:10s},sort=nearest,limit=1] as @e[type=!player,type=!#core:oblivion_immune,distance=..8,nbt={HurtTime:10s},sort=nearest,limit=1] at @s run function players:items/first_end/use

execute at @s unless entity @e[type=!player,type=!#core:oblivion_immune,distance=..8,nbt={HurtTime:10s},sort=nearest,limit=1] positioned ^ ^ ^3 run function players:items/first_end/use