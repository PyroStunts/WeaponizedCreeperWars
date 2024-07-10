#old particle item beef ~ ~ ~ 1 2 1 0 1000 normal
particle item{item:"beef"} ~ ~ ~ 1 2 1 0 1000 normal
playsound entity.squid.death master @a ~ ~ ~
title @a[gamemode=adventure,x=120,y=120,z=120,distance=40..] title {"text":"OUT OF BOUNDS","color":"red"}
title @a[gamemode=adventure,x=120,y=120,z=120,distance=40..] subtitle {"text":"You have been eliminated","color":"green"}
gamemode spectator @a[gamemode=adventure,x=120,y=120,z=120,distance=40..]