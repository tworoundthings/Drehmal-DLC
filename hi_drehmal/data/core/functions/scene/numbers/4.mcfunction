item replace entity @e[type=armor_stand,tag=num_syzygy_3] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Golden 3\"}"},SkullOwner:{Id:[I;-516733167,537545493,-2064782336,1174956291],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjgyM2Y3NzU1OGNhNjA2MGI2ZGM2YTRkNGIxZDg2YzFhNWJlZTcwODE2NzdiYmMzMzZjY2I5MmZiZDNlZSJ9fX0="}]}}} 1
execute in minecraft:lodahr run particle block gold_block -478 73.2 -229 0.2 0.2 0.2 0 10
execute in minecraft:lodahr run playsound minecraft:dcustom.entity.experience_orb.pickup ambient @a -478 73.2 -229 2 1.5
schedule function core:scene/numbers/5 30t