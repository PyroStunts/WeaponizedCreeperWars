tellraw @a [{"text":"Look Up. ","color":"gold"},{"text":"Lethal","color":"red"},{"text":" Incoming Supply Drop","color":"green"}]
execute at @a[gamemode=survival] run playsound minecraft:entity.wither.spawn master @p
execute at @a[gamemode=survival] run summon creeper ~ 255 ~ {PersistenceRequired:1b,DeathLootTable:"wc:supply_drop",Tags:["supply_drop","rampage_active"],ActiveEffects:[{Id:28b,Amplifier:6b,Duration:600,ShowParticles:0b}],Health:20f,Attributes:[{Name:generic.follow_range,Base:0},{Name:generic.max_health,Base:20}]}
execute at @a[gamemode=survival] run summon creeper ~ 254 ~ {PersistenceRequired:1b,Invulnerable:1b,Tags:["pummel_creeper"],Attributes:[{Name:generic.follow_range,Base:1}]}
scoreboard players set $fake SupplyDrop 0