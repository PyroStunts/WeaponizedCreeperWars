tellraw @a [{"text":"Look Up. ","color":"gold"},{"text":"Incoming Supply Drop","color":"green"}]
execute at @a[gamemode=survival] run playsound minecraft:entity.iron_golem.death master @p
execute at @a[gamemode=survival] run summon creeper ~ ~30 ~ {Health:1f,DeathLootTable:"wc:supply_drop",Tags:["supply_drop"],active_effects:[{id:"minecraft:slow_falling",amplifier:5b,duration:400,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1},{id:"minecraft:follow_range",base:0}]}
scoreboard players set $fake SupplyDrop 0