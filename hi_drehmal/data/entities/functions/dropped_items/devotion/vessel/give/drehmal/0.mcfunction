execute if entity @s[tag=relic_v_give] run give @s command_block{CustomModelData:1002000,display:{Name:'{"text":"Effloresce +0","color":"dark_red","italic":false,"underlined":true}',Lore:['{"text":"Your devotion to Drehmal, the great"}','{"text":"serpentine deity, shall be represented"}','{"text":"by a newborn sapling. Let it be doused"}','{"text":"in your faith, let it flourish in your soul."}','{"text":" "}','{"text":"When in offhand:","color":"gray","italic":false}','{"text":"+6% Max Health","color":"blue","italic":false}','{"text":" "}','{"text":"Relic","color":"dark_red","italic":false}']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.06,Operation:1,UUID:[I;1373040777,956711824,-1285355769,331027867],Slot:"offhand"}]} 1
execute unless entity @s[tag=relic_v_give] run function entities:dropped_items/devotion/vessel/give/already_redeemed
tag @s remove relic_v_give