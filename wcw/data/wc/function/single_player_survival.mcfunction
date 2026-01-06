#A mode for one person who wants to play in survival until other players join the server
scoreboard players set @p[scores={SurvivalMode=1}] SurvivalMode 0
function wc:make_platforms
function wc:make_teleporters
gamemode survival @p
gamerule advance_time true
effect give @a minecraft:saturation 864000 1 true
item replace entity @a hotbar.0 with diamond_axe[unbreakable={},custom_data={StartBase:"white"}] 1
function wc:give_starting_items
function wc:make_ender_chest
tellraw @p {"text":"You are now in survival mode. If someone joins the game, your inventory will be cleared and the game will commence.","color":"green"}
function adv:build_teleport_stage1