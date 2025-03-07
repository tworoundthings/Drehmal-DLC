#give @s netherite_sword{display:{Name:'{"text":"Ascendance","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"Deep within the flooded caverns of"}','{"text":"Lorahn\'Kahl lies the Moonlight Sanctum,"}','{"text":"the crux of the Tri-Moon Theocracy\'s"}','{"text":"greater machinations. As said by the"}','{"text":"eidolic whispers, the sanctum was"}','{"text":"designed to create an endless"}','{"text":"necromantic loop. This blade was part"}','{"text":"of that cycle, having killed millions"}','{"text":"of undead souls. To what ambitious end"}','{"text":"the sanctum served was known only by"}','{"text":"its creators."}','{"text":" "}','{"text":"Holy Moonlight","color":"gold","italic":false}','{"text":"Press your drop item key to fire","color":"dark_gray","italic":true}','{"text":"an armor piercing wave of","color":"dark_gray","italic":true}','{"text":"weakening moonlight.","color":"dark_gray","italic":true}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"+6 Max Health","color":"blue","italic":false}','{"text":"50% Knockback Resistance","color":"blue","italic":false}','{"text":"-0.01 Movement Speed","color":"blue","italic":false}','{"text":"15 Attack Damage","color":"blue","italic":false}','{"text":"1 Attack Speed","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','{"text":"This item cannot be enchanted.","color":"dark_gray","italic":true}','{"text":" "}','{"text":"Mythical","color":"gold","italic":false}']},HideFlags:6,Unbreakable:1b,Ascendance:1b,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.01,Operation:0,UUID:[I;-1410573437,974539384,-1797336722,1869197745],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;352596617,1806651375,-1179607509,-1762387518],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;1074861351,-1711255859,-1761831988,-954013233],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5,Operation:0,UUID:[I;1765078993,-914273615,-1888441220,48717073],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:6,Operation:0,UUID:[I;1553698852,-1397014034,-1877539844,182060398],Slot:"mainhand"}],Mythic:1b,CustomModelData:2}

#function players:crafts/ascendance

data modify storage drehmal:core tempUuid set from entity @s UUID

summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Ascendance","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"Deep within the flooded caverns of"}','{"text":"Lorahn\'Kahl lies the Moonlight Sanctum,"}','{"text":"the crux of the Tri-Moon Theocracy\'s"}','{"text":"greater machinations. As said by the"}','{"text":"eidolic whispers, the sanctum was"}','{"text":"designed to create an endless"}','{"text":"necromantic loop. This blade was part"}','{"text":"of that cycle, having killed millions"}','{"text":"of undead souls. To what ambitious end"}','{"text":"the sanctum served was known only by"}','{"text":"its creators."}','{"text":" "}','{"text":"Holy Moonlight","color":"gold","italic":false}','{"text":"Press your drop item key to fire an","color":"dark_gray","italic":true}','{"text":"armor piercing wave of weakening","color":"dark_gray","italic":true}','{"text":"moonlight.","color":"dark_gray","italic":true}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"+6 Max Health","color":"blue","italic":false}','{"text":"50% Knockback Resistance","color":"blue","italic":false}','{"text":"-0.01 Movement Speed","color":"blue","italic":false}','{"text":"18 Ability Damage","color":"blue","italic":false}','{"text":"15 Attack Damage","color":"blue","italic":false}','{"text":"1 Attack Speed","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','[{"text":"Mythical ","color":"gold","italic":false},{"text":"[","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"]","color":"gray","italic":false}]']},HideFlags:6,Unbreakable:1b,CustomModelData:2,Soletta:1b,Ascendance:1b,Mythic:1b,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.01,Operation:0,UUID:[I;-102606226,2025997707,-1373986740,-1704356380],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I;2072577851,120999503,-1749411009,-2096899560],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-262523576,898452614,-1821445222,50512872],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-1835353323,1591362224,-1769998874,-2027172568],Slot:"mainhand"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:6,Operation:0,UUID:[I;-1145622173,-282441377,-1886937857,1242688939],Slot:"mainhand"}],FlavorText:['{"text":"Deep within the flooded caverns of"}','{"text":"Lorahn\'Kahl lies the Moonlight Sanctum,"}','{"text":"the crux of the Tri-Moon Theocracy\'s"}','{"text":"greater machinations. As said by the"}','{"text":"eidolic whispers, the sanctum was"}','{"text":"designed to create an endless"}','{"text":"necromantic loop. This blade was part"}','{"text":"of that cycle, having killed millions"}','{"text":"of undead souls. To what ambitious end"}','{"text":"the sanctum served was known only by"}','{"text":"its creators."}','{"text":" "}','{"text":"Holy Moonlight","color":"gold","italic":false}','{"text":"Press your drop item key to fire an","color":"dark_gray","italic":true}','{"text":"armor piercing wave of weakening","color":"dark_gray","italic":true}','{"text":"moonlight.","color":"dark_gray","italic":true}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}']}},Tags:["scanned","temp"]}

execute as @e[type=item,tag=temp] run function players:misc/mythic_owner

#kill @e[type=item,predicate=players:is_asc,tag=!scanned]
execute positioned -617.5 54.5 5027.00 run function players:misc/asc_ring
playsound minecraft:dcustom.entity.elder_guardian.ambient player @a -617.5 54.5 5027.00 2 2
execute at @s at @s as @a[distance=..50] at @s run playsound minecraft:pickup.asc record @s
advancement grant @a only weapons:ascendance
advancement revoke @s only players:asc
scoreboard players set #asc_picked? bool 1

kill @e[type=armor_stand,tag=asc_display]
execute as @e[type=villager,tag=asc_pickup] at @s run teleport ~ -1000 ~
