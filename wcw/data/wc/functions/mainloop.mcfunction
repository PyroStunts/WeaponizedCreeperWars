#OLD CODE DELETE

#Lob creeper
execute at @p[limit=1,x_rotation=45..] run function wc:high_arc_creeper

#throw creeper
execute at @p[limit=1,x_rotation=..45] run function wc:low_arc_creeper



data merge entity @e[limit=1,tag=flying_creeper,nbt={OnGround:1b}] {ExplosionRadius:5b,Fuse:2,ignited:1b}

#launch rocket
execute at @e[type=parrot] run summon firework_rocket ~ ~ ~ {LifeTime:80,Passengers:[{id:"minecraft:creeper",NoGravity:1b,ExplosionRadius:5b,Fuse:80,ignited:1b}],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Trail:1b,Colors:[I;720658,2738448],FadeColors:[I;2780716,1606932]}]}}}}
tp @e[type=parrot] ~ -10 ~
kill @e[type=parrot]

#Reveal players
execute as @e[type=wolf] run effect give @a minecraft:glowing 10 1
tp @e[type=wolf] ~ -10 ~
kill @e[type=wolf]

#arrow on creeper
data merge entity @e[limit=1,type=creeper,nbt={active_effects:[{id:"minecraft:strength",amplifier:0b}]}] {Fuse:0}

#arrow on ground
execute at @e[type=arrow,limit=1,nbt={inGround:1b}] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:10,ignited:1b}
kill @e[type=arrow,limit=1,nbt={inGround:1b}]

#supply drop particle
execute at @e[tag=supply_drop,nbt={OnGround:0b}] run particle lava ~ ~ ~ 1 10 1 0 1 normal
scoreboard players add $fake SupplyDrop 1
execute if score $fake SupplyDrop matches 800 run function wc:deploy_supply_drop
execute store result bossbar minecraft:next_supply value run scoreboard players get $fake SupplyDrop

#pummel creeper
kill @e[tag=pummel_creeper,x=-200,y=0,z=-200,dx=400,dy=4,dz=400]
scoreboard players add @e[tag=pummel_creeper,limit=1,nbt={OnGround:1b}] StateCounter 1
execute at @e[tag=pummel_creeper,scores={StateCounter=100..},nbt={OnGround:1b}] run summon tnt ~ ~-1 ~ 

#bomb creeper
scoreboard players add @e[tag=creeper_bomb] StateCounter 1
data merge entity @e[limit=1,tag=creeper_bomb,scores={StateCounter=100}] {Fuse:1,powered:1b}


#safety net
scoreboard players add @e[type=egg] SafetyNet 1
execute if entity @e[type=egg,scores={SafetyNet=5}] run function wc:deploy_net

#Warn Out of Bounds
scoreboard players add @p[gamemode=survival,x=0,y=128,z=0,distance=120..] StateCounter 1
title @p[gamemode=survival,scores={StateCounter=100..}] title {"text":"WARNING","color":"red"}
title @p[gamemode=survival,scores={StateCounter=100..}] subtitle {"text":"You will be eliminated if you travel more than 120 blocks from the center","color":"red"}
execute at @p[gamemode=survival,scores={StateCounter=100..}] run playsound minecraft:ambient.cave master @p[gamemode=survival,scores={StateCounter=100..}]
execute if entity @p[gamemode=survival,scores={StateCounter=100..}] run scoreboard players set @p[gamemode=survival,scores={StateCounter=100..}] StateCounter 0


#eliminate out of bounds
gamemode spectator @p[gamemode=survival,x=0,y=128,z=0,distance=125..]

#check for winner
execute store result score $fake PlayerCount if entity @a[gamemode=survival]
execute if score $fake PlayerCount matches 1 run function wc:game_over
execute if score $fake PlayerCount matches 0 run scoreboard players set $fake GameState 1
