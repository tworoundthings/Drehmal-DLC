give @s warped_fungus_on_a_stick{AvHorseRemote:1b,display:{Name:'[{"text":"WarpHorse Receiver MkII","italic":"false","color":"light_purple","underlined":"true"}]',Lore:['{"text":"An ancient piece of military"}','{"text":"tech that somehow remains"}','{"text":"functional."}','{"text":" "}','{"text":"Terminus Fetch","color":"light_purple","italic":"false"}','{"text":"Hold crouch and right-click to","color":"dark_gray"}','{"text":"access WarpHorse database.","color":"dark_gray"}','{"text":"Right-click to summon","color":"dark_gray"}','{"text":"favorited horse.","color":"dark_gray"}','{"text":" "}','{"text":"Legendary","color":"light_purple","italic":"false"}']},CustomModelData:11}
scoreboard players remove @s crafted 1
stopsound @a[distance=..32] player minecraft:entity.item.pickup
execute if score @s crafted matches 1.. run function players:crafts/warphorse_receiver