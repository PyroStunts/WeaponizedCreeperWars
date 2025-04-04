function wc:combat_mechanics

#supply drop
execute at @e[type=creeper,tag=supply_drop,nbt={OnGround:0b}] run particle lava ~ ~ ~ 1 10 1 0 1 normal
#CUBE CHANGE drop is twice as frequent
scoreboard players add $fake SupplyDrop 2

#add one more to speed it up.
execute if score $fake ApocalypseCount matches 6000.. run scoreboard players add $fake SupplyDrop 1

#the match tick counter
scoreboard players add $fake StateCounter 1

#deploy supply drop, do boss bar
#CUBE CHANGE
execute if score $fake SupplyDrop matches 800.. if score $fake ApocalypseCount matches ..5999 run function wc:deploy_supply_drop_cube_arena
execute if score $fake SupplyDrop matches 800.. if score $fake ApocalypseCount matches 6000.. run function wc:deploy_lethal_supply_drop_cube_arena
execute store result bossbar minecraft:next_supply value run scoreboard players get $fake SupplyDrop


execute if score $fake StateCounter matches 18000 run gamerule doDaylightCycle true
execute if score $fake StateCounter matches 24000 run tellraw @a ["The match has been running for over 20 minutes. The ",{"click_event":{"action":"suggest_command","command":"/trigger Apocalypse"},"color":"green","text":"/trigger Apocalypse"}," command is now available."]


#trigger apocalyse if not already started and game has run for over 20 mins
execute if entity @p[scores={Apocalypse=1}] if score $fake ApocalypseCount matches 0 if score $fake StateCounter matches 24000.. run function wc:start_apocalypse
execute if entity @p[scores={Apocalypse=1}] if score $fake StateCounter matches ..23999 run tellraw @p[scores={Apocalypse=1}] {"text":"You can't start the Apocalypse yet","color":"gold"}
scoreboard players enable @p[scores={Apocalypse=1}] Apocalypse
scoreboard players set @p[scores={Apocalypse=1}] Apocalypse 0

#if ApocalypseCount is over 0, it's been triggered, it now counts up to 5 mins (6000 ticks)
execute if score $fake ApocalypseCount matches 1.. run scoreboard players add $fake ApocalypseCount 1

#check for winner
execute store result score $fake PlayerCount if entity @a[gamemode=adventure]
execute if score $fake PlayerCount matches 1 run function wc:game_over_cube_game
execute if score $fake PlayerCount matches 0 run scoreboard players set $fake GameState 1

