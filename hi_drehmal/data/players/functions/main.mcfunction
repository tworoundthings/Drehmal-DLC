execute unless score #scoreboardStable bool matches 1 run function core:crash_recovery/check_corruption

# set unique player ID
execute unless score @s playerID matches -2147483648.. run function players:setpid

# vvv runs right after the player respawns
execute if entity @s[tag=respawning] unless predicate players:is_dead run function players:spawn/respawn
execute if entity @s[tag=has_temp_spawn] if score #10S timer matches 0 run function players:spawn/clear_invalid_spawns
# ^^^

# player rejoined server
execute if score @s leave_game matches 1.. run function players:leave


execute if score @s dialogueTimer matches 0 run function dialogue:delayed
execute if score @s dialogueTimer matches 1.. run scoreboard players remove @s dialogueTimer 1

execute if score @s safeTpDelay matches 0.. run scoreboard players remove @s safeTpDelay 1
execute if score @s safeTpDelay matches 0 run function players:misc/safe_tp_loop

execute if score #5T timer matches 0 if entity @s[predicate=players:is_not_dev] if predicate players:gamemode_sa run function players:gamemode/set_default

execute if score #1S timer matches 8 run function players:check_passive_items

#--------#
#BLAZE PANTS#
#--------#
execute if predicate players:wearing_blaze run function players:items/blaze/buff

#--------#
#FOCUS#
#--------#
execute if predicate players:wearing_pearl run function players:items/focus/buff
execute unless predicate players:wearing_pearl run function players:items/focus/buff_remove

#--------#
#STAR HELMET#
#--------#
execute if predicate players:wearing_starry run function players:items/star_helm/buff
execute if score @s soundfix matches 1.. run scoreboard players remove @s soundfix 1
execute unless predicate players:wearing_starry run attribute @s minecraft:generic.movement_speed modifier remove ce887b47-db5e-41be-ab92-4b6eb53c48c2

#--------#
#COMPOSITION#
#--------#
execute if predicate players:wearing_comp run function players:items/comp/buff
execute unless predicate players:wearing_comp run function players:items/comp/buff_remove

#--------#
#FLESH#
#--------#
execute if score @s flesh_timer matches 1.. run effect give @s minecraft:hunger 1 49 true

execute if score @s flesh_level matches 1 run attribute @s minecraft:generic.max_health modifier add dc9e15b1-0724-41bf-9d7b-8b831d1c2ee2 flesh 5 add
execute if score @s flesh_level matches 2 run attribute @s minecraft:generic.max_health modifier add 8ba9cd06-534b-4524-84b2-789c15f0acac flesh 5 add
execute if score @s flesh_level matches 3 run attribute @s minecraft:generic.max_health modifier add 9273ff45-5bdb-4e37-8315-257ee86a92fe flesh 5 add
execute if score @s flesh_level matches 4 run attribute @s minecraft:generic.max_health modifier add 94309d62-d204-4db8-8c1b-3ee325fe7212 flesh 5 add

execute if score @s flesh_level matches ..0 run attribute @s minecraft:generic.max_health modifier remove dc9e15b1-0724-41bf-9d7b-8b831d1c2ee2
execute if score @s flesh_level matches ..0 run attribute @s minecraft:generic.max_health modifier remove 8ba9cd06-534b-4524-84b2-789c15f0acac
execute if score @s flesh_level matches ..0 run attribute @s minecraft:generic.max_health modifier remove 9273ff45-5bdb-4e37-8315-257ee86a92fe
execute if score @s flesh_level matches ..0 run attribute @s minecraft:generic.max_health modifier remove 94309d62-d204-4db8-8c1b-3ee325fe7212

execute if score @s flesh_level matches 1 run particle dust 0.68 0.0 0.0 1 ~ ~0.25 ~ 0.2 -0.25 0.2 9 5
execute if score @s flesh_level matches 2 run particle dust 0.58 0.0 0.0 1 ~ ~0.25 ~ 0.225 -0.25 0.225 9 7
execute if score @s flesh_level matches 3 run particle dust 0.48 0.0 0.0 1 ~ ~0.25 ~ 0.25 -0.25 0.25 9 10
execute if score @s flesh_level matches 4 run particle dust 0.38 0.0 0.0 1 ~ ~0.25 ~ 0.275 -0.25 0.275 9 15

execute if score @s flesh_level matches -100.. unless predicate players:holding/flesh run scoreboard players reset @s flesh_level
execute if score @s flesh_timer matches -100.. unless predicate players:holding/flesh run scoreboard players reset @s flesh_timer
execute unless score @s flesh_timer matches ..0 run scoreboard players remove @s flesh_timer 1
execute if score @s flesh_timer matches ..0 run scoreboard players set @s flesh_level 0

#--------#
#AVRAD#
#--------#
execute as @s[predicate=players:holding/avrad,tag=!disabled] if score @s avrad_cool matches 0.. run function players:items/avrad/actionbar
execute if score @s avrad_charge_c matches 1.. run scoreboard players remove @s avrad_charge_c 1

scoreboard players operation @s washoldingavrad = @s holdingavrad
scoreboard players reset @s holdingavrad
execute store result score @s[tag=!disabled] holdingavrad if predicate players:holding/avrad

execute if score @s wasHoldingavrad matches 1 if score @s holdingavrad matches 0 if score @s avrad_charge matches 1.. run function players:items/avrad/reset
execute if score @s avrad_charge matches 1.. if score @s avrad_charge_c matches ..0 run function players:items/avrad/reset

execute if score @s holdingavrad matches 1 if score @s avrad_charge_c matches 1.. run function players:items/avrad/main

execute unless score @s avrad_cool matches ..-1 run scoreboard players remove @s avrad_cool 1

#--------#
#TRIGGERS#
#--------#

# Cynthia's quest trigger patch
execute as @s run function triggerpatch:quests/tick

#execute if score @s invulMythics matches -2147483648.. unless score @s invulMythics matches 0 run function players:triggers/invul_mythics
#execute if score @s mythicPvp matches -2147483648.. unless score @s mythicPvp matches 0 run function players:triggers/mythic_pvp
#execute if score @s autoScale matches -2147483648.. unless score @s autoScale matches 0 run function players:triggers/auto_scale
#execute if score @s lowParticles matches -2147483648.. unless score @s lowParticles matches 0 run function players:triggers/low_particles
#execute if score @s masterMode matches -2147483648.. unless score @s masterMode matches 0 run function players:triggers/master_mode
execute if score @s Settings matches -2147483648.. unless score @s Settings matches 0 run function players:triggers/settings_root
execute if score @s avpod.menu_press matches -2147483648.. unless score @s avpod.menu_press matches 0 run function players:triggers/avpod_root
execute if score @s d.relic_vessel matches -2147483648.. unless score @s d.relic_vessel matches 0 run function entities:dropped_items/devotion/vessel/give/trigger
execute if score @s terminus.compass matches -2147483648.. unless score @s terminus.compass matches 0 run function terminus:gifts/trigger


#----#
#WORM#
#----#

#execute if score #worm_alive bool matches 1 anchored eyes positioned ~-2 ~-2 ~-2 as @e[type=armor_stand,tag=worm,dx=4,dy=4,dz=4] at @s unless entity @e[type=slime,distance=..3] run summon slime ~ ~ ~ {NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Invis"}',CustomNameVisible:0b,NoAI:1b,Size:5,Tags:["5tick"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["5tick"]}]}
execute anchored eyes positioned ~-2 ~-2 ~-2 as @e[type=armor_stand,tag=worm,dx=4,dy=4,dz=4] at @s unless entity @e[type=slime,distance=..2] if block ~ ~ ~ #core:empty run summon slime ~ ~-1 ~ {NoGravity:1b,CustomNameVisible:1b,Team:"hide_name",Silent:1b,NoAI:1b,Size:5,Tags:["5tick","asc_invul","mb_immune"],CustomName:'{"text":"Invis"}',ActiveEffects:[{Id:11b,Amplifier:10b,Duration:5,ShowParticles:0b}]}
execute if score #worm_moving? bool matches 1 if score #1S timer matches 0 run function entities:worm/ocean_check
scoreboard players remove @s swim_timer 1
execute if predicate players:swim run scoreboard players set @s swim_timer 0


# vvv code that needs to know hp
execute if entity @s[tag=wearing_aeongale] unless entity @s[tag=hp_checked] run function players:misc/calculate_real_hp
execute if entity @s[tag=wearing_ren] unless entity @s[tag=hp_checked] run function players:misc/calculate_real_hp
execute if entity @s[tag=platemailused] unless entity @s[tag=hp_checked] run function players:misc/calculate_real_hp

