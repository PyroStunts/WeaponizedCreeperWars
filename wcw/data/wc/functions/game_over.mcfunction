#get total players
execute store result score $fake PlayerCount if entity @a

execute unless score $fake PlayerCount matches 1 run title @a title [{"selector":"@p[gamemode=survival]","color":"gold"},{"text":" Won"}]
execute unless score $fake PlayerCount matches 1 run tellraw @p[gamemode=survival] [{"text":"You won! ","color":"gold"},{"text":"Stash your loot in a chest for the next game. You have 10 seconds.","color":"green"}]

#dont award one point if there is only one player on server. 
execute unless score $fake PlayerCount matches 1 run scoreboard players add @p[gamemode=survival] Wins 1
execute if score $fake PlayerCount matches 1 run title @a title [{"text":"Everyone has left","color":"gold"}]

kill @e[type=!player]
bossbar set minecraft:next_supply visible false
scoreboard players set $fake GameState 5
scoreboard players set $fake StateCounter 0