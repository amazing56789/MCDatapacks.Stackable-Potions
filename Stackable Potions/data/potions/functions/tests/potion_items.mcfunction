#@type: loop
#	@@loop-type: recursive, 5t
#	@@retype: runner

execute at @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:potion" } } ] run function potions:stack/drink
execute at @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:splash_potion" } } ] run function potions:stack/linger
execute at @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:lingering_potion" } } ] run function potions:stack/splash