execute if entity @s[tag=wearing_ren] run function players:items/platemail/main
execute if score @s hp_percent matches 80.. run tag @s remove platemailused

execute if entity @s[tag=wearing_aeongale] run function players:items/aeongale/main
# ^^^

execute if score @s stunArrowTime matches 1.. run function entities:misc/stunned

execute if score @s drankEldermead matches 1.. run function players:items/eldermead/item

execute if score #5S timer matches 0 if entity @s[tag=wearing_pc] run function players:items/pc

execute if score #5T timer matches 0 if entity @s[tag=wearing_t] run function players:items/tv/main

execute if score @s bowbladEffect matches 1.. run function players:items/ultva_bowblade/has_effect

execute if score @s peaceTreatyBuff matches 1.. run function players:items/peace_treaty/main

execute if entity @s[tag=wearing_magestep] run function players:items/magestep/main

execute if entity @s[tag=wearing_fststd] run function players:items/festering_strides/main
execute if score @s FstStdCool matches 1.. run scoreboard players remove @s FstStdCool 1

execute if predicate players:broke_wood run function players:items/heartaxe/broke_block

execute if score #4T timer matches 0 if score @s soulDamage matches 1.. run function players:damage/soul/souldmgtick
execute if score #5T timer matches 0 if score @s soulDamage matches 1.. run particle minecraft:entity_effect ~ ~0.5 ~ 0.4 0.0 0.0 1.0 0 normal @a

# Avsohm'Kohl Stuff
execute if entity @s[tag=wearing_avsmkohl] if predicate players:holding/riptide_trident run function players:items/avsohm_kohl/holding_riptide
execute if score @s fly_cm matches 1.. if entity @s[tag=wearing_avsmkohl] run function players:items/avsohm_kohl/main
execute as @s[advancements={weapons:wings=true}] if predicate dlc:wings if predicate players:holding/riptide_trident run function players:items/avsohm_kohl/wings_holding_riptide
execute if score @s fly_cm matches 1.. if predicate dlc:wings run function players:items/avsohm_kohl/main
execute as @s[tag=wearing_avsmkohl] if predicate dlc:wings run function players:items/avsohm_kohl/unequip
scoreboard players reset @s fly_cm
scoreboard players reset @s usedFirework

# avhorse stuff
execute if score @s clearAvArmor matches 1.. run function players:avhorse/linking/clear_armor
execute if score @s horseMenuSelect matches 0.. run function players:avhorse/menu/parse_select
execute if score @s horseCooldown matches 1.. run scoreboard players add @s horseCooldown 1
# lots of extra time in case of server lag. if the server lags more than this you have bigger problems.
execute if score @s horseCooldown matches 45.. run scoreboard players reset @s horseCooldown
execute if entity @s[tag=avHorseArmor_checked] run tag @s remove avHorseArmor_checked


execute unless score @s Avwarp matches 1.. if score @s avwarptimer matches 1.. run scoreboard players remove @s avwarptimer 5
execute if predicate players:warpreceiver at @s if entity @s[tag=still] run function players:misc/warp/main
execute if score #5S timer matches 0 run tag @s remove warperror
execute if score #5T timer matches 0 if score @s Avwarp matches 1.. run scoreboard players remove @s Avwarp 1


#--------------#
#STANDING STILL#

execute if score #2T timer matches 0 run function players:misc/standing_still
execute if score @s attack_tele matches 1.. run function players:misc/tele/main
function players:misc/portal_check

#--------------#


execute if score @s loe_blizzard matches 1.. run function entities:ai/loe_golem/status_effect
execute if score @s t.fear matches 1.. run function entities:ai/tethlaen/status_effect

execute if score @s click matches 1.. at @s run function players:items/click
execute if score @s mb_charge_cool matches 1.. run scoreboard players remove @s mb_charge_cool 1
execute if score @s pcannon_charge_c matches 1.. run scoreboard players remove @s pcannon_charge_c 1

scoreboard players add @s hurtby_timer 1

scoreboard players remove @s respawn_timer 1

execute if predicate players:daytime run function players:misc/1aday_refresh

#===============#
# Zenith Things #
#===============#

scoreboard players operation @s wasHoldingAvs = @s holdingAvs
scoreboard players reset @s holdingAvs
execute store success score @s[tag=!disabled] holdingAvs if predicate players:holding/avstate2 if predicate players:holding/zenith2
execute if score @s wasHoldingAvs matches 1 if score @s drop_zenith matches 1 run function players:items/avsaber/misfire


execute store success score @s[tag=!disabled] HoldingAv if predicate players:holding/holdingav
execute if score @s[tag=!disabled] HoldingAv matches 1.. run function players:items/avsaber/holdingav

execute if score @s UsedAvSaber matches 1.. run scoreboard players set @s UsedAvSaber 0
execute if score @s AvDamage matches 1.. run scoreboard players set @s AvDamage 0
execute if score @s AvTimer matches 1.. run scoreboard players add @s AvTimer 1
execute if score @s AvTimer matches 20 run scoreboard players set @s AvTimer 0
execute if score @s AvTimer matches 40 run scoreboard players set @s AvTimer 0
execute if score @s AvTimer matches 80.. run scoreboard players set @s AvTimer 0

#================#
# Oblivion Stuff #
#================#

scoreboard players operation @s wasHoldingObv = @s holdingObv
scoreboard players reset @s holdingObv
execute store success score @s[tag=!disabled] holdingObv if predicate players:holding/oblivion
execute as @s[tag=disabled] run scoreboard players set @s wasHoldingObv 0
execute if score @s holdingObv matches 1 if score @s wasHoldingObv matches 0 run scoreboard players set @s maxObvCooldown 800
execute if score @s holdingObv matches 1 if score @s wasHoldingObv matches 0 if predicate players:holding/cooldown_ench run scoreboard players set @s maxObvCooldown 600
execute if entity @s[tag=obv_active] run function players:items/obv/active

execute if score @s holdingObv matches 0 if score @s wasHoldingObv matches 1 unless score @s drop_netherite matches 1 if entity @s[tag=obv_active] run function players:items/obv/end_hold_no_item
execute if score @s holdingObv matches 0 if score @s wasHoldingObv matches 1 if score @s drop_netherite matches 1 if score @s obv_cool matches ..0 run function players:items/obv/shoot_ray
execute if score @s holdingObv matches 0 if score @s wasHoldingObv matches 1 if score @s drop_netherite matches 1 if score @s obv_cool matches 1.. if entity @s[tag=obv_active] run function players:items/obv/end_hold
execute if score @s[tag=!ob_scythe] holdingObv matches 0 if score @s wasHoldingObv matches 1 if score @s drop_netherite matches 1 if score @s obv_cool matches 1.. unless entity @s[tag=obv_active] run function players:items/obv/misfire

execute if score @s holdingObv matches 0 if score @s wasHoldingObv matches 1 unless score @s drop_netherite matches 1 unless entity @s[tag=obv_active] run title @s actionbar " "
execute if score @s holdingObv matches 1 run function players:items/obv/actionbar
execute unless entity @s[tag=obv_active] run scoreboard players remove @s obv_cool 1

execute if score #5T timer matches 0 run function players:misc/portal/standcheck

#==================#
# Ascendance Stuff #
#==================#

scoreboard players operation @s wasHoldingAsc = @s holdingAsc
scoreboard players reset @s holdingAsc
execute store result score @s[tag=!disabled] holdingAsc if predicate players:holding/asc
execute as @s[tag=disabled] run scoreboard players set @s wasHoldingAsc 0
scoreboard players remove @s asc_cool 1

execute if score @s holdingAsc matches 1 if score @s wasHoldingAsc matches 0 run scoreboard players set @s maxAscCooldown 400
execute if score @s holdingAsc matches 1 if score @s wasHoldingAsc matches 0 if predicate players:holding/cooldown_ench run scoreboard players set @s maxAscCooldown 300

execute if score @s holdingAsc matches 0 if score @s wasHoldingAsc matches 1 if score @s drop_netherite matches 1 if score @s asc_cool matches 1.. run function players:items/asc/misfire
execute if score @s holdingAsc matches 0 if score @s wasHoldingAsc matches 1 if score @s drop_netherite matches 1 if score @s asc_cool matches ..0 run function players:items/asc/shoot

execute if score @s holdingAsc matches 1 if score @s asc_cool matches 0.. run function players:items/asc/actionbar

execute as @s[tag=asc_cd] if predicate players:holding/empty run function players:items/asc/misfire

#====================#
# Malevolentia Stuff #
#====================#

