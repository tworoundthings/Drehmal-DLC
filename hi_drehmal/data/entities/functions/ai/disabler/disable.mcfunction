playsound minecraft:dcustom.entity.evoker.cast_spell hostile @s ~ ~ ~ 1 0
effect clear @s mcdar:stunned
effect clear @s glowing
title @s[tag=!disabled] times 0 0 55
title @s[tag=!disabled] title {"text":"Mythic Abilities Disabled","color":"red"}

tag @s add disabled
