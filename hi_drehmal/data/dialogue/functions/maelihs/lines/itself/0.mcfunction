scoreboard players set @s dialogueTreeID 55
scoreboard players set @s dialogueStep 1
scoreboard players set @s dialogueTimer 100
tag @s add bg_questholder
function dialogue:maelihs/lines/makenoise
execute as @e[tag=aj.mael.root,limit=1] if score @s ai_state matches 0 run function dialogue:maelihs/anim/dia2
tellraw @s [{"text":"["},{"text":"Maelihs","color":"dark_red"},{"text":"] "},{"text":"Although, I must say… It does not truly look itself."}]