execute store result score @s[tag=!disabled] holdingMal if predicate players:holding/male
execute if score @s holdingMal matches 1 if score @s wasHoldingMal matches 0 run scoreboard players set @s maxMalCooldown 400
execute if score @s holdingMal matches 1 if score @s wasHoldingMal matches 0 if predicate players:holding/cooldown_ench run scoreboard players set @s maxMalCooldown 300
execute as @s[tag=disabled] run scoreboard players set @s wasHoldingMal 0

execute if score @s holdingMal matches 1 unless score @s[tag=!disabled] mal_cool2 matches 1.. if score @s mal_cool matches 1.. run function players:items/mal/cooldown
execute if score @s holdingMal matches 1 unless score @s[tag=!disabled] mal_cool matches 1.. unless score @s mal_cool2 matches 1.. run function players:items/mal/main
execute if score @s holdingMal matches 1 if score @s[tag=!disabled] mal_cool2 matches 1.. run function players:items/mal/active
execute if score @s holdingMal matches 0 if score @s[tag=!disabled] wasHoldingMal matches 1 run function players:items/mal/nothold

execute unless score @s mal_cool2 matches 1.. run scoreboard players remove @s mal_cool 1
execute unless entity @s[tag=notick_mal] run scoreboard players remove @s mal_cool2 1
scoreboard players operation @s wasHoldingMal = @s holdingMal

execute if score @s mal_effect matches 1.. run function players:items/mal/effect_timer

execute if entity @s[tag=solving_maze] run function players:misc/maze/main

execute if predicate players:nether unless entity @s[tag=dead] run function players:misc/portal/somehow

#==============#
# Syzygy Stuff #
#==============#

execute store success score @s[tag=!disabled] holdingSy if predicate players:holding/syzygy
execute as @s[tag=disabled] run scoreboard players set @s wasHoldingSy 0

execute if score @s holdingSy matches 1 if score @s wasHoldingSy matches 0 run scoreboard players set @s maxSzyCooldown 400
execute if score @s holdingSy matches 1 if score @s wasHoldingSy matches 0 if predicate players:holding/cooldown_ench run scoreboard players set @s maxSzyCooldown 300

execute if score @s holdingSy matches 1 run function players:items/syzygy/actionbar
execute if score @s holdingSy matches 1 if predicate players:offhand_syzygy run function players:items/syzygy/remove_from_offhand
execute if score @s holdingSy matches 0 if score @s wasHoldingSy matches 0 if predicate players:offhand_syzygy run function players:items/syzygy/remove_from_offhand
execute if score @s holdingSy matches 0 if score @s wasHoldingSy matches 1 if predicate players:offhand_syzygy run function players:items/syzygy/swap
execute if score @s holdingSy matches 0 if score @s wasHoldingSy matches 1 unless score #nores temp matches 1 run function players:items/syzygy/reset
execute if entity @s[tag=syzygy_crawl] run function players:items/syzygy/crawlstate
scoreboard players remove @s sy_cool 1

scoreboard players reset #nores temp

scoreboard players operation @s wasHoldingSy = @s holdingSy

#================#
# Syzygy 2 Stuff #
#================#



#================#
# Friendsy Stuff #
#================#

scoreboard players remove @s fzy_cool 1
scoreboard players operation @s wasHoldingFzy = @s holdingFzy
scoreboard players reset @s holdingFzy
execute store success score @s[tag=!disabled] holdingFzy if predicate players:holding/frenzy
execute as @s[tag=disabled] run scoreboard players set @s wasHoldingFzy 0
execute if score @s holdingFzy matches 1 if score @s wasHoldingFzy matches 0 unless predicate players:holding/frenzy2 run scoreboard players set @s maxFzyCooldown 1200
execute if score @s holdingFzy matches 1 if score @s wasHoldingFzy matches 0 if predicate players:holding/frenzy2 run scoreboard players set @s maxFzyCooldown 600
execute if score @s holdingFzy matches 1 if score @s wasHoldingFzy matches 0 if predicate players:holding/cooldown_ench unless predicate players:holding/frenzy2 run scoreboard players set @s maxFzyCooldown 900
execute if score @s holdingFzy matches 1 if score @s wasHoldingFzy matches 0 if predicate players:holding/cooldown_ench if predicate players:holding/frenzy2 run scoreboard players set @s maxFzyCooldown 450

execute if score @s holdingFzy matches 0 if score @s wasHoldingFzy matches 1 if entity @s[tag=rampage] run function players:items/frenzy/end_rampage
execute if score @s holdingFzy matches 1 run function players:items/frenzy/main

#================#
# Calamity Stuff #
#================#

scoreboard players operation @s wasHoldingCal = @s holdingCal
scoreboard players reset @s holdingCal
execute store success score @s[tag=!disabled] holdingCal if predicate players:holding/calamity
execute as @s[tag=disabled] run scoreboard players set @s wasHoldingCal 0
execute if score @s holdingCal matches 1 if score @s wasHoldingCal matches 0 run scoreboard players set @s maxCalCooldown 800
execute if score @s holdingCal matches 1 if score @s wasHoldingCal matches 0 if predicate players:holding/cooldown_ench run scoreboard players set @s maxCalCooldown 600

execute if score @s cal_cool matches 9000.. positioned ~ ~1 ~ run particle smoke ~ ~ ~ 0.2 0.4 0.2 0 3
execute if score @s cal_cool matches 9000..9960 positioned ~ ~1 ~ run particle small_flame ~ ~ ~ 0.2 0.4 0.2 0 3
execute if score @s cal_cool matches 9981.. unless predicate entities:teth_shoot positioned ~ ~1.9 ~ as 8cd0b58c-114c-4a96-b051-92aa0c0fffe0 run function players:items/cal/ground_lightning
execute if score @s cal_cool matches 9970..9980 if predicate core:percent_chance/50 positioned ~ ~1.9 ~ as 8cd0b58c-114c-4a96-b051-92aa0c0fffe0 run function players:items/cal/ground_lightning
#execute if score @s cal_cool matches 9955..9975 if predicate entities:teth_shoot positioned ~ ~1.9 ~ as 8cd0b58c-114c-4a96-b051-92aa0c0fffe0 run function players:items/cal/ground_lightning
execute if score @s cal_cool matches 9979 positioned ~ ~1.2 ~ as 8cd0b58c-114c-4a96-b051-92aa0c0fffe0 run function players:items/cal/sky_lightning
execute if score @s cal_cool matches 9970 positioned ~ ~1.2 ~ as 8cd0b58c-114c-4a96-b051-92aa0c0fffe0 run function players:items/cal/sky_lightning
execute if score @s cal_cool matches 9965 positioned ~ ~1.2 ~ as 8cd0b58c-114c-4a96-b051-92aa0c0fffe0 run function players:items/cal/sky_lightning
execute if score @s cal_cool matches 9971.. unless block ~ ~2 ~ #core:empty run function players:items/cal/hit_ceiling
execute if score @s cal_cool matches 9000..9960 run function players:items/cal/fall_fast
execute if score @s cal_cool matches 9961..9970 run function players:items/cal/fall_slow

execute if score @s cal_cool matches 9000.. run title @s actionbar {"text":"True Catastrophe in progress...","color":"gold"}

execute if score @s cal_cool matches 1..800 if score @s holdingCal matches 1 run function players:items/cal/cooldown
execute unless score @s cal_cool matches 1.. if score @s holdingCal matches 1 run function players:items/cal/main

execute if score @s holdingCal matches 0 if score @s wasHoldingCal matches 1 run scoreboard players set @s cal_charge 0

scoreboard players remove @s[scores={cal_cool=1..}] cal_cool 1
scoreboard players reset @s cal_jump

#

execute as @s[predicate=core:credits_box] run scoreboard players enable @s finality



#



execute as @s if predicate players:holding/whispersong_offhand run function players:items/whispersong/main
execute as @s if predicate players:holding/whispersong run function players:items/whispersong/main
execute as @s[tag=holdingWS] unless predicate players:holding/whispersong unless predicate players:holding/whispersong_offhand run function players:items/whispersong/end


execute if predicate players:holding/anyrs run function players:items/anyr/main
execute as @s[tag=anyr_active] positioned ~ ~1 ~ run function players:items/anyr/active

execute if predicate players:holding/flammer run function players:items/flammer/main
scoreboard players reset @s flammer_break

execute unless entity @s[tag=shade_active] if predicate players:shade_active run function players:items/shade_on
execute if entity @s[tag=shade_active] unless predicate players:shade_active run function players:items/shade_off

scoreboard players remove @s va.cool 1
execute if score @s va.cool matches 1 run playsound minecraft:dcustom.block.respawn_anchor.charge player @s ~ ~ ~ 1 2
execute if score @s va.cool matches 1 run execute anchored eyes positioned ^ ^ ^0.5 run particle glow ~ ~ ~ 0.4 0.4 0.4 0 10 force @s

