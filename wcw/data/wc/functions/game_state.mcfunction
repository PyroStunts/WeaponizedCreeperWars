#this function is called from data\minecraft\tags\functions\tick.json

#1 waiting for 2 players
#2 10 second gamestart count down
#3 init game 
#4 in game
#5 1 player left - Game Over (5 seconds) back #1
execute if score $fake GameState matches 1 run function wc:wait_for_two_players
execute if score $fake GameState matches 2 run function wc:countdown 
execute if score $fake GameState matches 4 run function wc:main_game
execute if score $fake GameState matches 5 run function wc:winner_screen


#teleport anyone who goes too far away back to the center.
tp @p[gamemode=!creative,x=0,y=128,z=0,distance=200..] 0 128 0

#players can reset their Wins back to 0 with /trigger ResetMyScore
execute if entity @p[scores={ResetMyScore=1}] run scoreboard players set @p[scores={ResetMyScore=1}] Wins 0
execute if entity @p[scores={ResetMyScore=1}] run scoreboard players enable @p[scores={ResetMyScore=1}] ResetMyScore
execute if entity @p[scores={ResetMyScore=1}] run scoreboard players set @p[scores={ResetMyScore=1}] ResetMyScore 0

