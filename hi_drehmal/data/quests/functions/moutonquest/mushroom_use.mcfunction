execute positioned ~ ~ ~ as @e[type=villager,name="Muhton"] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 0.5 0.5 0.5 0 64
execute positioned ~ ~ ~ as @p[tag=qst6] at @s run playsound minecraft:block.anvil.use player @a ~ ~ ~ 10 1
execute positioned ~ ~ ~ as @e[type=villager,name="Muhton"] run item replace entity @s weapon.mainhand with air
schedule function quests:moutonquest/flammer 6s