execute if score #5T timer matches 1 if score @s settings.punish matches 1 run effect give @s resistance infinite 10 true
execute if score #5T timer matches 1 if entity @s[tag=settings.assist] run effect give @s resistance infinite 1 true

scoreboard players add @s pris_cool 1

scoreboard players remove @s hate.timer 1
execute if score #5T timer matches 0 if score @s hate.timer matches ..0 if predicate players:locations/lodahr_noportal as @s run function players:locations/visit_lodahr

execute if score @s khive_pcool matches ..1 positioned ~-3 ~-3 ~-3 as @e[type=marker,tag=kring,dx=5,dy=5,dz=5] at @s run function entities:misc/kring/tick

#=======================#
# Big Magic Stick Stuff #
#=======================#

scoreboard players operation @s wasHoldingMb = @s holdingMb
scoreboard players reset @s holdingMb
execute store result score @s holdingMb if predicate players:holding/mb

execute if score @s holdingMb matches 1 if score @s wasHoldingMb matches 0 run scoreboard players set @s maxMbCooldown 1200
execute if score @s holdingMb matches 1 if score @s wasHoldingMb matches 0 if predicate players:holding/cooldown_ench run scoreboard players set @s maxMbCooldown 900

execute if score @s wasHoldingMb matches 1 if score @s holdingMb matches 0 if score @s[tag=!disabled] mb_charge matches 1.. run function players:items/mb/reset
execute if score @s mb_charge matches 1.. if score @s mb_charge_cool matches ..0 run scoreboard players remove @s mb_charge 2
execute if score @s[tag=!disabled] mb_charge matches 0 run function players:items/mb/reset

execute if score @s holdingMb matches 1 if score @s[tag=!disabled] mb_cool matches ..0 run function players:items/mb/main
execute if score @s holdingMb matches 1 if score @s[tag=!disabled] mb_cool matches 1.. run function players:items/mb/actionbar

scoreboard players remove @s mb_cool 1

execute if score @s enrage.sun matches 1.. run function players:misc/sun_mad
execute if score @s enrage.moon matches 1.. run function players:misc/moon_mad

execute if entity @s[tag=va.remove_atts] unless entity @s[tag=using_aegis] run function players:items/virtuo_aegis/remove_atts
execute if entity @s[tag=using_aegis] run function players:items/virtuo_aegis/main

scoreboard players operation @s wasHoldingPC = @s holdingPC
scoreboard players reset @s holdingPC
execute store result score @s holdingPC if predicate players:holding/party_cannon

execute if score @s wasHoldingPC matches 1 if score @s holdingPC matches 0 if score @s pcannon_charge matches 1.. run function players:items/pcannon/reset
execute if score @s pcannon_charge matches 1.. if score @s pcannon_charge_c matches ..0 run function players:items/pcannon/reset

execute if score @s holdingPC matches 1 if score @s pcannon_charge_c matches 1.. run function players:items/pcannon/main


scoreboard players remove @s drehmal.dreamdia 1

###############
#                          #
#SALVAGED FROM GENERAL:MAIN#
#                          #
###############

scoreboard players remove @s khive_pcool 1

execute if score @s death_trigger matches 1.. run function players:death

#scoreboard players operation @s atk_speed_old = @s atk_speed
#execute store result score @s atk_speed run attribute @s minecraft:generic.attack_speed get 20
#execute unless score @s atk_speed_old = @s atk_speed run scoreboard players reset @s atk_charge
#scoreboard players add @s atk_charge 1

execute if entity @s[tag=!stombMusic,predicate=players:running,x=775.0,y=89.0,z=687.0,dx=6,dy=20,dz=6] run function players:music/stomb
execute if entity @s[tag=!stombMusic,predicate=!players:running,x=775.0,y=92.0,z=687.0,dx=6,dy=20,dz=6] run function players:music/stomb

execute if score @s playingMusic matches 1.. run stopsound @s music
execute if score #1S timer matches 0 unless entity @s[tag=fdry_music] unless entity @s[tag=pause_ambient] run scoreboard players remove @s playingMusic 1
execute if score #1S timer matches 0 if score @s avpod.songid matches 1.. run function players:avpod/disable/check
execute if score #1S timer matches 0 if entity @s[tag=nodata] run function players:avpod/disable/datacheck

execute if score #1S timer matches 0 unless predicate players:nomusic if score @s playingMusic matches ..0 unless entity @s[tag=dead] unless score @s avpod.songid matches 1.. run function players:music/nextsong
execute if score #1S timer matches 0 unless predicate players:nomusic if predicate players:lodahr unless entity @s[tag=dead] if entity @s[tag=ambient_music] unless score @s avpod.songid matches 1.. run function players:music/lodahr
execute if score #1S timer matches 0 if score @s playingMusic matches ..0 unless entity @s[tag=dead] if score @s avpod.songid matches 1.. run function players:avpod/nextsong

execute if score #1S timer matches 0 if score @s playingMusic matches 1.. if predicate players:nomusic unless entity @s[tag=emissary.infight] run function players:music/reset
execute if predicate players:nomusic run stopsound @s music
execute if predicate players:nomusic run stopsound @s record

execute if score #1S timer matches 0 unless score #em_fight_done? bool matches 1 unless score #em_fight_active? bool matches 1 if entity @s[predicate=players:is_not_dev,predicate=players:true_end,x=10000,z=10000,distance=..30] if entity @s[y=100,dy=150] unless entity @s[tag=dead] run function core:scene/emissary/0
execute if score #em_fight_active? bool matches 1 if predicate players:true_end unless entity @s[tag=emissary.infight] unless entity @s[tag=em.2fails] unless score @s respawn_timer matches 600.. run function players:misc/em_respawn_logic
execute if score #em_fight_active? bool matches 1 if predicate players:true_end unless entity @s[tag=emissary.infight] if entity @s[tag=em.2fails] run function players:misc/em_respawn_nope

execute if entity @s[tag=mb_holder] run function players:misc/mb_hold
execute if score #mb_cheater!!! bool matches 1 run function players:misc/mb_findtick

execute unless predicate players:overworld run stopsound @s music
execute if predicate players:overworld unless entity @s[tag=dead] run function players:overworld
execute if predicate players:lodahr unless entity @s[tag=dead] run function players:lodahr
execute if predicate players:space unless entity @s[tag=dead] run function players:space
execute if predicate players:the_end unless entity @s[tag=dead] unless score #teth_dead? bool matches 1 if score #100S timer matches 0 if entity @s[predicate=players:is_not_dev] if entity @e[type=ender_dragon] run function players:name_game/yavfinal
#crafting checks
execute if predicate players:the_end unless entity @s[tag=dead] if score #dragon_dia? temp matches 1 if score #100S timer matches 160.. if entity @s[predicate=players:is_not_dev] run function players:name_game/end

#execute store success score @s crafted run clear @s #core:spawn_egg 0
#execute if score @s crafted matches 1 run function players:crafts/main
execute if entity @s[tag=crafting] run function players:crafts/main

execute if score @s time_warp_timer matches -1.. run scoreboard players remove @s time_warp_timer 1
execute if score @s time_warp_timer matches 0 at @s run function players:misc/time_warp_end
execute if score @s time_warp_timer matches 0.. run function players:misc/time_warp_music

scoreboard players operation @s old_dmg_dealt = @s damage_dealt
scoreboard players reset @s damage_dealt

execute if entity @s[tag=remove_attributes] run function players:damage/remove_attributes
execute if score @s damage matches 1.. run function players:damage/main

execute if score @s dialogueOption matches 1.. run function dialogue:option

#================#
# Osteo   Stuff  #
#================#

#execute if predicate players:holding/osteo run function players:items/osteo/osteomain

#scoreboard players operation @s wasHoldingOsteo = @s holdingOsteo
#scoreboard players reset @s holdingOsteo
#execute store success score @s holdingOsteo if predicate players:holding/osteo 

#execute if score @s holdingOsteo matches 0 if score @s wasHoldingOsteo matches 1 run function players:items/osteo/osteokill

#================#
# Osteo 2  Stuff  #
#================#
scoreboard players operation @s wasHoldingOsteo = @s holdingOsteo
scoreboard players reset @s holdingOsteo
execute store success score @s holdingOsteo if predicate players:holding/osteo

execute if entity @s[scores={osteodamage=30..,holdingOsteo=1}] run function players:items/osteo2/tickup
execute if entity @s[scores={osteo_anim=0..}] run function players:items/osteo2/anim
scoreboard players reset @s osteodamage

execute if score @s holdingOsteo matches 0 if score @s wasHoldingOsteo matches 1 run scoreboard players reset @s osteouse

#===============#
# Compass Stuff #
#===============#

