execute store result score #gm temp run gamerule keepInventory

function players:avpod/clearchat
tellraw @s {"text":"□-----------------------------------------□","color":"dark_gray"}
tellraw @s {"text":"                  GLOBAL SETTINGS","bold":true,"color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"These settings affect everyone on the server.","color":"gray"}]}}
tellraw @s {"text":" "}



execute if score #settings.lock bool matches 1 run execute as @s[tag=host] run tellraw @s ["",{"text":"Lock settings:","color":"dark_gray"},{"text":" [False] ","color":"white","clickEvent":{"action":"run_command","value":"/function players:triggers/lock_settings_disable"},"hoverEvent":{"action":"show_text","contents":[{"text":"Settings are disabled","color":"gray"},"\n",{"text":"Click to enable!","color":"yellow"}]}},{"text":"[True] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Settings are locked for everyone but you.","color":"gray"}]}}]
execute unless score #settings.lock bool matches 1 run execute as @s[tag=host] run tellraw @s ["",{"text":"Lock settings:","color":"dark_gray"},{"text":" [False] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Settings are enabled","color":"gray"}]}},{"text":"[True] ","color":"white","clickEvent":{"action":"run_command","value":"/function players:triggers/lock_settings_toggle"},"hoverEvent":{"action":"show_text","contents":[{"text":"Settings are locked for everyone but you.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]


# difficulty scaling - global
execute if score #auto_scale? const matches 1 run function players:triggers/settings/disp_scale_y
execute unless score #auto_scale? const matches 1 run function players:triggers/settings/disp_scale_n

# mythic pvp - global
execute unless score #mythic_pvp? const matches 1 run tellraw @s ["",{"text":"Mythic Ability PvP: ","color":"dark_gray"},{"text":"[On] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Allows Mythic item abilites to damage other players.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"},"\n",{"text":"[Note: For a normal playthrough, having Mythic PvP on is inadvisable]","color":"red"}]}},{"text":"[Off] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Mythic abilities will not damage","color":"gray"},"\n",{"text":"other players.","color":"gray"}]}}]
execute if score #mythic_pvp? const matches 1 run tellraw @s ["",{"text":"Mythic Ability PvP: ","color":"dark_gray"},{"text":"[On] ","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Mythic item abilites will be able to damage other players.","color":"gray"},"\n",{"text":"[Note: We warned you]","color":"red"}]}},{"text":"[Off] ","clickEvent":{"action":"run_command","value":"/trigger Settings set 3"},"bold":false,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Click to prevent Mythic item abilites from","color":"gray"},"\n",{"text":"damaging other players.","color":"gray"},"\n",{"text":"Click to Disable!","color":"yellow"}]}}]

# low particles - global
execute unless score #low_particles? bool matches 1 run tellraw @s ["",{"text":"Low Particle Mode: ","color":"dark_gray"},{"text":"[On] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 15"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reduces some particle effects to prevent","color":"gray"},"\n",{"text":"client-side lag.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":"[Off]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Particle effects as they were intended","color":"gray"},"\n",{"text":"to be seen.","color":"gray"}]}}]
execute if score #low_particles? bool matches 1 run tellraw @s ["",{"text":"Low Particle Mode: ","color":"dark_gray"},{"text":"[On] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Reduces some particle effects to prevent","color":"gray"},"\n",{"text":"client-side lag.","color":"gray"}]}},{"text":"[Off]","clickEvent":{"action":"run_command","value":"/trigger Settings set 16"},"hoverEvent":{"action":"show_text","contents":[{"text":"Particle effects as they were intended","color":"gray"},"\n",{"text":"to be seen.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]

# keepinventory - global
execute if score #gm temp matches 0 run tellraw @s ["",{"text":"Keep Inventory: ","color":"dark_gray"},{"text":"[False] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Players will drop items on death.","color":"gray"},"\n",{"text":"[Note: You have been warned.]","color":"red"}]}},{"text":"[True]","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 22"},"hoverEvent":{"action":"show_text","contents":[{"text":"Players drop no items on death.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]
execute if score #gm temp matches 1 run tellraw @s ["",{"text":"Keep Inventory: ","color":"dark_gray"},{"text":"[False] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 20"},"hoverEvent":{"action":"show_text","contents":[{"text":"Players will drop items on death.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"},"\n",{"text":"[Note: Expect to die in Drehmal. Keep","color":"red"},"\n",{"text":"Inventory is on for a reason.]","color":"red"}]}},{"text":"[True]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Players drop no items on death.","color":"gray"}]}}]

# xp loss - global
execute if score #xp_percent const matches 100.. run tellraw @s ["",{"text":"XP Loss on Death ","color":"dark_gray"},{"text":"[?]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Drehmal is recommended to be played with","color":"gray"},"\n",{"text":"keepInventory on. However, XP is still","color":"gray"},"\n",{"text":"lost on death. Here, you can change","color":"gray"},"\n",{"text":"the severity of that loss.","color":"gray"}]}},{"text":": ","color":"dark_gray"},{"text":"[None] ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":""},"hoverEvent":{"action":"show_text","contents":[{"text":"XP is not lost at death. No punishment","color":"gray"},"\n",{"text":"for dying.","color":"gray"}]}},{"text":"[50%] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 18"},"hoverEvent":{"action":"show_text","contents":[{"text":"Upon death, players lose half of their","color":"gray"},"\n",{"text":"experience and levels.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":"[100%]","clickEvent":{"action":"run_command","value":"/trigger Settings set 19"},"hoverEvent":{"action":"show_text","contents":[{"text":"Players lose all their experience and","color":"gray"},"\n",{"text":"levels upon death.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]
execute if score #xp_percent const matches 1..99 run tellraw @s ["",{"text":"XP Loss on Death ","color":"dark_gray"},{"text":"[?]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Drehmal is recommended to be played with","color":"gray"},"\n",{"text":"keepInventory on. However, XP is still","color":"gray"},"\n",{"text":"lost on death. Here, you can change","color":"gray"},"\n",{"text":"the severity of that loss.","color":"gray"}]}},{"text":": ","color":"dark_gray"},{"text":"[None] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 17"},"hoverEvent":{"action":"show_text","contents":[{"text":"XP is not lost at death. No punishment","color":"gray"},"\n",{"text":"for dying.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":"[50%] ","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Upon death, players lose half of their","color":"gray"},"\n",{"text":"experience and levels.","color":"gray"}]}},{"text":"[100%]","clickEvent":{"action":"run_command","value":"/trigger Settings set 19"},"hoverEvent":{"action":"show_text","contents":[{"text":"Players lose all their experience and","color":"gray"},"\n",{"text":"levels upon death.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]
execute unless score #xp_percent const matches 1.. run tellraw @s ["",{"text":"XP Loss on Death ","color":"dark_gray"},{"text":"[?]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Drehmal is recommended to be played with","color":"gray"},"\n",{"text":"keepInventory on. However, XP is still","color":"gray"},"\n",{"text":"lost on death. Here, you can change","color":"gray"},"\n",{"text":"the severity of that loss.","color":"gray"}]}},{"text":": ","color":"dark_gray"},{"text":"[None] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 17"},"hoverEvent":{"action":"show_text","contents":[{"text":"XP is not lost at death. No punishment","color":"gray"},"\n",{"text":"for dying.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":"[50%] ","color":"white","clickEvent":{"action":"run_command","value":"/trigger Settings set 18"},"hoverEvent":{"action":"show_text","contents":[{"text":"Upon death, players lose half of their","color":"gray"},"\n",{"text":"experience and levels.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":"[100%]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Players lose all their experience and","color":"gray"},"\n",{"text":"levels upon death.","color":"gray"}]}}]

tellraw @s {"text":" "}
tellraw @s {"text":"□-----------------------------------------□","color":"dark_gray"}
tellraw @s {"text":"                 INDIVIDUAL SETTINGS","bold":true,"color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"These settings only apply to you.","color":"gray"}]}}
tellraw @s {"text":" "}

# assist mode - per-player
execute unless entity @s[tag=settings.assist] run tellraw @s ["",{"text":"Difficulty Modifier ","color":"dark_gray"},{"text":"[?]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Modifies the game difficulty to cater to","color":"gray"},"\n",{"text":"different playstyles. This is distinct from","color":"gray"},"\n",{"text":"vanilla minecraft difficulty.","color":"gray"}]}},{"text":":","color":"dark_gray"},{"text":" [Assist]","clickEvent":{"action":"run_command","value":"/trigger Settings set 10"},"hoverEvent":{"action":"show_text","contents":[{"text":"Double damage and 40% damage reduction, permanently.","color":"gray"},"\n",{"text":"Intended for less confident players, or those","color":"gray"},"\n",{"text":"not interested in a challenge.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":" [Normal]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"How Drehmal was meant to be played.","color":"gray"}]}}]
execute if entity @s[tag=settings.assist] run tellraw @s ["",{"text":"Difficulty Modifier ","color":"dark_gray"},{"text":"[?]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Modifies the game difficulty to cater to","color":"gray"},"\n",{"text":"different playstyles. This is distinct from","color":"gray"},"\n",{"text":"vanilla minecraft difficulty.","color":"gray"}]}},{"text":":","color":"dark_gray"},{"text":" [Assist]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Double damage and 40% damage reduction, permanently.","color":"gray"},"\n",{"text":"Intended for less confident players, or those","color":"gray"},"\n",{"text":"not interested in a challenge.","color":"gray"}]}},{"text":" [Normal]","clickEvent":{"action":"run_command","value":"/trigger Settings set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"How Drehmal was meant to be played.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]

# comedy level - per-player
execute unless score @s settings.punish matches 1.. run tellraw @s ["",{"text":"Punishment Level: ","color":"dark_gray"},{"text":"[NoFail]","clickEvent":{"action":"run_command","value":"/trigger Settings set 12"},"hoverEvent":{"action":"show_text","contents":[{"text":"Complete damage immunity. For when","color":"gray"},"\n",{"text":"dying really just isn't your thing.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":" [Normal]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Just normal gameplay.","color":"gray"}]}},{"text":" [NoHit]","clickEvent":{"action":"run_command","value":"/trigger Settings set 14"},"hoverEvent":{"action":"show_text","contents":[{"text":"Any amount of damage is lethal damage.","color":"gray"},"\n",{"text":"There is no reward except glory.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"},"\n",{"text":"[Note: This is a completely unfair challenge.]","color":"red"}]}}]
execute if score @s settings.punish matches 1 run tellraw @s ["",{"text":"Punishment Level: ","color":"dark_gray"},{"text":"[NoFail]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":""},"hoverEvent":{"action":"show_text","contents":[{"text":"Complete damage immunity. For when","color":"gray"},"\n",{"text":"dying really just isn't your thing.","color":"gray"}]}},{"text":" [Normal]","clickEvent":{"action":"run_command","value":"/trigger Settings set 13"},"hoverEvent":{"action":"show_text","contents":[{"text":"Just normal gameplay.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":" [NoHit]","clickEvent":{"action":"run_command","value":"/trigger Settings set 14"},"hoverEvent":{"action":"show_text","contents":[{"text":"Any amount of damage is lethal damage.","color":"gray"},"\n",{"text":"There is no reward except glory.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"},"\n",{"text":"[Note: This is a completely unfair challenge.]","color":"red"}]}}]
execute if score @s settings.punish matches 2 run tellraw @s ["",{"text":"Punishment Level: ","color":"dark_gray"},{"text":"[NoFail]","clickEvent":{"action":"run_command","value":"/trigger Settings set 12"},"hoverEvent":{"action":"show_text","contents":[{"text":"Complete damage immunity. For when","color":"gray"},"\n",{"text":"dying really just isn't your thing.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":" [Normal]","clickEvent":{"action":"run_command","value":"/trigger Settings set 13"},"hoverEvent":{"action":"show_text","contents":[{"text":"Just normal gameplay.","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}},{"text":" [NoHit]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Any amount of damage is lethal damage.","color":"gray"},"\n",{"text":"There is no reward except glory.","color":"gray"},"\n",{"text":"[Note: Good luck.]","color":"red"}]}}]

# flashing lights - per-player
function players:triggers/settings/disp_flashing_lights

# tellraw @s {"text":" "}
# tellraw @s {"text":"□-----------------------------------------□","color":"dark_gray"}
# tellraw @s {"text":"                 1.20 FEATURES","bold":true,"color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Added content to 1.20, applies globally.","color":"gray"}]}}
# tellraw @s {"text":" "}

# # tellraw @s ["",{"text":"Armor Trims","color":"dark_gray"},{"text":" [?]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Allows you to craft armor trims and allows ","color":"gray"},"\n",{"text":"1.20 exclusive blocks/items to be purchased","color":"gray"},"\n",{"text":"from merchants","color":"gray"}]}},{"text":":","color":"dark_gray"},{"text":" [False] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Master Mode is disabled","color":"gray"}]}},{"text":"[True] ","color":"white","clickEvent":{"action":"run_command","value":"/function players:triggers/settings/1.20_on"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enables master mode","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]

# tellraw @s ["",{"text":"Master Mode","color":"dark_gray"},{"text":" [?]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Bosses have increased health, do increased damage ","color":"gray"},"\n",{"text":"and have more attacks. As well as mobs spawning ","color":"gray"},"\n",{"text":"with more armor and doing increased damage.","color":"gray"},"\n",{"text":"[Note: This is incredibly unfair and not playtested.(Also not implemented yet)]","color":"red"}]}},{"text":":","color":"dark_gray"},{"text":" [False] ","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Master Mode is disabled","color":"gray"}]}},{"text":"[True] ","color":"white","clickEvent":{"action":"run_command","value":"/function players:triggers/lock_settings_toggle"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enables master mode","color":"gray"},"\n",{"text":"Click to Enable!","color":"yellow"}]}}]

tellraw @s {"text":" "}
tellraw @s {"text":"□-----------------------------------------□","color":"dark_gray"}
tellraw @s {"text":" "}