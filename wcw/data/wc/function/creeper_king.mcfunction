fill ~-1 ~-2 ~-1 ~1 ~2 ~1 air replace
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~
summon slime ~ ~ ~ {Invulnerable:1b,Size:5,Tags:["creeper_king"],Passengers:[{id:"minecraft:creeper",NoAI:1b,Health:100f,ExplosionRadius:6b,Tags:["rampage"],attributes:[{id:"minecraft:max_health",base:100}]}],active_effects:[{id:"minecraft:levitation",amplifier:1b,duration:2000}]}
effect give @p levitation 10 2
