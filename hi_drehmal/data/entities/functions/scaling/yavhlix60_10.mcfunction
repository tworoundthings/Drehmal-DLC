execute if score playercount playercount matches 1 run data merge entity @s {Attributes:[{Base:60.0d, Name: "generic.max_health"},{Base:10.0d, Name: "generic.attack_damage"}],Health:60.0f}
execute if score playercount playercount matches 2..3 run data merge entity @s {Attributes:[{Base:68.0d, Name: "generic.max_health"},{Base:10.0d, Name: "generic.attack_damage"}],Health:68.0f}
execute if score playercount playercount matches 4..5 run data merge entity @s {Attributes:[{Base:74.0d, Name: "generic.max_health"},{Base:11.0d, Name: "generic.attack_damage"}],Health:74.0f}
execute if score playercount playercount matches 6..7 run data merge entity @s {Attributes:[{Base:79.0d, Name: "generic.max_health"},{Base:12.0d, Name: "generic.attack_damage"}],Health:79.0f}
execute if score playercount playercount matches 8.. run data merge entity @s {Attributes:[{Base:83.0d, Name: "generic.max_health"},{Base:13.0d, Name: "generic.attack_damage"}],Health:83.0f}