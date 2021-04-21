scoreboard players add $fake StateCounter 1
execute if score $fake StateCounter matches 150 run function wc:rules
execute if score $fake StateCounter matches 300 run tellraw @p [{"text":"Check out the ","color":"white"},{"text":"WCW Discord Server","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Voice chat while you play and more"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/B6zG4Y26uD"}}]
execute if score $fake StateCounter matches 600 run tellraw @p [{"text":"We need one more player. Tell a friend to join. Or you can play in survival mode by typing: ","color":"white"},{"text":"/trigger SurvivalMode","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"This will put you in survival mode with some items to build with."}]},"clickEvent":{"action":"suggest_command","value":"/trigger SurvivalMode"}}]
execute if score $fake StateCounter matches 900 run tellraw @p [{"text":"Check out the ","color":"white"},{"text":"WCW Website","color":"green","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Get some tips and strategies."}]},"clickEvent":{"action":"open_url","value":"http://wcw.mcstacker.net/"}}]
execute if score $fake StateCounter matches 1200 run tellraw @p [{"text":"You can reset your score by typing: ","color":"white"},{"text":"/trigger ResetMyScore","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Reset your Score to zero"}]},"clickEvent":{"action":"suggest_command","value":"/trigger ResetMyScore"}}]
execute if score $fake StateCounter matches 1200.. run scoreboard players set $fake StateCounter 0
execute store result score $fake PlayerCount if entity @a
execute if score $fake PlayerCount matches 2.. run function wc:start_countdown

scoreboard players enable @p SurvivalMode
execute if entity @p[scores={SurvivalMode=1}] run function wc:single_player_survival




function wc:combat_mechanics


effect give @p[gamemode=survival,x=0,y=128,z=0,distance=123..] blindness 2
#gamemode spectator @p[gamemode=survival,x=0,y=128,z=0,distance=126..]
