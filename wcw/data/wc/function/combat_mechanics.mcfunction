#anvils and ender chests normally cant be blown up so we have to remove them (especially for pummelers)
execute at @e[type=creeper] if block ~ ~-1 ~ minecraft:anvil run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:air
execute at @e[type=creeper] if block ~ ~-1 ~ minecraft:ender_chest run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:air

#creeper king
execute at @a if block ~ ~ ~ minecraft:creeper_head if block ~ ~-1 ~ minecraft:slime_block run function wc:creeper_king
scoreboard players add @e[type=slime,tag=creeper_king] StateCounter 1
#tp @e[type=slime,tag=creeper_king,scores={StateCounter=500..}] ~ -20 ~
kill @e[type=slime,tag=creeper_king,scores={StateCounter=500..}] 
execute at @e[type=slime,tag=creeper_king] run particle flame ~ ~-2 ~ 2 2 2 1 5 force


#rampage creeper 5 seconds get away time
scoreboard players add @e[type=creeper,tag=rampage] StateCounter 1
execute as @e[type=creeper,tag=rampage,nbt={NoAI:1b},scores={StateCounter=100..}] run data merge entity @s {NoAI:0b,Tags:["rampage_active"]}
#if this creeper exists spawn loads of creepers
execute if entity @e[type=creeper,tag=rampage_active] run function wc:rampage_active





#Lob high arc creeper grenade if looking towards your feet
execute as @a[x_rotation=45..] at @s if entity @e[type=creeper,tag=lob_creeper,distance=..6] run function wc:high_arc_creeper
#Lob low arc creeper grenade if looking more upwards
execute as @a[x_rotation=..45] at @s if entity @e[type=creeper,tag=lob_creeper,distance=..6] run function wc:low_arc_creeper
#explode the creeper grenades when it lands
execute as @e[type=creeper,tag=flying_creeper,nbt={OnGround:1b}] run data merge entity @s {ExplosionRadius:5b,Fuse:2,ignited:1b}


#Amplifier:1b arrow on ground, summon rocket creeper
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:1b}]}}}}] run summon firework_rocket ~ ~ ~ {LifeTime:80,Passengers:[{id:"minecraft:creeper",NoGravity:1b,Invulnerable:1b,ExplosionRadius:5b,Fuse:80,ignited:1b,Tags:["rocket_creeper"],active_effects:[{id:"minecraft:levitation",amplifier:4b,duration:80}]}],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_trail:true,colors:[I;720658,2738448],fade_colors:[I;2780716,1606932]}]}}}}

#launch rocket
execute at @e[type=parrot] run summon firework_rocket ~ ~ ~ {LifeTime:80,Passengers:[{id:"minecraft:creeper",NoGravity:1b,Invulnerable:1b,ExplosionRadius:5b,Fuse:80,ignited:1b,Tags:["rocket_creeper"],active_effects:[{id:"minecraft:levitation",amplifier:4b,duration:80}]}],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_trail:true,colors:[I;720658,2738448],fade_colors:[I;2780716,1606932]}]}}}}

execute as @e[type=creeper,tag=rocket_creeper] at @s unless block ~ ~2 ~ air run summon tnt ~ ~2 ~
tp @e[type=parrot] ~ -10 ~
kill @e[type=parrot]


#trident in ground spawns a jail if player is close
execute as @e[type=trident,nbt={inGround:1b}] at @s at @p[gamemode=survival,sort=nearest,distance=..5] run function wc:creeper_jail


#Reveal players
execute if entity @e[type=wolf] run effect give @a minecraft:glowing 10 1
execute if entity @e[type=wolf] at @a[gamemode=survival] run summon firework_rocket ~ ~ ~ {LifeTime:60,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_twinkle:true,has_trail:true,colors:[I;1769216,7339804,2721537],fade_colors:[I;90388,1604134,5350170]}]}}}}
#execute at @e[type=wolf] run teleport @p ~ ~ ~ facing entity @p[gamemode=survival,distance=5..]
execute at @e[type=wolf] run rotate @p facing entity @p[gamemode=!spectator,distance=5..] eyes
tp @e[type=wolf] ~ -10 ~
kill @e[type=wolf]


#Amplifier:101b on any creeper blows it up if hte arrow doesn't kill it first. Good for explding bomb creepers
execute as @e[type=creeper,nbt={active_effects:[{amplifier:101b}]}] run data merge entity @s {Fuse:0}

#Amplifier:101b arrow on ground, summon creeper
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:101b}]}}}}] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:10,ignited:1b}


#air strike bats
#Amplifier:102b arrow on ground, summon 3 bats
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:102b}]}}}}] run summon bat ~ ~22 ~ {Invulnerable:1b,Tags:["bomber_bat"]}
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:102b}]}}}}] run summon bat ~ ~22 ~ {Invulnerable:1b,Tags:["bomber_bat"]}
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:102b}]}}}}] run summon bat ~ ~22 ~ {Invulnerable:1b,Tags:["bomber_bat"]}


scoreboard players add @e[type=bat,tag=bomber_bat] StateCounter 1
scoreboard players add @e[type=bat,tag=bomber_bat] BatAge 1
execute at @e[type=bat,tag=bomber_bat,scores={StateCounter=20..}] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["airstrike_creeper"]}
execute as @e[type=creeper,tag=airstrike_creeper,nbt={OnGround:1b}] run data merge entity @s {ExplosionRadius:2b,Fuse:2,ignited:1b}
scoreboard players set @e[type=bat,tag=bomber_bat,scores={StateCounter=20..}] StateCounter 0
kill @e[type=bat,tag=bomber_bat,scores={BatAge=100..}]