execute if entity @s[tag=has_radar] run function players:items/pradar/zones

#================#
# Electric Water #
#================#


execute if score #1S timer matches 0 at @s[x=-2777,y=15,z=2171,dx=56,dz=-46,dy=6] run playsound minecraft:dcustom.ui.button.click block @s[x=-2777,y=15,z=2171,dx=56,dz=-46,dy=6] ~ ~ ~ 0.25 2
execute as @s if predicate players:in_watertoggle if score #electrowater y matches 1 if score #5T timer matches 0 run damage @s 3 minecraft:rubber
execute as @s if predicate players:in_waterelectro unless predicate players:in_watersafe if score #electrowater x matches 1 at @s if block ~ ~ ~ water if score #5T timer matches 0 run damage @s 3 minecraft:rubber


#================#
# Orbit Puzzle   #
#================#



execute if predicate core:in_godmachine if score @s hurtby_timer matches -9990.. if block ~ ~-1 ~ yellow_stained_glass run function players:damage/primalenergy
execute as @s[x=-2735,y=21,z=2214,distance=..400] if score #exodusdoor timer matches 300.. run function core:scene/exodus/main



#================#
# Proxigea       #
#================#

execute if score #5T timer matches 0 as @s[predicate=players:proxigea,predicate=players:touching_water,tag=!prox_buff] run function players:items/proxigea/main
execute as @s[tag=prox_buff] anchored eyes positioned as @s run function players:items/proxigea/particles
execute if score #5T timer matches 0 as @s[tag=prox_buff,predicate=!players:touching_water] run function players:items/proxigea/reset
execute if score #5T timer matches 0 as @s[tag=prox_buff,predicate=players:proxigea_not,predicate=!players:emptymainhand] run function players:items/proxigea/reset


#================#
# Thundercrux    #
#================#

execute if entity @s[tag=tcrux_hit] run function players:items/tcrux/main
scoreboard players reset @s tcruxhit


execute if score #silentthing timer matches 1..940 as @s run function dialogue:myth/dia10/2silentthing/terminus

execute unless score #termstart bool matches 1 if predicate core:in_dispensary run function terminus:initial/terminus

function dialogue:myth/players



execute if predicate core:in_ytajelevator run effect give @s slow_falling 1 4 true


execute if score #1S timer matches 0 if predicate core:in_ytajtop run tag @s add onetimeslowfall

execute if score #1S timer matches 0 as @s[tag=onetimeslowfall] at @s run function players:misc/onetimeslowfall

execute if score #1S timer matches 0 run function core:story/achievement

execute in overworld positioned 26392 133 -188 unless entity @s[dx=180,dy=30,dz=180] run tag @s remove in_terminus

execute if score #1S timer matches 0 if predicate players:locations/starrise run advancement grant @s only advancements:discoveries/starrise

execute if score #1S timer matches 0 if entity @s[predicate=players:lodahr,x=-69,z=-1614,distance=..225] run advancement grant @s only advancements:discoveries/ytaj

execute if score #1S timer matches 1 if predicate players:locations/resonant_halls_water run effect give @s slowness 1 3 true

execute positioned 1249.51 52.55 1200.96 as @s[dy=3,dz=3,dx=3] run function core:scene/aeongale/lastdoor/1


execute if score #1S timer matches 0 in true_end positioned 9988 56 9989 as @s[dx=12,dy=12,dz=12] run scoreboard players set #returnportal bool 1

stopsound @s[tag=in_terminus] * minecraft:entity.lightning_bolt.thunder

# vvv flag/scoreboard resets. run after everything else.

tag @s remove hp_checked
execute if score @s HurtTime matches 1.. run scoreboard players remove @s HurtTime 1
scoreboard players reset @s drop_netherite
scoreboard players reset @s drop_zenith

execute as @s[predicate=players:holding/shield] if score @s[tag=!disabled] shield_cool matches 0.. run function dlc:shield/actionbar
execute as @s[predicate=players:holding/shield_offhand] if score @s[tag=!disabled] shield_cool matches 0.. run function dlc:shield/actionbar
scoreboard players remove @s shield_cool 1



# Voidtear


execute as @s if score @s timer matches 1..99 run scoreboard players set @s vtear_cool 2147483647

execute as @s[scores={vtear_cool2=1..9}] run scoreboard players add @s vtear_cool2 1
execute as @s[scores={vtear_cool2=10..}] run scoreboard players reset @s vtear_cool2


scoreboard players operation @s wasHoldingVT = @s holdingVT
scoreboard players operation @s wasHoldingVtear = @s wasHoldingVtear2
scoreboard players reset @s holdingVT
scoreboard players reset @s wasHoldingVtear2
execute store success score @s holdingVT if predicate players:holding/voidtear
execute store success score @s wasHoldingVtear2 if predicate players:holding/voidtear_offhand

execute if score @s wasHoldingVT matches 1 if score @s drop_voidtear matches 1 if score #voidtear int matches 16.. run function players:items/vt/throw_invalid

execute if score @s wasHoldingVT matches 1 if score @s drop_voidtear matches 1 if score @s vtear_cool2 matches 1.. unless score #voidtear int matches 16.. run function players:items/vt/misfire

execute if score @s wasHoldingVT matches 1 if score @s drop_voidtear matches 1 unless score @s vtear_cool2 matches 1.. unless score #voidtear int matches 16.. run function players:items/vt/throw

execute store success score @s HoldingVT if predicate players:holding/voidtear
execute if score @s HoldingVT matches 1.. run function players:items/vt/main

execute as @s[predicate=players:holding/voidtear_offhand] run function players:items/vt/main

scoreboard players reset @s drop_voidtear

execute unless score @s[predicate=!players:holding/voidtear_offhand,tag=!timed,scores={vtear_cool=..2147483647}] HoldingVT matches 1 run scoreboard players reset @s vtear_cool
execute if score @s[predicate=!players:holding/voidtear_offhand,tag=!timed,scores={vtear_cool=..2147483647}] HoldingVT matches 1 unless score @s wasHoldingVT matches 1 unless score @s wasHoldingVtear matches 1 run scoreboard players set @s[scores={vtear_cool=..2147483647}] vtear_cool 1
execute unless score @s[predicate=!players:holding/voidtear_offhand,tag=!timed] HoldingVT matches 1 if score @s wasHoldingVT matches 1 run effect clear @s invisibility



execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. at @e[tag=dagger] run particle flash ~ ~ ~ 0 0 0 1 5 force
execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. at @e[tag=dagger] run particle minecraft:firework ~ ~ ~ 0 25 0 0 200 force
execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. at @e[tag=dagger] run playsound minecraft:dcustom.block.bell.use player @s ~ ~ ~ 1 2
execute as @s[tag=voided] if score #5S timer matches 80 at @e[tag=dagger,scores={num=400..}] run particle minecraft:firework ~ ~ ~ 0 100 0 0 200 force
execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. at @s run particle minecraft:smoke ~ ~1 ~ 0.25 0.9 0.25 0.05 50 normal @a
execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. run effect clear @s invisibility


execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. run tag @s remove reset_cd
execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. run tag @s remove timed
execute as @s[tag=voided,tag=!trans] if score @s timer matches 100.. run tag @s add trans


execute as @s unless predicate players:invisibilty run tag @s remove reset_cd

execute as @s[tag=timed] run scoreboard players add @s timer 1

# execute at @s if predicate core:in_ebonrun run effect give @s mining_fatigue 1 0 true



