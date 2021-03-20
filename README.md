# Weaponized Creeper Wars
## Minecraft Java Edition 1.16.5 Datapack 

Here is the datapack that my Minecraft mini-game server at wcw.mcstacker.net is using. I'm sharing it here for others to learn from. If you are new to datapacks and mcfunctions you might learn how easily vanilla mini-games can be created. You'll find lots of helpful comments in the code which explain a bit about what is going on.

Some of the commands used in this datapack were created on my Minecraft Command Generator at https://mcstacker.net .

I have a website that explains the game here http://wcw.mcstacker.net 

#### Getting Started
1. Setup a Vanilla Server with a Void world
2. Put the datapack in the datapacks folder
3. Run the `/reload` command (You need to be the operator)
4. Run `/function wc:setup` once only to setup the game for this world.


#### Suggested server.properties
Some of the things in this file are unnecessary, But I thought I'd share it anyway. 
```
enable-jmx-monitoring=false
rcon.port=25575
level-seed=
enable-command-block=true
gamemode=spectator
enable-query=false
generator-settings=
level-name=world
motd=\u00A72\u00A7lWeaponized Creeper Wars\n\u00A7fExplode your way to victory  
query.port=25565
pvp=false
generate-structures=true
difficulty=easy
network-compression-threshold=256
max-tick-time=60000
use-native-transport=true
max-players=10
online-mode=true
enable-status=true
allow-flight=false
broadcast-rcon-to-ops=true
view-distance=10
max-build-height=256
server-ip=
allow-nether=false
server-port=25565
enable-rcon=true
sync-chunk-writes=true
op-permission-level=4
prevent-proxy-connections=false
resource-pack=
entity-broadcast-range-percentage=100
player-idle-timeout=0
rcon.password=YOUROWNPASSWORD
force-gamemode=true
rate-limit=0
hardcore=false
white-list=false
broadcast-console-to-ops=true
spawn-npcs=true
spawn-animals=true
snooper-enabled=true
function-permission-level=2
level-type=default
text-filtering-config=
spawn-monsters=true
enforce-whitelist=false
spawn-protection=1
resource-pack-sha1=
max-world-size=29999984
```
#### Discord
Check out the [WCW discord server](https://discord.gg/B6zG4Y26uD) if you want to discuss the datapack or server.