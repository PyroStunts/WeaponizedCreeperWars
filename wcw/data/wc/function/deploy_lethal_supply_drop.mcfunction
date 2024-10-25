tellraw @a [{"text":"Look Up. ","color":"gold"},{"text":"Lethal","color":"red"},{"text":" Incoming Supply Drop","color":"green"}]
execute at @a[gamemode=survival] run playsound minecraft:entity.wither.spawn master @p
execute at @a[gamemode=survival] run summon creeper ~ 255 ~ {PersistenceRequired:1b,DeathLootTable:"wc:supply_drop",Tags:["supply_drop","rampage_active"],Health:20f,active_effects:[{id:"minecraft:slow_falling",amplifier:6b,duration:600,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:follow_range",base:0}]}
execute at @a[gamemode=survival] run summon creeper ~ 254 ~ {PersistenceRequired:1b,Invulnerable:1b,Tags:["pummel_creeper"],attributes:[{id:"minecraft:follow_range",base:1}]}
scoreboard players set $fake SupplyDrop 0