#tree bats, summoned via tree_bats.mcfunction via discord
scoreboard players add @e[type=bat,tag=tree_bat] BatAge 1
execute at @e[type=bat,tag=tree_bat] run setblock ~ ~-3 ~ minecraft:jungle_log[axis=y] keep
execute at @e[type=bat,tag=tree_bat] run setblock ~ ~-2 ~ minecraft:jungle_leaves keep
tp @e[type=bat,tag=tree_bat,x=0,y=128,z=0,distance=123..] 0 128 0
kill @e[type=bat,tag=tree_bat,scores={BatAge=500..}]


#Amplifier:3b arrow on ground, summon pummeler
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:3b}]}}}}] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["pummel_creeper","pummel_from_arrow"],attributes:[{id:"minecraft:follow_range",base:1}]}

#pummels 1 second after arrow lands
scoreboard players set @e[type=creeper,tag=pummel_from_arrow] StateCounter 80
tag @e[type=creeper,tag=pummel_from_arrow] remove pummel_from_arrow
#pummel creeper
#kill the pummeler so it doesn't last forever on the spawn platform. All others will die in the void
kill @e[type=creeper,x=-200,y=0,z=-200,dx=400,dy=4,dz=400]
scoreboard players add @e[type=creeper,tag=pummel_creeper,nbt={OnGround:1b}] StateCounter 1
execute at @e[type=creeper,tag=pummel_creeper,scores={StateCounter=100..},nbt={OnGround:1b}] run summon tnt ~ ~-1 ~



#Amplifier:4b on ground, summon chaser creeper
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:4b}]}}}}] run summon creeper ~ ~ ~ {ExplosionRadius:6b,Health:100f,Tags:["chaser"],attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.50},{id:"minecraft:follow_range",base:40}]}


#chaser creeper
scoreboard players add @e[type=creeper,tag=chaser,nbt={NoAI:1b}] StateCounter 1
execute as @e[type=creeper,tag=chaser,nbt={NoAI:1b},scores={StateCounter=100..}] run data merge entity @s {NoAI:0b}

#Amplifier:2b on ground, summon bomb creeper
execute at @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:potion_contents":{custom_effects:[{amplifier:2b}]}}}}] run summon creeper ~ ~ ~ {Fuse:20,powered:1b,Tags:["creeper_bomb"],attributes:[{id:"minecraft:follow_range",base:1}]}

#bomb creeper
scoreboard players add @e[type=creeper,tag=creeper_bomb] StateCounter 1
execute as @e[type=creeper,tag=creeper_bomb,scores={StateCounter=100}] run data merge entity @s {Fuse:1,powered:1b}



#kill any type of arrow in the ground
kill @e[type=arrow,nbt={inGround:1b}]


#safety net
scoreboard players add @e[type=egg] StateCounter 1
execute as @e[type=egg,scores={StateCounter=5},x=0,y=128,z=0,distance=..124] at @s run function wc:deploy_net

#glass sheild
scoreboard players add @e[type=snowball] StateCounter 1
execute at @e[type=snowball,scores={StateCounter=1}] as @p if entity @s[x_rotation=80..90] run tag @e[type=snowball,limit=1,scores={StateCounter=1}] add FloorRoof
execute at @e[type=snowball,scores={StateCounter=1}] as @p if entity @s[x_rotation=-90..-80] run tag @e[type=snowball,limit=1,scores={StateCounter=1}] add FloorRoof
execute at @e[type=snowball,scores={StateCounter=1}] as @p if entity @s[y_rotation=135..225] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof] add NorthSouth
execute at @e[type=snowball,scores={StateCounter=1}] as @p if entity @s[y_rotation=-45..45] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof] add NorthSouth
execute at @e[type=snowball,scores={StateCounter=1}] as @p if entity @s[y_rotation=-135..-45] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof,tag=!NorthSouth] add EastWest
execute at @e[type=snowball,scores={StateCounter=1}] as @p if entity @s[y_rotation=45..135] run tag @e[type=snowball,limit=1,scores={StateCounter=1},tag=!FloorRoof,tag=!NorthSouth] add EastWest
execute if entity @e[type=snowball,scores={StateCounter=10},x=0,y=128,z=0,distance=..124] run function wc:deploy_glass_shield


#Warn Out of Bounds
scoreboard players add @a[gamemode=survival,x=0,y=128,z=0,distance=123..] StateCounter 1
effect give @a[gamemode=survival,x=0,y=128,z=0,distance=123..] blindness 2
title @a[gamemode=survival,scores={StateCounter=100..}] title {"text":"WARNING","color":"red"}
title @a[gamemode=survival,scores={StateCounter=100..}] subtitle {"text":"You will be eliminated if you travel more than 123 blocks from the center","color":"red"}
execute as @a[gamemode=survival,scores={StateCounter=100..}] run playsound minecraft:ambient.cave master @s
execute as @a[gamemode=survival,scores={StateCounter=100..}] run scoreboard players set @s StateCounter 0

#If there is no ender crystal and the white teleporter exists, destroy all teleporters
execute unless entity @e[type=minecraft:end_crystal] if block 100 120 0 minecraft:end_gateway run function wc:destroy_teleporters