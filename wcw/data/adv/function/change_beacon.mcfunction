execute at @a run playsound entity.wither.spawn master @p
setblock -164 135 -133 warped_wall_sign[facing=north,waterlogged=false]{front_text:{has_glowing_text:1b,messages:["",{"selector":"@p","color":"gold","bold":true},{"text":"did this.","color":"gold"},""]}} replace
setblock -153 132 -131 warped_sign[rotation=14]{front_text:{color:"black",has_glowing_text:1b,messages:["",[{"selector":"@p","color":"gold","bold":true},{"text":"'s","color":"gold","bold":true}],{"text":"Island","color":"gold","bold":true},""]}} replace
function wc:make_rings
data modify storage wcw:vars myAdvWinner set from block -164 135 -133 front_text.messages[1]
