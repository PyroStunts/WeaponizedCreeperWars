recipe give @a *
clear @a[gamemode=!creative]

function wc:remove_teleporters
kill @e[type=!player]

function wc:make_platforms
function wc:make_teleporters

#center ender chest and glass
function wc:make_ender_chest


scoreboard players set $fake SupplyDrop 400

#schedule function adv:make_teleporters 5s


#The item is summoned at each platform so that it can be
summon item 99 124 -1 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"white"}}}}
summon item 79 124 57 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"orange"}}}}
summon item 29 124 94 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"magenta"}}}}
summon item -32 124 94 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"light_blue"}}}}
summon item -82 124 57 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"yellow"}}}}
summon item -101 124 -1 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"lime"}}}}
summon item -82 124 -60 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"pink"}}}}
summon item -32 124 -97 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"cyan"}}}}
summon item 29 124 -97 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"brown"}}}}
summon item 79 124 -60 {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_data":{StartBase:"red"}}}}



gamemode spectator @a[gamemode=!creative]

#players are processed one after the other
execute as @a[gamemode=spectator] run function wc:setup_player

#have to schedule this function to give player enough time to pickup axe they were just teleported to
schedule function wc:give_starting_items 2s

#1.18 requires this to be done. "setworldspawn 0 255 0" in the setup function no longer works properly.
#This is what takes players out of the game if they die from anything other than going out of bounds. 
#For example explosions or fall damage
spawnpoint @a 0 255 0

#kill the items on other platforms that were not teleported to.
kill @e[type=item,tag=!hasTeleportedTo]
scoreboard players enable @a ResetMyScore
scoreboard players enable @a VoteCube
scoreboard players set @a VoteCube 0
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

#Remove The portal
function adv:remove_portal