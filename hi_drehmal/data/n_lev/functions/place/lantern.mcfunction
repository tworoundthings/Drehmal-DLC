advancement revoke @s only n_lev:place/lantern
scoreboard players set #loop n_lev.temp 50
execute at @s anchored eyes positioned ^ ^ ^ run function n_lev:place/lantern_loop