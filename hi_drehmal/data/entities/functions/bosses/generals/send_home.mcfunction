effect give @s blindness 2 10 true
function players:gamemode/set_survival
tp @s -2845 40 5331
tag @s remove generals_music
tag @s remove finished
advancement revoke @s only core:generals_button_leave