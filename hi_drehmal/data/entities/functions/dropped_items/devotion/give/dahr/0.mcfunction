tellraw @s {"text":"Your faith shall be rewarded.","color":"gold","italic":true}
tag @s add dahr.0
playsound minecraft:dcustom.ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.25
give @s command_block{CustomModelData:1010000,display:{Name:'{"text":"Writ of Authority +0","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"Thou hast been bless\'d by the favor"}','{"text":"of the King! Rejoice in hydration!"}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"+8% Attack Speed","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.08,Operation:1,UUID:[I;70279012,-84326225,-2056914867,993757362],Slot:"offhand"}]} 1