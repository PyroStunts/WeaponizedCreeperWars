scoreboard players add $fake StateCounter 1
execute if score $fake StateCounter matches 150 run function wc:rules
execute if score $fake StateCounter matches 300 run tellraw @p [{"color":"white","text":"Check out the "},{"click_event":{"action":"open_url","url":"https://discord.gg/B6zG4Y26uD"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"Voice chat while you play and more"}],"value":[{"text":""}]},"text":"WCW Discord Server","underlined":true}]
execute if score $fake StateCounter matches 600 run tellraw @p [{"color":"white","text":"We need one more player. Tell a friend to join. Or you can play in survival mode by typing: "},{"click_event":{"action":"suggest_command","command":"/trigger SurvivalMode"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"This will put you in survival mode with some items to build with."}],"value":[{"text":""}]},"text":"/trigger SurvivalMode"}]
execute if score $fake StateCounter matches 900 run tellraw @p [{"color":"white","text":"Check out the "},{"click_event":{"action":"open_url","url":"http://wcw.mcstacker.net/"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Get some tips and strategies."}]},"text":"WCW Website","underlined":true}]
execute if score $fake StateCounter matches 1200 run tellraw @p [{"color":"white","text":"You can reset your score by typing: "},{"click_event":{"action":"suggest_command","command":"/trigger ResetMyScore"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"Reset your Score to zero"}],"value":[{"text":""}]},"text":"/trigger ResetMyScore"}]
execute if score $fake StateCounter matches 1200.. run scoreboard players set $fake StateCounter 0
execute store result score $fake PlayerCount if entity @a
execute if score $fake PlayerCount matches 2.. run function wc:start_countdown

scoreboard players enable @p SurvivalMode
execute if entity @p[scores={SurvivalMode=1}] run function wc:single_player_survival




execute unless entity @p[gamemode=adventure] run function wc:combat_mechanics


effect give @p[gamemode=survival,x=0,y=128,z=0,distance=123..] blindness 2
#gamemode spectator @p[gamemode=survival,x=0,y=128,z=0,distance=126..]
