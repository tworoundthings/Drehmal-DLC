give @p netherite_sword{display:{Name:'{"text":"Frenzy ✪","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"In the aftermath of mutual slaughter of","italic":true}','{"text":"of all three clans at Mt. Narukin, the","italic":true}','{"text":"legendary Osaigah bladesmith Irtheis ","italic":true}','{"text":"crafted this sinister army-killing blade","italic":true}','{"text":"while surrounded by burning prisoners.","italic":true}','{"text":"Tens of thousands of deaths later, it","italic":true}','{"text":"was melted down and split into five","italic":true}','{"text":"fragments, which were hidden throughout","italic":true}','{"text":"the land.","italic":true}','{"text":" "}','{"text":"Death Mark","color":"gold","italic":false}','{"text":"Fatal Rampage has a much shorter cooldown","color":"dark_gray","italic":true}','{"text":"and at max stacks, shurikens materialize","color":"dark_gray","italic":true}','{"text":"above random enemies and marks them for death.","color":"dark_gray","italic":true}','{"text":"Attacking marked targets deals massive damage","color":"dark_gray","italic":true}','{"text":"and removes the mark after","color":"dark_gray","italic":true}','{"text":" "}','{"text":"Sundering Strike","color":"gold","italic":false}','{"text":"Press crouch to detonate all accumulated stacks","color":"dark_gray","italic":true}','{"text":"to deliver a single cataclysmic strike that","color":"dark_gray","italic":true}','{"text":"kills any foe in your path and grant","color":"dark_gray","italic":true}','{"text":"a shield based on the damage dealth","color":"dark_gray","italic":true}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"-6 Max Health","color":"blue","italic":false}','{"text":"+0.03 Movement Speed","color":"blue","italic":false}','{"text":"9 Attack Damage","color":"blue","italic":false}','{"text":"2 Attack Speed","color":"blue","italic":false}','{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','[{"text":"Mythical ","color":"gold","italic":false},{"text":"[","color":"gray","italic":false},{"text":" ","color":"gold"},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"] [","color":"gray","italic":false},{"text":" ","color":"gold","italic":false},{"text":"]","color":"gray","italic":false}]']},HideFlags:6,Unbreakable:1b,CustomModelData:3,Soletta:1b,Mythic:1b,Frenzy2:1b,Frenzy:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-6,Operation:0,UUID:[I;951204781,-425049240,-1335564373,892470160],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.03,Operation:0,UUID:[I;2037735029,-1321710079,-1953466625,2042774538],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:9,Operation:0,UUID:[I;1793427920,-546812878,-2142891112,357140624],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;894357712,73353053,-1489060533,-1054944215],Slot:"mainhand"}],FlavorText:['{"text":"In the aftermath of mutual slaughter of","italic":true}','{"text":"of all three clans at Mt. Narukin, the","italic":true}','{"text":"legendary Osaigah bladesmith Irtheis ","italic":true}','{"text":"crafted this sinister army-killing blade","italic":true}','{"text":"while surrounded by burning prisoners.","italic":true}','{"text":"Tens of thousands of deaths later, it","italic":true}','{"text":"was melted down and split into five","italic":true}','{"text":"fragments, which were hidden throughout","italic":true}','{"text":"the land.","italic":true}','{"text":" "}','{"text":"Death Mark","color":"gold","italic":false}','{"text":"Fatal Rampage has a much shorter cooldown","color":"dark_gray","italic":true}','{"text":"and at max stacks, shurikens materialize","color":"dark_gray","italic":true}','{"text":"above random enemies and marks them for death.","color":"dark_gray","italic":true}','{"text":"Attacking marked targets deals massive damage","color":"dark_gray","italic":true}','{"text":"and removes the mark after","color":"dark_gray","italic":true}','{"text":" "}','{"text":"Sundering Strike","color":"gold","italic":false}','{"text":"Press crouch to detonate all accumulated stacks","color":"dark_gray","italic":true}','{"text":"to deliver a single cataclysmic strike that","color":"dark_gray","italic":true}','{"text":"kills any foe in your path and grant","color":"dark_gray","italic":true}','{"text":"a shield based on the damage dealth","color":"dark_gray","italic":true}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}']} 1
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 10 1
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1

execute positioned 26475.54 138.00 -53.355 run kill @e[type=item,distance=..4]
