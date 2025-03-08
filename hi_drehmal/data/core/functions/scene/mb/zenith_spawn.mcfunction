kill @e[type=armor_stand,tag=display_zenith]
execute as @e[type=villager,tag=zenith_pickup] at @s run teleport ~ -1000 ~

summon minecraft:armor_stand -3186.50 77.30 1559.50 {Tags:["display_zenith"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count: 1b,tag:{Unbreakable:0b,CustomModelData:2,HideFlags:6,display:{Lore:['{"text":"Avsohm fabricated this blade of"}','{"text":"incredible strength using the power"}','{"text":"of Primal Energy, a mysterious"}','{"text":"substance from beyond this world."}','{"text":"It is said that all matter and energy"}','{"text":"is derived from it. Distilling such"}','{"text":"a material into its rawest form for"}','{"text":"use in combat is exactly the reason"}','{"text":"why Avsohm was dealt such a"}','{"text":"harrowing fate."}','{"text":" "}', '{"text":"Ontology","color":"gold","italic":false}','{"text":"Shift and right click to switch modes.","color":"gray"}','{"text":"Build up charges by dealing damage","color":"gray"}', '{"text":"with the blade. Use a charge by right","color":"gray"}','{"text":"clicking while the blade is retracted,","color":"gray"}','{"text":"creating a blast of damaging energy.","color":"gray"}','{"text":" "}','{"text":"When in main hand:","color":"gray","italic":false}','{"text":"+0.01 Movement Speed","color":"blue","italic":false}','{"text":"15-25 Ranged Damage","color":"blue","italic":false}','{"text":"10 Attack Damage","color":"blue","italic":false}','{"text":"1.6 Attack Speed","color":"blue","italic":false}', '{"text":"Unbreakable","color":"blue","italic":false}','{"text":" "}','{"text":"This item cannot be enchanted.","color":"gray"}','{"text":" "}', '{"text":"Mythical","color":"gold","italic":false}'],Name:'{"text":"Zenith","color":"gold","italic":false,"underlined":true}'},AvSaber:1b,AttributeModifiers:[{Amount:0.01d,Slot: "mainhand",AttributeName:"generic.movement_speed",Operation:0,UUID:[I;1029846086,81546623,-1574636474,2092110333],Name:"generic.movement_speed"}]}}],NoBasePlate:0b,HurtTime:0s}

summon villager -3187 77 1559 {NoGravity:1b,Silent:1b,Marker:1b,Invulnerable:1b,NoAI:1b,Tags:["zenith_pickup"],ActiveEffects:[{Id:14b,Amplifier:10b,Duration:20000000,ShowParticles:0b}],Offers:{}}