# Axe of Growth
# execute if predicate players:holding/axe_growth1 if score #daycount timer matches 1.. if score #1S timer matches 0 run function players:items/axe_growth/1
# execute if predicate players:holding/axe_growth2 if score #daycount timer matches 2.. if score #1S timer matches 0 run function players:items/axe_growth/2
# execute if predicate players:holding/axe_growth3 if score #daycount timer matches 3.. if score #1S timer matches 0 run function players:items/axe_growth/3
# execute if predicate players:holding/axe_growth4 if score #daycount timer matches 4.. if score #1S timer matches 0 run function players:items/axe_growth/4
# execute if predicate players:holding/axe_growth5 if score #daycount timer matches 5.. if score #1S timer matches 0 run function players:items/axe_growth/5
# execute if predicate players:holding/axe_growth6 if score #daycount timer matches 6.. if score #1S timer matches 0 run function players:items/axe_growth/6
# execute if predicate players:holding/axe_growth7 if score #daycount timer matches 7.. if score #1S timer matches 0 run function players:items/axe_growth/7
# execute if predicate players:holding/axe_growth8 if score #daycount timer matches 8.. if score #1S timer matches 0 run function players:items/axe_growth/8
# execute if predicate players:holding/axe_growth9 if score #daycount timer matches 9.. if score #1S timer matches 0 run function players:items/axe_growth/9
# execute if predicate players:holding/axe_growth10 if score #daycount timer matches 10.. if score #1S timer matches 0 run function players:items/axe_growth/10
# execute if predicate players:holding/axe_growth11 if score #daycount timer matches 11.. if score #1S timer matches 0 run function players:items/axe_growth/11
# execute if predicate players:holding/axe_growth12 if score #daycount timer matches 12.. if score #1S timer matches 0 run function players:items/axe_growth/12
# execute if predicate players:holding/axe_growth13 if score #daycount timer matches 13.. if score #1S timer matches 0 run function players:items/axe_growth/13
# execute if predicate players:holding/axe_growth14 if score #daycount timer matches 14.. if score #1S timer matches 0 run function players:items/axe_growth/14
# execute if predicate players:holding/axe_growth15 if score #daycount timer matches 15.. if score #1S timer matches 0 run function players:items/axe_growth/15
# execute if predicate players:holding/axe_growth16 if score #daycount timer matches 16.. if score #1S timer matches 0 run function players:items/axe_growth/16
# execute if predicate players:holding/axe_growth17 if score #daycount timer matches 17.. if score #1S timer matches 0 run function players:items/axe_growth/17
# execute if predicate players:holding/axe_growth18 if score #daycount timer matches 18.. if score #1S timer matches 0 run function players:items/axe_growth/18
# execute if predicate players:holding/axe_growth19 if score #daycount timer matches 19.. if score #1S timer matches 0 run function players:items/axe_growth/19
# execute if predicate players:holding/axe_growth20 if score #daycount timer matches 20.. if score #1S timer matches 0 run function players:items/axe_growth/20



# Misc 

execute if predicate players:holding/nail if score @s usedNail matches 1.. run function players:items/nail/hit

# execute at @s[scores={usedIronP=..1}] if predicate core:in_ebonrun run function players:locations/ebonrun
# execute at @s[scores={usedDiamondP=..1}] if predicate core:in_ebonrun run function players:locations/ebonrun
# execute at @s[scores={usedNetheriteP=..1}] if predicate core:in_ebonrun run function players:locations/ebonrun

execute as @s[predicate=players:adventure_areas] if predicate players:frost_walker run function players:disable_frost_walker

execute as @s[predicate=!players:adventure_areas,tag=disable_frost_walker] run function players:enable_frost_walker

execute unless predicate players:locations/in_arena run tag @s remove initialloop

execute as @s[predicate=players:locations/red_dawn_spawn1,tag=!red_dawn_spawn1] run function dlc:spawn/red_dawn_spawn1

execute as @s[predicate=players:locations/red_dawn_spawn2,tag=!red_dawn_spawn2] run function dlc:spawn/red_dawn_spawn2

execute as @s[predicate=players:locations/red_dawn_spawn3,tag=!red_dawn_spawn3] run function dlc:spawn/red_dawn_spawn3

execute as @s[predicate=players:locations/red_dawn_spawn4,tag=!red_dawn_spawn4] run function dlc:spawn/red_dawn_spawn4

execute if predicate players:locations/red_dawn_nomusic run function players:music/stopfurtherance

execute unless predicate players:locations/red_dawn_nomusic if entity @s[tag=bossmusic] run function players:music/startfurtherance

#execute as @s unless score @s catch_old >= @s catch run function dlc:fishing/temp_catch

#function dlc:accessories/main


execute as @s[scores={dlc=1}] run function dlc:triggerdlc


# ===================================================================
#               PLAYER-CENTRIC COMMANDS 
# ===================================================================

### Harvest's Hope ###
execute if predicate players:holding/soul_scythe if score @s use_soul matches 1.. run function players:items/soul/use
execute as @e[tag=soul_burn] run function players:items/soul/main

### Pleasures of War ###
execute if predicate players:holding/soul_scythe if score @s use_soul matches 1.. run function players:items/soul/use
execute as @e[tag=soul_burn] run function players:items/soul/main


### Night Watch ###
execute if predicate players:holding/backstabber_mainhand if score @s use_bs matches 1.. run function players:items/backstabber/main
execute if predicate players:holding/backstabber_mainhand unless predicate players:invisibilty run scoreboard players add @s bstimer 1
execute if predicate players:holding/backstabber_mainhand if score @s bstimer matches 100.. run function players:items/backstabber/resetreach

execute if predicate players:holding/backstabber_offhand if score @s use_bs matches 1.. run function players:items/backstabber/main
execute if predicate players:holding/backstabber_offhand unless predicate players:invisibilty run scoreboard players add @s bstimer 1
execute if predicate players:holding/backstabber_offhand if score @s bstimer matches 100.. run function players:items/backstabber/resetreach

execute if predicate players:holding/backstabber_mainhand if predicate players:sneak if predicate players:invisibilty run function players:items/backstabber/invis
execute if predicate players:holding/backstabber_mainhand if predicate players:holding/backstabber_offhand if predicate players:sneak if predicate players:invisibilty run function players:items/backstabber/dual

execute unless predicate players:holding/backstabber_offhand unless predicate players:holding/backstabber_mainhand unless predicate players:holding/leviathan if score @s bskills matches 1.. run function players:items/backstabber/resetreach
execute unless predicate players:holding/backstabber_mainhand if score @s kills matches 1.. run scoreboard players reset @s kills
execute unless predicate players:holding/backstabber_offhand if score @s kills matches 1.. run scoreboard players reset @s kills

# -------------------------------------------------------------------

### Verdant ###

