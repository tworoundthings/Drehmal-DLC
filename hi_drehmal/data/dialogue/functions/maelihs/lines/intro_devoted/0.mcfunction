scoreboard players set @s dialogueTreeID 27
scoreboard players set @s dialogueStep 1
scoreboard players set @s dialogueTimer 80
function dialogue:maelihs/lines/makenoise
execute as @e[tag=aj.mael.root,limit=1] if score @s ai_state matches 0 run function dialogue:maelihs/anim/dia4
tellraw @s [{"text":"["},{"text":"???","color":"dark_red"},{"text":"] "},{"text":"You reek of Maelmari, snakespawn."}]