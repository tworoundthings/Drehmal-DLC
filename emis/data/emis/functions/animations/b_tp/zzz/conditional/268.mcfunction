#Project generated by Animated Java (https://animated-java.dev/)

tag @s remove aj.emis.anim.b_tp
scoreboard players set @s aj.fram 0
scoreboard players operation .oldValue aj.i = .noScripts aj.i
scoreboard players set .noScripts aj.i 1
function emis:animations/b_tp/next_frame
scoreboard players operation .noScripts aj.i = .oldValue aj.i
scoreboard players set @s aj.fram 0
scoreboard players set #execute aj.i 1