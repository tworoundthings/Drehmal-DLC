item replace entity @e[type=armor_stand,tag=num_syzygy_2] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Golden 6\"}"},SkullOwner:{Id:[I;1682156424,-1338160658,-1783028921,-1893265673],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTZmNWZiZmJjODk0NGE1MDc3NzExMzc5OGU5ZmUzYWVhYzJlMzk2NDg5NDdiNzBjYzEwM2RlYjZjOWU4NjYxIn19fQ=="}]}}} 1
execute in minecraft:lodahr run particle block gold_block -492 73.2 -215 0.2 0.2 0.2 0 10
execute in minecraft:lodahr run playsound minecraft:dcustom.entity.experience_orb.pickup ambient @a -492 73.2 -215 2 1
schedule function core:scene/numbers/4 30t