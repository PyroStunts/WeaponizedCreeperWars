#only 1 player has the tag 'initing' at a time 
tag @p[gamemode=spectator,limit=1] add initing
#Players are randomly teleported to an item on a random plaform
teleport @p[tag=initing,limit=1] @e[type=item,limit=1,sort=random,tag=!hasTeleportedTo]
execute at @p[tag=initing,limit=1] run tag @e[type=item,limit=1,sort=nearest,tag=!hasTeleportedTo] add hasTeleportedTo
gamemode survival @p[tag=initing]
tag @p[tag=initing] remove initing

#recursive. This functions calls itself until no players are in spectator mode
execute if entity @p[gamemode=spectator] run function wc:setup_player