execute at @a run playsound entity.wither.spawn master @p
setblock -164 135 -133 warped_wall_sign[facing=north,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['{"text":""}','{"selector":"@p","color":"gold","bold":true}','{"text":"did this.","color":"gold"}','{"text":""}']}} replace
data merge block -153 132 -131 {front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','[{"selector":"@p","color":"gold","bold":true},{"text":"\'s","color":"gold","bold":true}]','{"text":"Island","color":"gold","bold":true}','{"text":""}']}}
function wc:make_rings



data merge block -153 133 -315 {front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','[{"selector":"@p","color":"gold","bold":true},{"text":"\'s","color":"gold","bold":true}]','{"text":"Island","color":"gold","bold":true}','{"text":""}']}}
data merge block -153 132 -316 {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"selector":"@p","color":"gold","bold":true}','{"text":"did this.","color":"gold"}','{"text":""}']}}
clone -164 136 -132 -164 136 -132 -153 132 -315 replace

#setblock -153 133 -315 minecraft:warped_sign[rotation=10,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"text":"Some day this "}',Text3:'{"text":"could all be"}',Text4:'{"text":"yours."}'}
#setblock -154 132 -315 minecraft:warped_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":"asd"}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}