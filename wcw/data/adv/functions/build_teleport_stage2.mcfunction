
setblock -56 47 -68 minecraft:air
setblock -54 47 -68 minecraft:air
setblock -52 47 -68 minecraft:air
setblock -50 47 -66 minecraft:air
setblock -50 47 -64 minecraft:air
setblock -50 47 -62 minecraft:air
setblock -52 47 -62 minecraft:air
setblock -54 47 -62 minecraft:air
setblock -56 47 -64 minecraft:air
setblock -56 47 -66 minecraft:air
fill -56 45 -68 -50 45 -62 minecraft:end_gateway{ExactTeleport:1b,ExitPortal:{X:-151,Y:133,Z:-134}} replace
gamemode adventure @p
execute at @a run playsound minecraft:block.portal.trigger master @a ~ ~ ~


#house
place template adv:temple -168 130 -152 none none
#setblock -169 129 -153 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"adv:temple",posX:1,posY:1,posZ:1,powered:1b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:20,sizeY:17,sizeZ:23}



#setblock -153 133 -315 minecraft:warped_sign[rotation=10,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"text":"Some day this "}',Text3:'{"text":"could all be"}',Text4:'{"text":"yours."}'}
#setblock -154 132 -315 minecraft:warped_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":"asd"}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}

#wall sign

execute positioned -130 130 -200 run clone -153 132 -316 -153 132 -316 -164 135 -133 replace

#standing sign
execute positioned -130 130 -200 run clone -153 133 -315 -153 133 -315 -153 132 -131 replace

#stained glass
execute positioned -130 130 -200 run clone -153 132 -315 -153 132 -315 -164 136 -132 replace




fill -151 131 -132 -151 133 -132 minecraft:end_gateway{ExactTeleport:1b,ExitPortal:{X:-50,Y:48,Z:-62}}
kill @e[type=minecraft:glow_item_frame]
data merge block -166 143 -145 {Items:[{Slot:0b,id:"minecraft:white_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:1b,id:"minecraft:orange_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:2b,id:"minecraft:magenta_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:3b,id:"minecraft:light_blue_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:4b,id:"minecraft:yellow_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:5b,id:"minecraft:lime_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:6b,id:"minecraft:pink_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:7b,id:"minecraft:cyan_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:8b,id:"minecraft:brown_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}},{Slot:9b,id:"minecraft:red_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:beacon","minecraft:quartz_stairs"]}}]}
summon minecraft:glow_item_frame -158.03 144.50 -145.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:creeper_head", Count: 1b}, Fixed: 0b}
summon minecraft:painting -165.97 145.50 -145.00 {facing:3b,variant: "minecraft:creebet"}


 


