summon minecraft:armor_stand -555.46 32.00 4997.47 {Marker:0b,Rotation:[180f,0f],ShowArms:1b,Invisible:1b,DisabledSlots:62,DeathTime: 0s, OnGround: 1b, AbsorptionAmount: 0.0f, Attributes: [{Name: "stepheightentityattribute:stepheight", Base: 0.0d}, {Name: "minecraft:generic.movement_speed", Base: 0.699999988079071d}], Invulnerable: 0b, Brain: {memories: {}}, Pose: {}, Rotation: [-6.909424f, 14.849676f], HurtByTimestamp: 0, cardinal_components: {"enchancement:frozen": {ForcedHeadYaw: 0.0f, TicksFrozen: 0, ForcedBodyYaw: 0.0f, ForcedPose: "STANDING", ForcedClientAge: 0, ForcedLimbAngle: 0.0f, ForcedPitch: 0.0f, Frozen: 0b, ForcedLimbDistance: 0.0f}, "enchancement:projectile_timer": {ResetTicks: 0, TimesHit: 0}, "enchancement:air_mobility": {ResetBypassTicks: 0, TicksInAir: 0}, "enchancement:extended_water": {TicksWet: 0}}, ArmorItems: [{}, {}, {}, {}], Tags: ["asc_vis"], Invisible: 1b, Air: 300s, HandItems: [{}, {}], FallDistance: 0.0f, NoGravity: 1b,NoBasePlate: 0b, Health: 20.0f, HurtTime: 0s, FallFlying: 0b, Fire: -1s, PortalCooldown: 0, Small: 0b}

#execute as @e[tag=foundry_vis] at @s rotated 0 180 positioned ~ ~1 ~0.2 if score #5T timer matches 0 run function particle:term/animate


summon minecraft:armor_stand -555.46 32.00 4997.47 {Tags: ["asc_display"],Pose:{RightArm:[270f,0f,0f]},ShowArms:1b,Invisible:1b,DisabledSlots:63,Rotation:[0f,0f],NoGravity:1b,Marker:1b}

