summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["em_spike1","special"],Pose:{Head:[1f,0f,0f]},DisabledSlots:4144959,Marker:1b,Invisible:1b,Fire:-10258239}
execute as @e[type=armor_stand,tag=special] run function entities:ai/emissary/slam/spike_stats