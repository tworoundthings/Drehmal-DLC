execute at @s run effect give @s blindness 5 5 true
execute at @s run effect give @s slowness 5 5 true
execute at @s run effect give @s nausea 5 5 true
execute at @s run tp @s 5180 400 -2972
execute at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 2 0 
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 2000 0 
execute at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 10 100
execute at @s run effect give @s slow_falling 7 0 true
