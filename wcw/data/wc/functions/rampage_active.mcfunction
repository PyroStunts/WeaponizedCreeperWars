#StateCounter is used to determine which of 72 possible directions to throw the creeper
scoreboard players add @e[type=creeper,tag=rampage_active] StateCounter 1
scoreboard players set @e[type=creeper,tag=rampage_active,scores={StateCounter=73..}] StateCounter 1

#count how many flying_creeper entities (these are grenades) and rampage_active entities there are
execute store result score $fake PlayerCount if entity @e[type=creeper,tag=flying_creeper]
execute store result score $rampage_creeper PlayerCount if entity @e[type=creeper,tag=rampage_active]
scoreboard players operation $rampage_creeper PlayerCount *= $10 PlayerCount
#dont make any more creepers if there are 10 or more flying_creepers per rampage creeper in game already
execute if score $fake PlayerCount < $rampage_creeper PlayerCount run execute at @e[type=creeper,tag=rampage_active] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["rampage_spawned"]}

#change split_creeper to flying_creeper throw it in one of these directions based on the parent creeper's StateCounter
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=1}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.00,2.0,-1.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=2}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.17,2.0,-0.98]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=3}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.34,2.0,-0.94]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=4}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.50,2.0,-0.87]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=5}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.64,2.0,-0.77]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=6}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.77,2.0,-0.64]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=7}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.87,2.0,-0.50]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=8}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.94,2.0,-0.34]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=9}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.98,2.0,-0.17]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=10}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.00,2.0,0.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=11}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.98,2.0,0.17]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=12}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.94,2.0,0.34]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=13}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.87,2.0,0.50]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=14}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.77,2.0,0.64]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=15}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.64,2.0,0.77]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=16}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.50,2.0,0.87]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=17}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.34,2.0,0.94]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=18}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.17,2.0,0.98]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=19}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.00,2.0,1.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=20}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.17,2.0,0.98]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=21}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.34,2.0,0.94]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=22}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.50,2.0,0.87]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=23}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.64,2.0,0.77]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=24}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.77,2.0,0.64]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=25}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.87,2.0,0.50]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=26}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.94,2.0,0.34]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=27}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.98,2.0,0.17]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=28}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.00,2.0,0.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=29}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.98,2.0,-0.17]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=30}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.94,2.0,-0.34]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=31}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.87,2.0,-0.50]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=32}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.77,2.0,-0.64]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=33}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.64,2.0,-0.77]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=34}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.50,2.0,-0.87]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=35}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.34,2.0,-0.94]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=36}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.17,2.0,-0.98]}

execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=37}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.00,0.5,-2.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=38}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.00,0.5,-2.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=39}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.35,0.5,-1.97]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=40}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.68,0.5,-1.88]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=41}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.00,0.5,-1.73]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=42}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.29,0.5,-1.53]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=43}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.53,0.5,-1.29]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=44}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.73,0.5,-1.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=45}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.88,0.5,-0.68]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=46}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.97,0.5,-0.35]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=47}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[2.00,0.5,0.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=48}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.97,0.5,0.35]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=49}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.88,0.5,0.68]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=50}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.73,0.5,1.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=51}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.53,0.5,1.29]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=52}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.29,0.5,1.53]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=53}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[1.00,0.5,1.73]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=54}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.68,0.5,1.88]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=55}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.35,0.5,1.97]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=56}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[0.00,0.5,2.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=57}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.35,0.5,1.97]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=58}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.68,0.5,1.88]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=59}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.00,0.5,1.73]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=60}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.29,0.5,1.53]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=61}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.53,0.5,1.29]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=62}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.73,0.5,1.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=63}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.88,0.5,0.68]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=64}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.97,0.5,0.35]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=65}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-2.00,0.5,0.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=66}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.97,0.5,-0.35]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=67}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.88,0.5,-0.68]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=68}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.73,0.5,-1.00]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=69}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.53,0.5,-1.29]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=70}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.29,0.5,-1.53]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=71}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-1.00,0.5,-1.73]}
execute at @e[type=creeper,tag=rampage_active,scores={StateCounter=72}] run data merge entity @e[type=creeper,tag=rampage_spawned,limit=1] {Tags:["flying_creeper"],Motion:[-0.68,0.5,-1.88]}
