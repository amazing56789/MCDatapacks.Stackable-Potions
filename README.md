# Stackable-Potions
A datapack that stacks dropped potions. For u/TranquilBurrito on reddit.
If you remix, adapt, or make any other changes to this datapack, please preserve the creator.txt file.


## How it works:
It's actually pretty simple. For every potion item entity, it counts all the nearby items that have some of the same nbt and adds that to a scoreboard. After that, it sets the count of the original potion item to the scoreboard value, and kills all the other items with the same NBT.

## Note:
This won't work for different ordered lists. Basically, it will stack these two:
*     { id : "minecraft:potion", tag : { CustomPotionEffects: [\{ Id : 1, Amplifier : 5b, Duration 1421 }, { Id : 16, Amplifier : 23b, Duration : 12312 \}] } }
*     { id : "minecraft:potion", tag : { CustomPotionEffects: [\{ Id : 1, Amplifier : 5b, Duration 1421 }, { Id : 16, Amplifier : 23b, Duration : 12312 \}] } }
but it won't stack these two:
*     { id : "minecraft:potion", tag : { CustomPotionEffects: [\{ Id : 1, Amplifier : 5b, Duration 1421 }, { Id : 16, Amplifier : 23b, Duration : 12312 \}] } }
*     { id : "minecraft:potion", tag : { CustomPotionEffects: [\{ Id : 16, Amplifier : 23b, Duration : 12312 }, { Id : 1, Amplifier : 5b, Duration 1421 \}] } }
I could've made it work, but that would've been a *lot* less efficient, so I decided not to. It won't bother you unless you're /give-ing or /item-ing with different NBT data

## To change version:
Go into `Stackable Potions/pack.mcmeta`, and change `"pack_format"` from 10 to whatever your version's MCmeta format is. Find your version's MCmeta number on [the Minecraft wiki](https://minecraft.fandom.com/wiki/Pack.mcmeta).

## Contact me if:
You have a better way of doing this, I'll update this repo
If you want a specific, *simple* change just for you. It's really easy to make something like "it won't stack unless the potion colors are the same", or "decrease the range of item stacking".
