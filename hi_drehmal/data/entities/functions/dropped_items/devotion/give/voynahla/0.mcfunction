tellraw @s {"text":"Your faith shall be rewarded.","color":"gold","italic":true}
tag @s add voynahla.0
playsound minecraft:dcustom.ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.25
give @s command_block{CustomModelData:1006000,display:{Name:'{"text":"Mortality +0","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"You have been granted the favor"}','{"text":"of the Aspect of Death himself. "}','{"text":"Deliver it with certainty and caution."}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"-5% Max Health","color":"blue","italic":false}','{"text":"+10% Attack Damage","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-0.05,Operation:1,UUID:[I;-1300814623,-543996861,-2112179610,945495956],Slot:"offhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.1,Operation:1,UUID:[I;48097297,1005536632,-2052962749,-776539552],Slot:"offhand"}]} 1