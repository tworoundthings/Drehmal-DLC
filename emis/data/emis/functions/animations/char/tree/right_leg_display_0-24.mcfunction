#Project generated by Animated Java (https://animated-java.dev/)

execute if score .this aj.fram matches 0..7 run function emis:animations/char/tree/right_leg_display_0-7
execute if score .this aj.fram matches 8..15 run function emis:animations/char/tree/right_leg_display_8-15
execute if score .this aj.fram matches 16..23 run function emis:animations/char/tree/right_leg_display_16-23
execute if score .this aj.fram matches 24 run data modify entity @s Pose.Head set value [0f,0f,0f]