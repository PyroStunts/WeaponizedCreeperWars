function wc:combat_mechanics

#supply drop 
execute at @e[tag=supply_drop,nbt={OnGround:0b}] run particle lava ~ ~ ~ 1 10 1 0 1 normal
scoreboard players add $fake SupplyDrop 1
execute if score $fake SupplyDrop matches 800 run function wc:deploy_supply_drop
execute store result bossbar minecraft:next_supply value run scoreboard players get $fake SupplyDrop

#check for winner
execute store result score $fake PlayerCount if entity @a[gamemode=survival]
execute if score $fake PlayerCount matches 1 run function wc:game_over
execute if score $fake PlayerCount matches 0 run scoreboard players set $fake GameState 1