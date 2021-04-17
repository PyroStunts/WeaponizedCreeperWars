title @a subtitle {"text":"5 Minutes To Destruction. Brace Yourself","color":"red"}
title @a title {"text":"Apocalypse Initiated","color":"dark_red"}
execute at @a run playsound minecraft:entity.lightning_bolt.thunder master @p
scoreboard players set $fake ApocalypseCount 1
effect clear @a[gamemode=survival] saturation
effect give @a[gamemode=survival] saturation 6000 1 true