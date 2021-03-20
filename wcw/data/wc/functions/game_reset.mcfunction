#This function is called after the winner_screen is finished showing
clear @a[gamemode=!creative]
function wc:make_rings
gamemode spectator @a
scoreboard players set $fake GameState 1 