execute as @s[tag=temp_shooter] at @s positioned ~ ~1 ~ run tag @e[type=#arrows,sort=nearest,limit=1,distance=..3,tag=!arrow.inground,tag=!verdant] add verdant
execute as @s[tag=temp_shooter] at @s positioned ~ ~1 ~ if entity @e[type=spectral_arrow,sort=nearest,limit=1,distance=..3,tag=!arrow.inground] run scoreboard players set #spectral2 bool 1


### Leviathan ###

scoreboard players operation @s wasHoldingLevi = @s holdingLevi
scoreboard players reset @s holdingLevi
execute store success score @s holdingLevi if predicate players:holding/leviathan
execute if score @s wasHoldingLevi matches 1 if score @s drop_levi matches 1 run function players:items/levi/misfire


execute store success score @s HoldingLevi if predicate players:holding/leviathan

execute if predicate players:holding/leviathan if score @s levi_reach matches 1.. as @s[tag=!strengthened] run function players:items/levi/weaken
execute if predicate players:holding/leviathan if score @s use_levi matches 1.. run function players:items/levi/main
execute if predicate players:holding/leviathan run scoreboard players add @s levi_reach 1
execute if predicate players:holding/leviathan run function players:items/levi/holding
#execute if predicate players:holding/leviathan if predicate players:sweeping run item modify entity @s weapon.mainhand players:remove_sweeping_edge


execute if predicate players:holding/leviathan if score @s levi_reach matches 140.. run scale set pehkui:entity_reach 1 @s
#execute if predicate players:holding/leviathan if score @s levi_reach matches 140.. run scale set pehkui:defense 0.5 @s
execute if predicate players:holding/leviathan if score @s levi_reach matches 140.. run tag @s remove strengthened


execute if predicate players:holding/leviathan if score @s levi_kills matches 5.. unless score @s levi_cool matches 1.. if score @s drop_levi matches 1 run function players:items/levi/apotheosis
#execute if predicate players:holding/leviathan if score @s levi_reach matches ..140 if predicate dev:entity_properties/effects/haste at @s positioned ~ ~1 ~ run function particle:effects/mist


execute unless predicate players:holding/leviathan if score @s levi_reach matches 1.. run scale set pehkui:entity_reach 1 @s
#execute unless predicate players:holding/leviathan if score @s levi_reach matches 1.. run scale set pehkui:defense 1 @s
#execute unless predicate players:holding/leviathan if score @s levi_reach matches 1.. run attribute @s generic.attack_speed base set 4
#execute unless predicate players:holding/leviathan if score @s levi_reach matches 1.. run attribute @s generic.attack_damage base set 1
execute unless predicate players:holding/leviathan if score @s levi_reach matches 1.. run scoreboard players reset @s levi_reach
execute unless predicate players:holding/leviathan if entity @s[tag=strengthened] run tag @s remove strengthened
execute unless predicate players:holding/leviathan if score @s levi_cool matches 1.. run function players:items/levi/cooldown

scoreboard players reset @s drop_levi

# -------------------------------------------------------------------

### Force Majeure ###
execute if predicate players:holding/force run function players:items/force/main
execute unless predicate players:holding/force if score @s thun matches 1.. run scoreboard players reset @s thun

# -------------------------------------------------------------------

### Shadowblade ###
execute as @e[tag=bleed,limit=1] at @s run function players:items/hangyaku/bleed

# -------------------------------------------------------------------

### Gauntlets ###
execute if predicate players:holding/gauntlets run function players:items/gauntlets/main
execute unless predicate players:holding/gauntlets as @s[scores={gaunt_stats=1..}] run function players:items/gauntlets/reset

# -------------------------------------------------------------------


### First End ###

execute if predicate players:holding/first_end as @s[scores={use_first=1..}] run function players:items/first_end/main

# -------------------------------------------------------------------

### Unchecked Ambition ###

execute if predicate players:holding/ambition as @s[scores={use_ambition=1..}] run function players:items/ambition/main
execute as @e[tag=tagged,scores={tag_cd=0}] run tag @s remove tagged
execute as @e[tag=ambition] at @s unless entity @e[tag=!tagged,type=!player,type=!#core:oblivion_immune,sort=nearest,limit=1,distance=..8] as @e[tag=tagged,scores={tag_cd=..2}] run scoreboard players remove @s tag_cd 1

# -------------------------------------------------------------------

### Reticent Resolve ###

execute if predicate players:holding/reticent as @s[scores={blocking3=..4,blocked=1..}] run function players:items/reticent/main
execute as @s[scores={blocked=1..}] run scoreboard players reset @s blocked
execute as @s[scores={blocked=1..,blocking3=5..}] unless predicate players:holding/reticent run scoreboard players reset @s blocked
execute as @a[scores={blocking3=2..}] unless predicate players:is_blocking run scoreboard players reset @s blocking3
execute if predicate players:holding/reticent as @e[tag=parried] run function players:items/reticent/parry

# -------------------------------------------------------------------

### Hexed King ###
execute as @e[tag=hexed] if predicate entities:hurt run function players:items/hexed/reset
execute as @e[tag=hexed] unless predicate players:recall run function players:items/hexed/loop
execute if predicate players:holding/hexed as @s[scores={hex=1..}] as @e[tag=!hexed,predicate=!entities:invul,type=!#entities:dummy,type=!#entities:tickless_passive,type=!#entities:highcapacity,type=!#entities:proj,tag=!oblivion_immune,distance=..8,nbt={HurtTime:10s}] run function players:items/hexed/loop
execute if predicate players:holding/hexed as @s[scores={hex=1..}] run scoreboard players reset @s hex

# -------------------------------------------------------------------

### Serendipity ###
function core:rng
scoreboard players operation #rand temp %= #4 const
execute if predicate players:holding/serendipity as @s[scores={lucky=1..}] as @e[type=!player,type=!#core:oblivion_immune,distance=..8,nbt={HurtTime:10s}] if score #rand temp matches 1 run function players:items/serendipity/damage
execute if predicate players:holding/serendipity as @s[scores={lucky=1..}] run scoreboard players reset @s lucky

# -------------------------------------------------------------------

### Hangyaku ###
function core:rng
scoreboard players operation #rand temp %= #2 const
execute as @s[scores={use_shad=1..}] if predicate players:holding/hangyaku if score #rand temp matches 1 as @e[type=!player,type=!#core:oblivion_immune,distance=..8,nbt={HurtTime:10s}] run function players:items/hangyaku/use
execute as @s[scores={use_shad=1..}] if predicate players:holding/hangyaku run scoreboard players reset @s use_shad

# -------------------------------------------------------------------

### Warring States ###

execute as @s[scores={war=1..}] if predicate players:holding/warring as @e[type=!player,type=!#core:oblivion_immune,distance=..8,nbt={HurtTime:10s}] run function players:items/warring/use

# -------------------------------------------------------------------


### Destiny Armor ###
#execute if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet #if predicate players:sneak unless entity @s[tag=destiny] run scoreboard players add @s destiny 1
#execute if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_helmet #if predicate players:sneak if score @s destiny matches 100.. unless entity @s[tag=destiny] run function players:items/destiny_armor/main
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_helmet if predicate players:sneak unless entity @s[tag=destiny] if score @s destiny matches 20 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1.2
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_helmet if predicate players:sneak unless entity @s[tag=destiny] if score @s destiny matches 40 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1.4
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_helmet if predicate players:sneak unless entity @s[tag=destiny] if score @s destiny matches 60 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1.6
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_helmet if predicate players:sneak unless entity @s[tag=destiny] if score @s destiny matches 80 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1.8
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_helmet if predicate players:sneak unless entity @s[tag=destiny] if score @s destiny matches 100 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 2
#
#execute if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if #predicate players:sneak unless entity @s[tag=destinyc] run scoreboard players add @s destinyc 1
#execute if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate players:wearing_destiny_crown if #predicate players:sneak if score @s destinyc matches 100.. unless entity @s[tag=destinyc] run function players:items/destiny_armor/main_c
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_crown if predicate players:sneak unless entity @s[tag=destinyc] if score @s destinyc matches 20 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 2
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_crown if predicate players:sneak unless entity @s[tag=destinyc] if score @s destinyc matches 40 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1.8
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_crown if predicate players:sneak unless entity @s[tag=destinyc] if score @s destinyc matches 60 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1.6
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_crown if predicate players:sneak unless entity @s[tag=destinyc] if score @s destinyc matches 80 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1.4
#execute at @s if predicate players:wearing_destiny_boots if predicate players:wearing_destiny_chestplate if predicate players:wearing_destiny_leggings if predicate #players:wearing_destiny_crown if predicate players:sneak unless entity @s[tag=destinyc] if score @s destinyc matches 100 run playsound minecraft:dcustom.block.enchantment_table.use master @a #~ ~ ~ 1 1
#

#execute unless predicate players:sneak run scoreboard players reset @s destiny
#execute unless predicate players:sneak run scoreboard players reset @s destinyc
#execute if predicate players:sneak if entity @s[tag=destiny] run effect give @s blindness 2 2 true
#execute if predicate players:sneak if entity @s[tag=destiny] run effect give @s slowness 2 2 true

# -------------------------------------------------------------------

### Providence ###
#in hurt:entity and kill:entity now

# -------------------------------------------------------------------

# --- Cloud in a Bottle ---
execute at @s if predicate players:adventure_areas unless predicate players:locations/in_terminus if predicate dlc:cloud run scoreboard players add @s stop 1
execute if entity @s[tag=!cloud,scores={stop=40..}] run function players:nocloud
execute if entity @s[tag=cloud] run function players:checkcloud
execute if score #1S timer matches 0 run execute at @s if entity @s[tag=cloud] unless predicate players:adventure_areas run function players:givecloud

# --- Wings ---
execute if score #1S timer matches 0 run execute at @s if entity @s[tag=!wings] if predicate dlc:wings if predicate players:adventure_areas unless predicate players:locations/in_terminus run function players:nowings
execute if score #1S timer matches 0 run execute at @s if entity @s[tag=!wings] if predicate dlc:wings if predicate players:lodahr run function players:nowings
execute if entity @s[tag=wings] run function players:checkwings
execute if score #1S timer matches 0 run execute at @s if entity @s[tag=wings,advancements={advancements:primordial/enter_yav=false,advancements:primordial/khive_angy=false}] unless predicate dlc:wings unless predicate players:lodahr unless predicate players:adventure_areas run function players:givewings
execute if score #1S timer matches 0 run execute at @s if entity @s[tag=wings,advancements={advancements:primordial/enter_yav=true,advancements:primordial/khive_angy=true}] unless predicate dlc:wings unless predicate players:lodahr unless predicate players:adventure_areas run function players:givewings
execute if score #1S timer matches 0 run execute if entity @s[advancements={advancements:primordial/khive_angy=true,advancements:primordial/enter_yav=false}] if predicate dlc:wings run function players:nowings

# -------------------------------------------------------------------

### Waystones & Pocket Wormhole ###

execute at @s if predicate players:hold_pocket if predicate players:lodahr run schedule function weapons:give/pocket 1t
execute at @s if predicate players:hold_pocket if predicate players:lodahr if entity @s[tag=!temp_waystone] run tellraw @s {"text":"Your waystone fizzles away in your hand","bold":true,"color":"dark_red"}
execute at @s if predicate players:hold_pocket if predicate players:lodahr if entity @s[tag=!temp_waystone] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0
execute if predicate players:hold_pocket if predicate players:lodahr run tag @s add temp_waystone
execute if predicate players:hold_pocket if predicate players:lodahr run item modify entity @s weapon.mainhand core:soletta/remove_one_item

execute at @s if predicate players:hold_waystone if predicate players:lodahr run schedule function weapons:give/waystone 1t
execute at @s if predicate players:hold_waystone if predicate players:lodahr if entity @s[tag=!temp_waystone] run tellraw @s {"text":"Your waystone fizzles away in your hand","bold":true,"color":"dark_red"}
execute at @s if predicate players:hold_waystone if predicate players:lodahr if entity @s[tag=!temp_waystone] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0
execute if predicate players:hold_waystone if predicate players:lodahr run tag @s add temp_waystone
execute if predicate players:hold_waystone if predicate players:lodahr run item modify entity @s weapon.mainhand core:soletta/remove_one_item

execute if predicate players:hold_pocket if entity @s[tag=supersoldier] run schedule function weapons:give/pocket 1t
execute if predicate players:hold_pocket if entity @s[tag=supersoldier,tag=!temp_waystone] run tellraw @s {"text":"Your wormhole fizzles away in your hand","bold":true,"color":"dark_red"}
execute if predicate players:hold_pocket if entity @s[tag=supersoldier,tag=!temp_waystone] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0
execute if predicate players:hold_pocket if entity @s[tag=supersoldier] run tag @s add temp_waystone
execute if predicate players:hold_pocket if entity @s[tag=supersoldier] run item modify entity @s weapon.mainhand core:soletta/remove_one_item

execute if predicate players:hold_waystone if entity @s[tag=supersoldier] run schedule function weapons:give/waystone 1t
execute if predicate players:hold_waystone if entity @s[tag=supersoldier,tag=!temp_waystone] run tellraw @s {"text":"Your waystone fizzles away in your hand","bold":true,"color":"dark_red"}
execute if predicate players:hold_waystone if entity @s[tag=supersoldier,tag=!temp_waystone] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0
execute if predicate players:hold_waystone if entity @s[tag=supersoldier] run tag @s add temp_waystone
execute if predicate players:hold_waystone if entity @s[tag=supersoldier] run item modify entity @s weapon.mainhand core:soletta/remove_one_item

execute at @s if predicate players:hold_pocket if predicate players:adventure_areas run schedule function weapons:give/pocket 1t
execute at @s if predicate players:hold_pocket if predicate players:adventure_areas if entity @s[tag=!temp_waystone] run tellraw @s {"text":"Your wormhole fizzles away in your hand","bold":true,"color":"dark_red"}
execute at @s if predicate players:hold_pocket if predicate players:adventure_areas if entity @s[tag=!temp_waystone] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0
execute if predicate players:hold_pocket if predicate players:adventure_areas run tag @s add temp_waystone
execute if predicate players:hold_pocket if predicate players:adventure_areas run item modify entity @s weapon.mainhand core:soletta/remove_one_item

execute at @s if predicate players:hold_waystone if predicate players:adventure_areas run schedule function weapons:give/waystone 1t
execute at @s if predicate players:hold_waystone if predicate players:adventure_areas if entity @s[tag=!temp_waystone] run tellraw @s {"text":"Your waystone fizzles away in your hand","bold":true,"color":"dark_red"}
execute at @s if predicate players:hold_waystone if predicate players:adventure_areas if entity @s[tag=!temp_waystone] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0
execute if predicate players:hold_waystone if predicate players:adventure_areas run tag @s add temp_waystone
execute if predicate players:hold_waystone if predicate players:adventure_areas run item modify entity @s weapon.mainhand core:soletta/remove_one_item

execute if entity @s[tag=temp_waystone] unless predicate players:hold_pocket unless predicate players:hold_waystone run tag @s remove temp_waystone

# -------------------------------------------------------------------

### Other Player-Specific Logic ###
# --- Zenith ---
execute if predicate players:holding/zenith2 run scoreboard players add @s zenith_cd 1

# --- Oblivion Cooldown Logic ---
execute at @s if predicate players:in_em_arena run scoreboard players set @s obv_cool 2147483647
execute at @s if predicate core:in_hovadmain run scoreboard players set @s obv_cool 2147483647
execute at @s if predicate players:in_generals_arena run scoreboard players set @s obv_cool 2147483647
execute at @s if score @s obv_cool matches 2000000000.. unless predicate players:in_em_arena unless predicate core:in_hovadmain unless predicate players:in_generals_arena run scoreboard players reset @s obv_cool


# ===================================================================
#             GLOBAL / ENTITY-BASED COMMANDS
# ===================================================================
# This section contains commands that run on entities or from fixed 
# positions, and do not depend on the player-centric execution.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### Special Entity Ticking ###
execute as @e[tag=obscythe] at @s run function players:items/obv/entity
execute as @e[tag=zenith_beam] at @s run function players:items/avsaber/entity
execute as @e[tag=apotheosis] at @s run function players:items/levi/entity
execute as @e[tag=draining,limit=2] at @s run function players:items/mal/drain2
execute as @e[type=interaction,tag=swing_marker] unless entity @a[predicate=players:holding/male2] run kill @s

# -------------------------------------------------------------------


# -------------------------------------------------------------------

# --- Oblivion Puzzle ---
execute unless score #ob_finish bool matches 2 as @a at @s if predicate players:locations/oblivion run function dlc:ob_upgrade/puzzle_main

# --- Terminus Animation ---
execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] run scoreboard players add #station timer 1
execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] as @e[tag=visual,distance=..5] at @s positioned ~ ~1.25 ~ if score #station timer matches 6.. run function particle:term/animate
execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] if score #station timer matches 6.. run scoreboard players reset #station timer
execute positioned 26475.47 141.08 -56.00 if entity @a[distance=..15] run function dlc:modify/main

# --- Frenzy Upgrade ---
execute at @s if predicate players:locations/sahd_forge as @e[predicate=players:is_fateful] at @s if block ~ ~-4 ~ lava run function dlc:frenzy_upgrade/initial

# --- B52 ---
execute if predicate players:broke_ore run function players:items/b52/broke_block

# --- Burnt Generals Button Message ---
execute positioned -2851 41 5331 if entity @a[distance=..10] run execute if score #generals_dead? bool matches 0 run title @a[tag=!bg_questholder,distance=..10] actionbar {"text":"A malevolent aura emanates from the central brazier...","color":"dark_red"}
execute positioned -2851 41 5331 if entity @a[distance=..10] run execute if score #generals_dead? bool matches 0 run title @a[tag=bg_questholder,distance=..10] actionbar {"text":"The Burnt Generals eagerly await your summons.","color":"dark_red"}

# --- Trial Legendary - Ihted Spawn ---

execute unless score #ihted_spellforged_spawn bool matches 1 run execute in minecraft:lodahr positioned -963 245 -967 if entity @a[distance=..15] run function dlc:ihted_spawn

#execute if score #daycount2 timer matches 0 run say hi

# --- Foundry Anim ---
execute positioned -3293.01 112.16 1595.00 if entity @a[distance=..50] as @e[tag=foundry_vis] at @s rotated 0 180 positioned ~ ~1 ~0.2 if score #5T timer matches 0 run function particle:term/animate

execute positioned -3293.01 112.16 1595.00 if entity @a[distance=..15] as @e[tag=foundry_display,tag=!powered] if predicate players:holding/primal_focus run function dlc:foundry_power 
execute positioned -3293.01 112.16 1595.00 if entity @a[distance=..15] as @e[tag=foundry_display,tag=powered] unless predicate players:holding/primal_focus run function dlc:foundry_power2 

execute positioned -3293.01 112.16 1595.00 if entity @a[distance=..15] as @e[tag=foundry_display,tag=powered] if score #fdry_finished bool matches 1 if predicate players:holding/primal_focus run function dlc:foundry_power3


execute positioned -555.46 32.00 4997.47 if entity @a[distance=..50] as @e[tag=asc_display,tag=!powered] at @s positioned ~ ~2 ~ run function particle:asc/animate
execute positioned -555.46 32.00 4997.47 if entity @a[distance=..50] as @e[tag=asc_display,tag=!powered] if predicate players:holding/inert_tablet run function dlc:tablet_start


execute as @s[tag=waterspiked] run function entities:ai/waterspiked/bleed

execute as @s[tag=disabled] run function players:misc/disabled


execute as @s[tag=generals_music,tag=!finished] if predicate players:in_generals_arena unless score @s playingMusic matches 1.. at @s run function players:music/generals
execute as @s[tag=generals_music] unless predicate players:in_generals_arena run tag @s remove generals_music

execute at @s if score #5T timer matches 0 run function dlc:zul/check_spawn

execute as @e[tag=destiny] run scoreboard players add @s destiny 1
execute as @e[tag=destiny,scores={destiny=3..}] run tag @s remove destiny
execute as @e[scores={destiny=3..}] run scoreboard players reset @s destiny




execute if predicate players:holding/ace run function players:items/ace/main
execute as @s[tag=ace] unless predicate players:holding/ace run function players:items/ace/main_2