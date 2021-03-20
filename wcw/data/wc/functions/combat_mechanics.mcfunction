
#Lob high arc creeper grenade if looking towards your feet
execute at @p[limit=1,x_rotation=45..] run function wc:high_arc_creeper
#Lob low arc creeper grenade if looking more upwards
execute at @p[limit=1,x_rotation=..45] run function wc:low_arc_creeper
#explode the creeper grenades when it lands
data merge entity @e[limit=1,tag=flying_creeper,nbt={OnGround:1b}] {ExplosionRadius:5b,Fuse:2,ignited:1b}


#night vision arrow on ground, summon rocket creeper
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:night_vision"}] run summon firework_rocket ~ ~ ~ {LifeTime:80,Passengers:[{id:"minecraft:creeper",NoGravity:1b,Invulnerable:1b,ExplosionRadius:5b,Fuse:80,ignited:1b,Tags:["rocket_creeper"],ActiveEffects:[{Id:25b,Amplifier:4b,Duration:80}]}],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Trail:1b,Colors:[I;720658,2738448],FadeColors:[I;2780716,1606932]}]}}}}
#launch rocket
execute at @e[type=parrot] run summon firework_rocket ~ ~ ~ {LifeTime:80,Passengers:[{id:"minecraft:creeper",NoGravity:1b,Invulnerable:1b,ExplosionRadius:5b,Fuse:80,ignited:1b,Tags:["rocket_creeper"],ActiveEffects:[{Id:25b,Amplifier:4b,Duration:80}]}],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Trail:1b,Colors:[I;720658,2738448],FadeColors:[I;2780716,1606932]}]}}}}
execute as @e[tag=rocket_creeper] at @e[tag=rocket_creeper] unless block ~ ~2 ~ air run summon tnt ~ ~2 ~
tp @e[type=parrot] ~ -10 ~
kill @e[type=parrot]


#trident in ground spawns a jail if player is close
execute at @e[type=trident,limit=1,nbt={inGround:1b}] at @p[gamemode=survival,sort=nearest,distance=..5] run function wc:creeper_jail


#Reveal players
execute as @e[type=wolf] run effect give @a minecraft:glowing 10 1
execute as @e[type=wolf] at @a[gamemode=survival] run summon firework_rocket ~ ~ ~ {LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:1b,Trail:1b,Colors:[I;1769216,7339804,2721537],FadeColors:[I;90388,1604134,5350170]}]}}}}
execute at @e[type=wolf] run teleport @p ~ ~ ~ facing entity @p[gamemode=survival,distance=5..]
tp @e[type=wolf] ~ -10 ~
kill @e[type=wolf]


#strength arrow on any creeper blows it up if hte arrow doesn't kill it first. Good for explding bomb creepers
data merge entity @e[limit=1,type=creeper,nbt={ActiveEffects:[{Id:5b,Amplifier:0b}]}] {Fuse:0}

#strength arrow on ground, summon creeper
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:strength"}] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:10,ignited:1b}


#air strike bats
#leaping arrow on ground, summon 3 bats
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:leaping"}] run summon bat ~ ~20 ~ {Invulnerable:1b,Tags:["bomber_bat"]}
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:leaping"}] run summon bat ~ ~21 ~ {Invulnerable:1b,Tags:["bomber_bat"]}
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:leaping"}] run summon bat ~ ~22 ~ {Invulnerable:1b,Tags:["bomber_bat"]}


scoreboard players add @e[tag=bomber_bat] StateCounter 1
scoreboard players add @e[tag=bomber_bat] BatAge 1
execute at @e[tag=bomber_bat,scores={StateCounter=20..}] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["airstrike_creeper"]}
data merge entity @e[limit=1,tag=airstrike_creeper,nbt={OnGround:1b}] {ExplosionRadius:2b,Fuse:2,ignited:1b}
execute at @e[tag=bomber_bat,scores={StateCounter=20..}] run scoreboard players set @e[tag=bomber_bat,scores={StateCounter=20..}] StateCounter 0
kill @e[tag=bomber_bat,scores={BatAge=100..}]


#tree bats, summoned via tree_bats.mcfunction via discord
scoreboard players add @e[tag=tree_bat] BatAge 1
execute at @e[tag=tree_bat] run setblock ~ ~-3 ~ minecraft:jungle_log[axis=y] keep
execute at @e[tag=tree_bat] run setblock ~ ~-2 ~ minecraft:jungle_leaves keep
tp @e[tag=tree_bat,x=0,y=128,z=0,distance=123..] 0 128 0
kill @e[tag=tree_bat,scores={BatAge=500..}]


