function wc:combat_mechanics

#supply drop
execute at @e[type=creeper,tag=supply_drop,nbt={OnGround:0b}] run particle lava ~ ~ ~ 1 10 1 0 1 normal
scoreboard players add $fake SupplyDrop 1

#tripples frequency of supply drop in Apocalypse node
execute if score $fake ApocalypseCount matches 6000.. run scoreboard players add $fake SupplyDrop 2

#the match tick counter
scoreboard players add $fake StateCounter 1

#deploy supply drop, do boss bar
execute if score $fake SupplyDrop matches 800.. if score $fake ApocalypseCount matches ..5999 run function wc:deploy_supply_drop
execute if score $fake SupplyDrop matches 800.. if score $fake ApocalypseCount matches 6000.. run function wc:deploy_lethal_supply_drop
execute store result bossbar minecraft:next_supply value run scoreboard players get $fake SupplyDrop


execute if score $fake StateCounter matches 18000 run gamerule advance_time true
execute if score $fake StateCounter matches 24000 run tellraw @a ["The match has been running for over 20 minutes. The ",{"click_event":{"action":"suggest_command","command":"/trigger Apocalypse"},"color":"green","text":"/trigger Apocalypse"}," command is now available."]


#trigger apocalyse if not already started and game has run for over 20 mins
execute if entity @p[scores={Apocalypse=1}] if score $fake ApocalypseCount matches 0 if score $fake StateCounter matches 24000.. run function wc:start_apocalypse
execute if entity @p[scores={Apocalypse=1}] if score $fake StateCounter matches ..23999 run tellraw @p[scores={Apocalypse=1}] {"text":"You can't start the Apocalypse yet","color":"gold"}
scoreboard players enable @p[scores={Apocalypse=1}] Apocalypse
scoreboard players set @p[scores={Apocalypse=1}] Apocalypse 0

#if ApocalypseCount is over 0, it's been triggered, it now counts up to 5 mins (6000 ticks)
execute if score $fake ApocalypseCount matches 1.. run scoreboard players add $fake ApocalypseCount 1



#players count who are still in match
execute store result score $fake PlayerCount if entity @a[gamemode=survival]

#counts players who want to play Cube Arena
execute store result score $fake CubeVoteCount if entity @a[scores={VoteCube=1..},gamemode=survival]
execute if entity @p[scores={VoteCube=1}] run tellraw @p[gamemode=survival,scores={VoteCube=0}] [{"color":"green","selector":"@p[scores={VoteCube=1}]"},{"color":"white","text":" wants to play Cube Arena . Click "},{"click_event":{"action":"run_command","command":"/trigger VoteCube"},"color":"red","text":"here "},{"color":"white","text":"to play. All surviving players must click this for it to begin."}]
scoreboard players set @p[scores={VoteCube=1}] VoteCube 2

#Start the Cube Arena because surviving PlayerCount is <= Players who voted to Play Cube Arena
execute if score $fake PlayerCount <= $fake CubeVoteCount run function wc:start_cube_arena


#check for winner
execute if score $fake PlayerCount matches 1 run function wc:game_over
execute if score $fake PlayerCount matches 0 run scoreboard players set $fake GameState 1

execute if score $fake StateCounter matches 100 run tellraw @a [{"color":"white","text":"Click to "},{"click_event":{"action":"run_command","command":"/trigger VoteCube"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"All remaining player need to agree."}]},"text":"Play the Zero Build Cube Arena","underlined":true}]