# replace with custommodeldata 1000002, Filled:1
scoreboard players set #tmp temp 0
execute unless entity @s[gamemode=creative] if predicate players:holding/eldermead_mainhand store success score #tmp temp run item replace entity @s weapon.mainhand with minecraft:potion{CustomModelData:1000005,Eldermead:1b,Filled:2,CustomPotionEffects:[{Id:23,Amplifier:7},{Id:22,Amplifier:1,Duration:2419},{Id:10,Duration:219,Amplifier:1}],CustomPotionColor:16777215,HideFlags:32,display:{Name:'{"text":"Eldermead","italic":"false","color":"light_purple","underlined":"true"}',Lore:['{"text":"With unprecedented anxiousness,"}','{"text":"the Life-Bringer offers a draught"}','{"text":"of restorative honey-wine ordinarily"}','{"text":"reserved for healing Aspects and"}','{"text":"their chosen La’Tehrmari."}','{"text":""}','{"text":"Bountiful Vitality","color":"light_purple","italic":"false"}','{"text":"This item can be drunk multiple times,","color":"dark_gray"}','{"text":"and restores both health and hunger.","color":"dark_gray"}','{"text":""}','{"text":"Legendary","color":"light_purple","italic":"false"}']}}


execute unless score #tmp temp matches 1 unless entity @s[gamemode=creative] if predicate players:holding/eldermead_offhand run item replace entity @s weapon.offhand with minecraft:potion{CustomModelData:1000005,Eldermead:1b,Filled:2,CustomPotionEffects:[{Id:23,Amplifier:7},{Id:22,Amplifier:1,Duration:2419},{Id:10,Duration:219,Amplifier:1}],CustomPotionColor:16777215,HideFlags:32,display:{Name:'{"text":"Eldermead","italic":"false","color":"light_purple","underlined":"true"}',Lore:['{"text":"With unprecedented anxiousness,"}','{"text":"the Life-Bringer offers a draught"}','{"text":"of restorative honey-wine ordinarily"}','{"text":"reserved for healing Aspects and"}','{"text":"their chosen La’Tehrmari."}','{"text":""}','{"text":"Bountiful Vitality","color":"light_purple","italic":"false"}','{"text":"This item can be drunk multiple times,","color":"dark_gray"}','{"text":"and restores both health and hunger.","color":"dark_gray"}','{"text":""}','{"text":"Legendary","color":"light_purple","italic":"false"}']}}

execute unless entity @s[gamemode=creative] run scoreboard players set @s drankEldermead 4

advancement revoke @s only players:use_eldermead_3
