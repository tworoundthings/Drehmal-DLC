tag @s add hp
execute as @s[tag=!finish] run execute at @e[tag=interact] run execute positioned as @s positioned ~ ~1 ~ run function dlc:modify/charge/1
execute as @s[tag=!finish] run schedule function dlc:modify/boots/hp_b 3.5s
data modify block 1000003 63 1000002 front_text.messages[1] set value '[{"nbt":"ArmorItems[0].tag.display.Name","entity":"@e[type=armor_stand,tag=hp,limit=1]","interpret":true},{"text":"⁺ʜᴘ"}]'
data modify entity @s ArmorItems[0].tag.display.Name set from block 1000003 63 1000002 front_text.messages[1]
item modify entity @s armor.feet dlc:boots/hp_modify1
execute as @e[tag=valid] unless predicate players:holding/upgrade1_b run item modify entity @s armor.feet dlc:upgrade1
tag @s remove hp
execute as @e[tag=finish] run tag @s remove finish