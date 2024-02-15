# Function is called as a trident with a nearby player and at the position of that player
effect give @p[gamemode=survival] mining_fatigue 10 2
kill @s

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
