execute at @e[type=trident,limit=1,nbt={inGround:1b}] run effect give @p[gamemode=survival,sort=nearest] mining_fatigue 10 2
kill @e[type=trident,limit=1,nbt={inGround:1b}]

fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:mossy_cobblestone

fill ~-2 ~ ~-2 ~-2 ~2 ~-2 minecraft:mossy_cobblestone
fill ~2 ~ ~-2 ~2 ~2 ~-2 minecraft:mossy_cobblestone
fill ~-2 ~ ~2 ~-2 ~2 ~2 minecraft:mossy_cobblestone
fill ~2 ~ ~2 ~2 ~2 ~2 minecraft:mossy_cobblestone

setblock ~1 ~ ~-2 minecraft:mossy_cobblestone_stairs[facing=east,half=bottom,shape=straight]
setblock ~-1 ~ ~-2 minecraft:mossy_cobblestone_stairs[facing=west,half=bottom,shape=straight]
setblock ~1 ~ ~2 minecraft:mossy_cobblestone_stairs[facing=east,half=bottom,shape=straight]
setblock ~-1 ~ ~2 minecraft:mossy_cobblestone_stairs[facing=west,half=bottom,shape=straight]

setblock ~-2 ~ ~1 minecraft:mossy_cobblestone_stairs[facing=south,half=bottom,shape=straight]
setblock ~-2 ~ ~-1 minecraft:mossy_cobblestone_stairs[facing=north,half=bottom,shape=straight]
setblock ~2 ~ ~1 minecraft:mossy_cobblestone_stairs[facing=south,half=bottom,shape=straight]
setblock ~2 ~ ~-1 minecraft:mossy_cobblestone_stairs[facing=north,half=bottom,shape=straight]

setblock ~1 ~1 ~-2 minecraft:mossy_cobblestone_stairs[facing=east,half=top,shape=straight]
setblock ~-1 ~1 ~-2 minecraft:mossy_cobblestone_stairs[facing=west,half=top,shape=straight]
setblock ~1 ~1 ~2 minecraft:mossy_cobblestone_stairs[facing=east,half=top,shape=straight]
setblock ~-1 ~1 ~2 minecraft:mossy_cobblestone_stairs[facing=west,half=top,shape=straight]

setblock ~-2 ~1 ~1 minecraft:mossy_cobblestone_stairs[facing=south,half=top,shape=straight]
setblock ~-2 ~1 ~-1 minecraft:mossy_cobblestone_stairs[facing=north,half=top,shape=straight]
setblock ~2 ~1 ~1 minecraft:mossy_cobblestone_stairs[facing=south,half=top,shape=straight]
setblock ~2 ~1 ~-1 minecraft:mossy_cobblestone_stairs[facing=north,half=top,shape=straight]


setblock ~ ~ ~2 minecraft:mossy_cobblestone
setblock ~2 ~ ~ minecraft:mossy_cobblestone
setblock ~ ~ ~-2 minecraft:mossy_cobblestone
setblock ~-2 ~ ~ minecraft:mossy_cobblestone

setblock ~ ~2 ~2 minecraft:mossy_cobblestone
setblock ~2 ~2 ~ minecraft:mossy_cobblestone
setblock ~ ~2 ~-2 minecraft:mossy_cobblestone
setblock ~-2 ~2 ~ minecraft:mossy_cobblestone

fill ~-2 ~3 ~-2 ~2 ~3 ~2 minecraft:mossy_cobblestone

