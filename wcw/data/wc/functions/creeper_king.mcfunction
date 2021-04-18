fill ~-1 ~-2 ~-1 ~1 ~2 ~1 air replace
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~
summon slime ~ ~ ~ {Invulnerable:1b,Size:5,Tags:["creeper_king"],Passengers:[{id:"minecraft:creeper",NoAI:1b,ExplosionRadius:6b,Health:100f,Attributes:[{Name:generic.max_health,Base:100}],Tags:["rampage"]}],ActiveEffects:[{Id:25b,Amplifier:1b,Duration:2000}]}
effect give @p levitation 10 2
