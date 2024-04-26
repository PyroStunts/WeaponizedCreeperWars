#old particle item beef ~ ~ ~ 1 2 1 0 1000 normal
particle item{item:"beef"} ~ ~ ~ 1 2 1 0 1000 normal
playsound entity.squid.death master @a ~ ~ ~
title @a[gamemode=survival,x=0,y=128,z=0,distance=126..] title {"text":"OUT OF BOUNDS","color":"red"}
title @a[gamemode=survival,x=0,y=128,z=0,distance=126..] subtitle {"text":"You have been eliminated","color":"green"}
gamemode spectator @a[gamemode=survival,x=0,y=128,z=0,distance=126..]