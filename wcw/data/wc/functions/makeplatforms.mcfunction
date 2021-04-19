recipe give @a *
clear @a[gamemode=!creative]
#Remove everything on starting platforms up to y150
fill 99 128 -1 101 150 1 minecraft:air replace
fill 79 128 57 81 150 59 minecraft:air replace
fill 29 128 94 31 150 96 minecraft:air replace
fill -32 128 94 -30 150 96 minecraft:air replace
fill -82 128 57 -80 150 59 minecraft:air replace
fill -101 128 -1 -99 150 1 minecraft:air replace
fill -82 128 -60 -80 150 -58 minecraft:air replace
fill -32 128 -97 -30 150 -95 minecraft:air replace
fill 29 128 -97 31 150 -95 minecraft:air replace
fill 79 128 -60 81 150 -58 minecraft:air replace

#Rebuild colored platforms
fill 99 119 -1 101 127 1 minecraft:white_concrete replace
fill 79 119 57 81 127 59 minecraft:orange_concrete replace
fill 29 119 94 31 127 96 minecraft:magenta_concrete replace
fill -32 119 94 -30 127 96 minecraft:light_blue_concrete replace
fill -82 119 57 -80 127 59 minecraft:yellow_concrete replace
fill -101 119 -1 -99 127 1 minecraft:lime_concrete replace
fill -82 119 -60 -80 127 -58 minecraft:pink_concrete replace
fill -32 119 -97 -30 127 -95 minecraft:cyan_concrete replace
fill 29 119 -97 31 127 -95 minecraft:brown_concrete replace
fill 79 119 -60 81 127 -58 minecraft:red_concrete replace

#Remove middle part of each platform
fill 99 122 -1 101 126 1 minecraft:air replace
fill 79 122 57 81 126 59 minecraft:air replace
fill 29 122 94 31 126 96 minecraft:air replace
fill -32 122 94 -30 126 96 minecraft:air replace
fill -82 122 57 -80 126 59 minecraft:air replace
fill -101 122 -1 -99 126 1 minecraft:air replace
fill -82 122 -60 -80 126 -58 minecraft:air replace
fill -32 122 -97 -30 126 -95 minecraft:air replace
fill 29 122 -97 31 126 -95 minecraft:air replace
fill 79 122 -60 81 126 -58 minecraft:air replace

scoreboard players set $fake SupplyDrop 400
kill @e[type=item]

#The item is summoned at each platform so that it can be
summon item 99 124 -1 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"white"}}}
summon item 79 124 57 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"orange"}}}
summon item 29 124 94 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"magenta"}}}
summon item -32 124 94 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"light_blue"}}}
summon item -82 124 57 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"yellow"}}}
summon item -101 124 -1 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"lime"}}}
summon item -82 124 -60 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"pink"}}}
summon item -32 124 -97 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"cyan"}}}
summon item 29 124 -97 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"brown"}}}
summon item 79 124 -60 {Item:{id:"minecraft:diamond_axe",Count:1b,tag:{Unbreakable:1b,StartBase:"red"}}}
gamemode spectator @a[gamemode=!creative]

#players are processed one after the other
execute as @a[gamemode=spectator] run function wc:setup_player

#have to schedule this function to give player enough time to pickup axe they were just teleported to
schedule function wc:give_starting_items 2s

#kill the items on other platforms that were not teleported to.
kill @e[type=item,tag=!hasTeleportedTo]
scoreboard players enable @a ResetMyScore
effect give @a minecraft:saturation 240000 1 true
bossbar set minecraft:next_supply players @a
bossbar set minecraft:next_supply visible true
execute at @a run playsound minecraft:block.beacon.power_select master @p
#So PVP is off
team join SameTeam @a

#reset Apocalyse mechanic
scoreboard players enable @a Apocalypse
scoreboard players set @a Apocalypse 0
scoreboard players set $fake ApocalypseCount 0


time set noon
gamerule doDaylightCycle false

#Main game mode starts
scoreboard players set $fake GameState 4
