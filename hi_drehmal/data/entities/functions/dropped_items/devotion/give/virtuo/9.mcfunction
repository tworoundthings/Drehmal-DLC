tellraw @s {"text":"Your faith shall be rewarded.","color":"gold","italic":true}
tag @s add virtuo.9
tag @s add virtuo.maxxed
tag @s add temp_devotion
playsound minecraft:dcustom.ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.25
give @s command_block{CustomModelData:1012003,display:{Name:'{"text":"Purifying Light +3","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"\\"For millennia, I didn\'t know the many"}','{"text":"wrongdoings of those who incited my birth."}','{"text":"But fragments of memory gave me suspicions,"}','{"text":"and now, at last, I know the truth. I will"}','{"text":"do what I can to one day earn Naurduul\'s"}','{"text":"forgiveness.\\""}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"+0.028 Movement Speed","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:.028,Operation:0,UUID:[I;-1437376347,1401114182,-1299806141,1088971613],Slot:"offhand"}]} 1
schedule function quests:danielquest/orbs/virtuo 2s