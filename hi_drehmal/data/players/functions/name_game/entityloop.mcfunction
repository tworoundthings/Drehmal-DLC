scoreboard players reset #timestamp2 temp
execute store result score #timestamp2 temp run data get storage drehmal:players tempInv[0].tag.dia.timestamp
execute if score #timestamp2 temp <= #time temp if score #timestamp2 temp matches 1.. if entity @s[type=llama] run function players:name_game/return/horse
execute if score #timestamp2 temp <= #time temp if score #timestamp2 temp matches 1.. if entity @s[type=mule] run function players:name_game/return/horse
execute if score #timestamp2 temp <= #time temp if score #timestamp2 temp matches 1.. if entity @s[type=donkey] run function players:name_game/return/horse
execute if score #timestamp2 temp <= #time temp if score #timestamp2 temp matches 1.. if entity @s[type=chest_minecart] run function players:name_game/return/inv
execute if score #timestamp2 temp <= #time temp if score #timestamp2 temp matches 1.. if entity @s[type=hopper_minecart] run function players:name_game/return/inv

data modify storage drehmal:players tempInv append from storage drehmal:players tempInv[0]
data remove storage drehmal:players tempInv[0]

scoreboard players remove #loop2 temp 1
execute if score #loop2 temp matches 1.. run function players:name_game/entityloop