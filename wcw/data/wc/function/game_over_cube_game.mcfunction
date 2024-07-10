#get total players
execute store result score $fake PlayerCount if entity @a

execute unless score $fake PlayerCount matches 1 run title @a title [{"selector":"@p[gamemode=adventure]","color":"gold"},{"text":" Won"}]
execute unless score $fake PlayerCount matches 1 run tellraw @p[gamemode=adventure] [{"text":"You won! ","color":"gold"},{"text":"Well done!","color":"green"}]

#dont award one point if there is only one player on server. 
execute unless score $fake PlayerCount matches 1 run scoreboard players add @p[gamemode=adventure] Wins 1
execute if score $fake PlayerCount matches 1 run title @a title [{"text":"Everyone has left","color":"gold"}]

kill @e[type=!player,type=!end_crystal]
bossbar set minecraft:next_supply visible false
scoreboard players set $fake GameState 6
scoreboard players set $fake StateCounter 0