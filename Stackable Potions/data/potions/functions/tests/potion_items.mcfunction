#@type: loop
#	@@loop-type: recursive, 5t
#	@@retype: runner

execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:potion" } } ] at @s run function potions:stack/drink
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:splash_potion" } } ] at @s run function potions:stack/linger
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:lingering_potion" } } ] at @s run function potions:stack/splash

#loop:
schedule function potions:tests/potion_items 5t
