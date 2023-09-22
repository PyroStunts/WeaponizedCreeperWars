function wc:remove_teleporters

summon tnt 100 120 0
summon tnt 80 120 58
summon tnt 30 120 95
summon tnt -31 120 95
summon tnt -81 120 58
summon tnt -100 120 0
summon tnt -81 120 -59
summon tnt -31 120 -96
summon tnt 30 120 -96
summon tnt 80 120 -59
tellraw @a [{"selector":"@p[sort=nearest,x=0,y=133,z=0]"},{"text":" destroyed the rapid teleportation system."}]