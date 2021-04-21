#Function is called once for every spectator player, when the game starts
#Players are randomly teleported to a random axe on one of the plaforms
teleport @s @e[type=item,limit=1,sort=random,tag=!hasTeleportedTo]
execute at @s run tag @e[type=item,limit=1,sort=nearest,tag=!hasTeleportedTo] add hasTeleportedTo
gamemode survival @s
