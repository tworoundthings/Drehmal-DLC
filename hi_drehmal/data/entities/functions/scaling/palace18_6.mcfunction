execute if score playercount playercount matches 1 run data merge entity @s {Attributes:[{Base:26.0d, Name: "generic.max_health"},{Base:6.0d, Name: "generic.attack_damage"}],Health:26.0f}
execute if score playercount playercount matches 2..3 run data merge entity @s {Attributes:[{Base:32.0d, Name: "generic.max_health"},{Base:6.0d, Name: "generic.attack_damage"}],Health:32.0f}
execute if score playercount playercount matches 4..5 run data merge entity @s {Attributes:[{Base:35.0d, Name: "generic.max_health"},{Base:6.0d, Name: "generic.attack_damage"}],Health:35.0f}
execute if score playercount playercount matches 6..7 run data merge entity @s {Attributes:[{Base:38.0d, Name: "generic.max_health"},{Base:7.0d, Name: "generic.attack_damage"}],Health:38.0f}
execute if score playercount playercount matches 8.. run data merge entity @s {Attributes:[{Base:41.0d, Name: "generic.max_health"},{Base:8.0d, Name: "generic.attack_damage"}],Health:41.0f}