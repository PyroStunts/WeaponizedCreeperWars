#A mode for one person who wants to play in survival until other players join the server
scoreboard players set @p[scores={SurvivalMode=1}] SurvivalMode 0
gamemode survival @p
gamerule doDaylightCycle true
effect give @a minecraft:saturation 864000 1 true
replaceitem entity @a hotbar.0 minecraft:diamond_axe{Unbreakable:1b,StartBase:"white"} 1
function wc:give_starting_items
tellraw @p {"text":"You are now in survival mode. If someone joins the game, your inventory will be cleared and the game will commence.","color":"green"}
