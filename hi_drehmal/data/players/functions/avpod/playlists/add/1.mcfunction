function players:avpod/playlists/player

data modify storage drehmal:players avpodPlaylists[0].editing.songs prepend value 1
scoreboard players set #avpod.newsong temp 1
function players:avpod/playlists/add