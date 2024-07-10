place template wc:cube_arena 100 100 100 none none
clear @a[gamemode=!creative]
gamemode adventure @a[gamemode=survival]
scoreboard players set $fake GameState 5
#tp @a[gamemode=adventure] 120 141 120
spreadplayers 120 120 10 30 false @a
item replace entity @a[gamemode=adventure] armor.feet with chainmail_boots[unbreakable={},enchantments={levels:{"minecraft:blast_protection":6,"minecraft:protection":4}}] 1
item replace entity @a[gamemode=adventure] hotbar.1 with diamond_pickaxe[can_break={predicates:[{blocks:"polished_blackstone_brick_stairs"},{blocks:"polished_blackstone_bricks"},{blocks:"ladder"}]},unbreakable={}] 1
item replace entity @a[gamemode=adventure] hotbar.2 with bow[unbreakable={}] 1


