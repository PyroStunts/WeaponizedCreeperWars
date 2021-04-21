#this function is called from data\minecraft\tags\functions\tick.json

#1 waiting for 2 players
#2 10 second gamestart count down
#3 init game 
#4 in game
#5 1 player left - Game Over (5 seconds) then back to Game State #1
execute if score $fake GameState matches 1 run function wc:wait_for_two_players
execute if score $fake GameState matches 2 run function wc:countdown 
execute if score $fake GameState matches 4 run function wc:main_game
execute if score $fake GameState matches 5 run function wc:winner_screen


#teleport anyone who goes too far away back to the center.
tp @p[gamemode=!creative,x=0,y=128,z=0,distance=200..] 0 128 0

#Eliminate out of bounds
title @a[gamemode=survival,x=0,y=128,z=0,distance=126..] title {"text":"OUT OF BOUNDS","color":"red"}
title @a[gamemode=survival,x=0,y=128,z=0,distance=126..] subtitle {"text":"You have been eliminated","color":"green"}
gamemode spectator @a[gamemode=survival,x=0,y=128,z=0,distance=126..]


#players can reset their Wins back to 0 with /trigger ResetMyScore
scoreboard players set @p[scores={ResetMyScore=1}] Wins 0
scoreboard players enable @p[scores={ResetMyScore=1}] ResetMyScore
scoreboard players set @p[scores={ResetMyScore=1}] ResetMyScore 0

scoreboard players enable @a ShowRules
execute if entity @p[scores={ShowRules=1}] run function wc:rules
scoreboard players set @p[scores={ShowRules=1}] ShowRules 0

scoreboard players enable @a RulesAgree
tag @p[scores={RulesAgree=1}] add RulesAgree
tellraw @p[scores={RulesAgree=1}] {"text":"Thanks. Welcome to Weaponized Creeper Wars","color":"green"}
scoreboard players set @p[scores={RulesAgree=1}] RulesAgree 0


