data modify entity @s Pos set from storage drehmal:entities tempPos
execute at @s facing 0.0 0.0 0.0 facing ^ ^ ^-1 positioned 1000000 0 1000000 run teleport @s ~ ~ ~ ~ ~
execute rotated as @s facing ^ ^1 ^ run function players:items/proxigea/ring/impact
