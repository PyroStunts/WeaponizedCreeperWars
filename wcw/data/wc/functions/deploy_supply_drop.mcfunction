tellraw @a [{"text":"Look Up. ","color":"gold"},{"text":"Incoming Supply Drop","color":"green"}]
execute at @a[gamemode=survival] run playsound minecraft:entity.iron_golem.death master @p
execute at @a[gamemode=survival] run summon creeper ~ ~30 ~ {Health:1f,DeathLootTable:"wc:supply_drop",Tags:["supply_drop"],ActiveEffects:[{Id:28b,Amplifier:5b,Duration:400,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:0},{Name:generic.max_health,Base:1}]}
scoreboard players set $fake SupplyDrop 0