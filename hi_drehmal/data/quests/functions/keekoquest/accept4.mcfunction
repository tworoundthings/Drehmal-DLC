#skipped
execute positioned ~ ~ ~ as @p[tag=qst] at @s run tellraw @s ["",{"text":"<Keeko>","color":"white"},{"text":" I last had him leashed ","color":"dark_green"},{"text":"East ","color":"green"},{"text":"of here. I recommend searching there first.","color":"dark_green"}]
execute positioned ~ ~ ~ as @p[tag=qst] at @s run playsound entity.villager.ambient player @a ~ ~ ~ 1 1 
schedule function quests:keekoquest/accept5 3s