execute if score $fake StateCounter matches 200 run title @a title {"text":"Game Starting in 10 seconds","color":"green"}
execute if score $fake StateCounter matches 180 run title @a title {"text":"Game Starting in 9 seconds","color":"green"}
execute if score $fake StateCounter matches 160 run title @a title {"text":"Game Starting in 8 seconds","color":"green"}
execute if score $fake StateCounter matches 140 run title @a title {"text":"Game Starting in 7 seconds","color":"green"}
execute if score $fake StateCounter matches 120 run title @a title {"text":"Game Starting in 6 seconds","color":"green"}
execute if score $fake StateCounter matches 100 run title @a title {"text":"Game Starting in 5 seconds","color":"green"}
execute if score $fake StateCounter matches 80 run title @a title {"text":"Game Starting in 4 seconds","color":"green"}
execute if score $fake StateCounter matches 60 run title @a title {"text":"Game Starting in 3 seconds","color":"green"}
execute if score $fake StateCounter matches 40 run title @a title {"text":"Game Starting in 2 seconds","color":"yellow"}
execute if score $fake StateCounter matches 20 run title @a title {"text":"Game Starting in 1 second","color":"red"}
execute if score $fake StateCounter matches 0 run function wc:setup_match
scoreboard players remove $fake StateCounter 1