#fire_resistance arrow on ground, summon pummeler
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:fire_resistance"}] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["pummel_creeper","pummel_from_arrow"],Attributes:[{Name:generic.follow_range,Base:1}]}
#pummels 1 second after arrow lands
scoreboard players set @e[tag=pummel_from_arrow] StateCounter 100
#pummel creeper
#kill the pummeler so it doesn't last forever on the spawn platform. All others will die in the void
kill @e[tag=pummel_creeper,x=-200,y=0,z=-200,dx=400,dy=4,dz=400]
scoreboard players add @e[tag=pummel_creeper,nbt={OnGround:1b}] StateCounter 1
execute at @e[tag=pummel_creeper,scores={StateCounter=100..},nbt={OnGround:1b}] run summon tnt ~ ~-1 ~ 


#swiftness arrow on ground, summon chaser creeper
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:swiftness"}] run summon creeper ~ ~ ~ {ExplosionRadius:6b,Invulnerable:1b,Tags:["chaser"],Attributes:[{Name:generic.movement_speed,Base:0.50},{Name:generic.follow_range,Base:40}]}
#chaser creeper
scoreboard players add @e[tag=chaser,nbt={NoAI:1b}] StateCounter 1
data merge entity @e[limit=1,tag=chaser,nbt={NoAI:1b},scores={StateCounter=100..}] {NoAI:0b,ExplosionRadius:6b}

#regeneration arrow on ground, summon bomb creeper
execute at @e[type=arrow,limit=1,nbt={inGround:1b,Potion:"minecraft:regeneration"}] run summon creeper ~ ~ ~ {Fuse:20,powered:1b,Tags:["creeper_bomb"],Attributes:[{Name:generic.follow_range,Base:1}]}
#bomb creeper
scoreboard players add @e[tag=creeper_bomb] StateCounter 1
data merge entity @e[limit=1,tag=creeper_bomb,scores={StateCounter=100}] {Fuse:1,powered:1b}


#kill any type of arrow in the ground
kill @e[type=arrow,limit=1,nbt={inGround:1b}]


#safety net
scoreboard players add @e[type=egg] StateCounter 1
execute if entity @e[type=egg,scores={StateCounter=5},x=0,y=128,z=0,distance=..124] run function wc:deploy_net

#glass sheild
scoreboard players add @e[type=snowball] StateCounter 1
execute at @e[type=snowball,scores={StateCounter=1}] at @p[limit=1,x_rotation=80..90] run tag @e[type=snowball,limit=1,scores={StateCounter=1}] add FloorRoof 
execute at @e[type=snowball,scores={StateCounter=1}] at @p[limit=1,x_rotation=-90..-80] run tag @e[type=snowball,limit=1,scores={StateCounter=1}] add FloorRoof 
execute at @e[type=snowball,scores={StateCounter=1}] at @p[limit=1,y_rotation=135..225] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof] add NorthSouth
execute at @e[type=snowball,scores={StateCounter=1}] at @p[limit=1,y_rotation=-45..45] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof] add NorthSouth  
execute at @e[type=snowball,scores={StateCounter=1}] at @p[limit=1,y_rotation=-135..-45] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof,tag=!NorthSouth] add EastWest 
execute at @e[type=snowball,scores={StateCounter=1}] at @p[limit=1,y_rotation=45..135] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof,tag=!NorthSouth] add EastWest 
execute if entity @e[type=snowball,scores={StateCounter=10},x=0,y=128,z=0,distance=..124] run function wc:deploy_glass_shield


#Warn Out of Bounds
scoreboard players add @p[gamemode=survival,x=0,y=128,z=0,distance=123..] StateCounter 1
effect give @p[gamemode=survival,x=0,y=128,z=0,distance=123..] blindness 2
title @p[gamemode=survival,scores={StateCounter=100..}] title {"text":"WARNING","color":"red"}
title @p[gamemode=survival,scores={StateCounter=100..}] subtitle {"text":"You will be eliminated if you travel more than 123 blocks from the center","color":"red"}
execute at @p[gamemode=survival,scores={StateCounter=100..}] run playsound minecraft:ambient.cave master @p[gamemode=survival,scores={StateCounter=100..}]
execute if entity @p[gamemode=survival,scores={StateCounter=100..}] run scoreboard players set @p[gamemode=survival,scores={StateCounter=100..}] StateCounter 0


#Eliminate out of bounds
title @p[gamemode=survival,x=0,y=128,z=0,distance=126..] title {"text":"OUT OF BOUNDS","color":"red"}
title @p[gamemode=survival,x=0,y=128,z=0,distance=126..] subtitle {"text":"You have been eliminated","color":"green"}
gamemode spectator @p[gamemode=survival,x=0,y=128,z=0,distance=126..]


