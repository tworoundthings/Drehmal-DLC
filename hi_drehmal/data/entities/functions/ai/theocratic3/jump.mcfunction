execute store result score @s spm.x run data get entity @s Pos[0] -100
execute store result score @s spm.y run data get entity @s Pos[1] -100
execute store result score @s spm.z run data get entity @s Pos[2] -100

tp ^ ^ ^0.75

execute store result score @s spm.px run data get entity @s Pos[0] -100
execute store result score @s spm.py run data get entity @s Pos[1] -100
execute store result score @s spm.pz run data get entity @s Pos[2] -100

tp ^ ^ ^-0.75

scoreboard players operation @s spm.x -= @s spm.px
scoreboard players operation @s spm.y -= @s spm.py
scoreboard players operation @s spm.z -= @s spm.pz

scoreboard players set @s spm.y 2

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s spm.x
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s spm.y
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s spm.z


data modify entity @s OnGround set value 0b

particle poof ~ ~0.1 ~ 1 0.2 1 0 20
playsound minecraft:dcustom.entity.horse.jump hostile @a
tag @s add jumping
item replace entity @s weapon.mainhand with diamond_sword{CustomModelData:8,Damage:0,Enchantments:[{id:"minecraft:sharpness",lvl:20}]} 1
attribute @s minecraft:generic.movement_speed base set 0.22