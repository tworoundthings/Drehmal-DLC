#Project generated by Animated Java (https://animated-java.dev/)

tag @s add aj.emis.anim.spw1
execute if score .aj.emis.framerate aj.i matches ..-1 run scoreboard players set @s aj.fram 243
execute if score .aj.emis.framerate aj.i matches 1.. run scoreboard players set @s aj.fram 0
scoreboard players add .noScripts aj.i 0
execute if score .aj.anim_loop aj.emis.anim matches 0 run function emis:animation_loop
scoreboard players set #execute aj.i 1