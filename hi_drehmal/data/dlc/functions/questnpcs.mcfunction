tellraw @s {"text":"This may take a while... do not run any additional commands until this is finished!","bold":true,"color":"dark_red"}

setblock 1000003 63 1000002 minecraft:spruce_sign

execute positioned 505.51 67.00 1835.52 run forceload add ~ ~

execute positioned 880.51 66.06 485.53 run forceload add ~ ~

execute positioned 1069.63 66.00 1964.44 run forceload add ~ ~

execute positioned -2719.50 64.00 -1641.50 run forceload add ~ ~

execute positioned 2217.55 111.00 -778.46 run forceload add ~ ~

execute positioned -2979.47 141.00 -159.46 run forceload add ~ ~

execute positioned 3827.52 69.00 3577.51 run forceload add ~ ~

execute positioned -1718.49 161.00 1900.50 run forceload add ~ ~

execute positioned 2290.49 50.00 2488.49 run forceload add ~ ~

execute positioned 5878 66 -1088 run forceload add ~ ~

execute positioned 31.48 67.00 5263.55 run forceload add ~ ~

execute positioned 4138.50 65.00 1755.5 run forceload add ~ ~

execute positioned -2167.52 65.00 3701.21 run forceload add ~ ~

execute positioned -1261.2 46.50 -4062.47 run forceload add ~ ~

execute positioned 4735.45 71.00 5657.50 run forceload add ~ ~

execute positioned 4618 68 -2814 run forceload add ~ ~

execute positioned 4727 64 5821 run forceload add ~ ~

execute positioned -1570 65 -522 run forceload add ~ ~

execute positioned 2021 116 -787 run forceload add ~ ~

execute positioned -2944 92 5160 run forceload add ~ ~

execute in minecraft:lodahr positioned 257.50 86.00 -811.50 run forceload add ~ ~

execute in minecraft:lodahr positioned -964 246 -946 run forceload add ~ ~

execute in minecraft:lodahr positioned -69 11 -1646 run forceload add ~ ~

execute in minecraft:lodahr positioned -857 194 534 run forceload add ~ ~

execute in minecraft:lodahr positioned 1269 54 1205 run forceload add ~ ~


schedule function dlc:questnpcs_2 3s

tag @s add DLC_temp