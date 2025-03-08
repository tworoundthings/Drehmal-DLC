# meteor code is somewhat intensive
execute if score #5S timer matches 87 if entity @s[tag=initial_meteor_marker] run function projectiles:meteors/initial_markers/main

execute if entity @s[tag=spawn] run function entities:spawn/main
execute if entity @s[tag=ossein] run function entities:bosses/ossein/spawn_ani
execute if entity @s[tag=ossein_telegraph] run function entities:bosses/ossein/ossein_telegraph
execute if entity @s[tag=foundry_buff] run function entities:misc/steroid/main
execute if entity @s[tag=drunk_minion] run function entities:ai/mistake/minion_ring
execute if entity @s[tag=khive_tp] run function entities:ai/mistake/teleport_ring
execute if entity @s[tag=loe_attack] run function entities:ai/loe_golem/spike_loop
execute if entity @s[tag=water_clear] run function entities:ai/loe_golem/water_clear
execute if entity @s[tag=sun_orb] run function entities:ai/sunmoon/orb_main
execute if entity @s[tag=oskull_tele] run function entities:bosses/ossein/oskull_tele
execute if entity @s[tag=portalcheck] run function players:misc/portal/tick
execute if entity @s[tag=indv_portal_break] run function players:misc/portal/indv_tick
execute if entity @s[tag=estone_eater] run function players:items/estone/tick
execute if entity @s[tag=fear_ring] run function entities:ai/tethlaen/fear_ring
execute if entity @s[tag=teth_gclear] run function entities:ai/tethlaen/target_tick
execute if entity @s[tag=dragon_tracker] run function entities:ai/tethlaen/tracker_main
execute if entity @s[tag=bernice_spawn] run function entities:bosses/worm/spawn_ani
execute if entity @s[tag=fdry_minion] run function entities:ai/fdry/minion_ring
execute if entity @s[tag=fdry_tp] run function entities:ai/fdry/teleport_ring
execute if entity @s[tag=cube_tracker] run function entities:ai/cube/tracker
execute if entity @s[tag=vHog_steamjet] run function entities:ai/volcanohog/steamjet/main
execute if score #5T timer matches 0 if entity @s[tag=burrowerSpawn] run function entities:ai/burrower/spawnmarker/main
execute if entity @s[tag=Laser] run function entities:ai/laserbow/laserweee
execute if entity @s[tag=spawnspinner_marker] run function entities:ai/spawnspinner/marker_main
execute if entity @s[tag=portal_spiral] run function entities:misc/portal_spiral
execute if entity @s[tag=khive_lightning] run function core:scene/mb_run/lightning_main
execute if entity @s[tag=khive_lightball] run function core:scene/mb_run/lightning_ball
execute if entity @s[tag=horseSummon] run function players:avhorse/summon/anim
execute if entity @s[tag=pris_mace] run function players:items/pris_mace/main
execute if entity @s[tag=emmisary_ball1] run function entities:ai/emissary/ring/animate
execute if entity @s[tag=emmisary_ball2] run function entities:ai/emissary/ball
execute if entity @s[tag=em_impact] run function entities:ai/emissary/slam/tick
execute if entity @s[tag=em_tele1] run function entities:ai/emissary/slam/tele
execute if entity @s[tag=em_tele2] run function entities:ai/emissary/ring_tele
execute if entity @s[tag=em_ring_prison] run function entities:ai/emissary/em_ring_prison
execute if entity @s[tag=mal_aura] run function players:items/mal/aura_tick
execute if entity @s[tag=webspinner_web] run function entities:ai/webspinner/web_main
execute if entity @s[tag=nahyn_trial] run function players:misc/maze/tick
execute if entity @s[tag=p_creeper_marker] unless predicate entities:riding_poison_creeper run function entities:ai/poison_creeper/marker_main
execute if entity @s[tag=lightning_streak] run function core:scene/mb_run/streak/tick
execute if entity @s[tag=dunes_portal] run function core:scene/credits/animate
execute if entity @s[tag=em_tele3] run function entities:ai/emissary/charge_tele
execute if entity @s[tag=k_light] run function core:scene/mb_run/streak/laser_tick
execute if entity @s[tag=meteor_tele] run function entities:ai/emissary/meteor/tele_tick
execute if entity @s[tag=calldown_main] run function entities:ai/emissary/calldown/tele_main
execute if entity @s[tag=spike_line] run function entities:ai/emissary/calldown/spike_streak
execute if entity @s[tag=pseudodragon_flame] run function entities:passive/pseudodragon/flame_main
execute if entity @s[tag=ld_spawn_attempt] run function entities:spawn/lodahr_cycle/spawn_attempt
execute if entity @s[tag=lightning_strike] run function entities:ai/lightning_evoker/strike_main
execute if entity @s[tag=khive_hSpr_spawn] run function entities:hint_sprites/khive/marker_spawn
execute if entity @s[tag=dahr_hSpr_spawn] run function entities:hint_sprites/dahr/marker_spawn
execute if entity @s[tag=vay_hSpr_spawn] run function entities:hint_sprites/vayniklah/marker_spawn
execute if entity @s[tag=nahyn_hSpr_spawn] run function entities:hint_sprites/nahyn/marker_spawn
execute if entity @s[tag=lai_hSpr_spawn_caldera] run function entities:hint_sprites/lai/caldera_marker_spawn
execute if entity @s[tag=lai_hSpr_spawn_inside] run function entities:hint_sprites/lai/inside_marker_spawn
execute if entity @s[tag=aph_meteor_debris_core] run function projectiles:meteors/debris_core_main
execute if entity @s[tag=stun_marker] run function entities:misc/stunmarker_main
execute if entity @s[tag=fststd_block] run function players:items/festering_strides/marker_main
execute if entity @s[tag=bernice_spawner] run function entities:ai/worm/mob1/spawner_tick
execute if entity @s[tag=aj.mael.root] run function dialogue:maelihs/anim/main
execute if entity @s[tag=paren.burst_vein] run function players:items/parenchyma/vein_tick
execute if entity @s[tag=em.stomp] run function entities:ai/emissary/pound/main
execute if entity @s[tag=spawn_warden] run function entities:ai/warden/spawn_tick
execute if entity @s[tag=warden.dust] run function entities:ai/warden/dust_tick
execute if entity @s[tag=em_meteor_spawner] run function entities:ai/emissary/meteor/tick
execute if entity @s[tag=kring] run particle end_rod ~ ~1.25 ~ 0.5 0.5 0.5 0 1
execute if entity @s[tag=ossein.energy] run function entities:bosses/ossein/spawnani/etick
execute if entity @s[tag=eyebiter.bit_track] run function players:items/virtuo_aegis/track_tick
execute if entity @s[tag=em.soul] run function core:scene/emissary/soul_tick
execute if entity @s[tag=preprogrammed_meteor_debris] run function projectiles:meteors/preprogrammed_hit/debris_core_main
execute if entity @s[tag=aph_meteor_blackstone] run function projectiles:meteors/blackstone_tick
execute if entity @s[tag=1kscars.check] run function players:items/1kscars/kill/tick
execute if entity @s[tag=samurai_spinring] run function entities:ai/samurai/spinring
execute if entity @s[tag=samurai_dash_loc] run function entities:ai/samurai/charge/dash_loc
execute if entity @s[tag=sentry_telegraph] run function entities:ai/sentry/telegraph_main
execute if entity @s[tag=osteo_slash] run function players:items/osteo2/slash_tick
execute if entity @s[tag=zenith_visual] run function players:items/avsaber/particle_tick
execute if entity @s[tag=oblivion_visual] run function players:items/obv/particle_tick


execute if score #5T timer matches 4 if entity @s[tag=deathmarker] run function entities:misc/deathmarker/kill_on_despawn

execute if score #worm_moving? bool matches 1 unless score #b.passive_forceai? bool matches 1 if entity @s[tag=forceload] run function entities:ai/worm/load/forceload_tick