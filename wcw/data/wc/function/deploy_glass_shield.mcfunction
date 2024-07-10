execute at @e[type=snowball,scores={StateCounter=10},tag=FloorRoof] run function wc:floor_roof_creeper_glass
execute at @e[type=snowball,scores={StateCounter=10},tag=NorthSouth] run function wc:north_south_creeper_glass
execute at @e[type=snowball,scores={StateCounter=10},tag=EastWest] run function wc:east_west_creeper_glass
kill @e[type=snowball,scores={StateCounter=10}]
