scoreboard players set @s dialogueTreeID 12
scoreboard players set @s dialogueStep 1
scoreboard players set @s dialogueTimer 80
function dialogue:maelihs/lines/makenoise
execute as @e[tag=aj.mael.root,limit=1] if score @s ai_state matches 0 run function dialogue:maelihs/anim/sint
tellraw @s [{"text":"["},{"text":"Maelihs","color":"dark_red"},{"text":"] "},{"text":"I see."}]