#this funtion needs to be run once only when you first get this datapack
#You should use this datapack on a void world. It set up scoreboards, gamerules and
# stuff like that.


#Remove void world platform.
fill 24 3 24 -16 3 -16 minecraft:air



#A player who dies will spawn here and will be imediately be out of bounds
setworldspawn 0 255 0


gamemode spectator @a

bossbar add next_supply {"text":"Next Supply Drop","color":"green"}
bossbar set minecraft:next_supply color green
bossbar set minecraft:next_supply max 800

time set noon
gamerule advance_time true
gamerule allow_entering_nether_using_portals false
gamerule spawn_mobs false
gamerule pvp false
gamerule advance_weather false
gamerule command_block_output false
gamerule immediate_respawn true
gamerule show_advancement_messages false
gamerule locator_bar true
team add SameTeam
team modify SameTeam friendlyFire false
team modify SameTeam collisionRule never

scoreboard objectives add BatAge dummy "Bat Age"

scoreboard objectives add GameState dummy "Game State"
scoreboard players set $fake GameState 1

scoreboard objectives add StateCounter dummy "State Counter"
scoreboard players set $fake StateCounter 0

scoreboard objectives add PlayerCount dummy "Player Count"
scoreboard players set $fake PlayerCount 0
scoreboard players set $10 PlayerCount 10


scoreboard objectives add CubeVoteCount dummy "Vote Count"
scoreboard players set $fake CubeVoteCount 0


scoreboard objectives add ApocalypseCount dummy "Apocalypse Counter"
scoreboard players set $fake ApocalypseCount 0

scoreboard objectives add ResetMyScore trigger
scoreboard objectives add SurvivalMode trigger
scoreboard objectives add ShowRules trigger
scoreboard objectives add RulesAgree trigger
scoreboard objectives add Apocalypse trigger
scoreboard objectives add VoteCube trigger


scoreboard objectives add Wins dummy "Game Wins"
scoreboard objectives setdisplay below_name Wins
scoreboard objectives setdisplay list Wins

scoreboard objectives add SupplyDrop dummy "Supply Drop"
scoreboard players set $fake SupplyDrop 0

function wc:make_rings
