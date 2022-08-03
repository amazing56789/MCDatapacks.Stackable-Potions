#@type: loop
#	@@loop-type: recursive, 5t
#@retype: runner
#@in: potions:specials/load

#more efficient than using a predicate to check if it's any type of potion
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:potion" } } ] at @s run function potions:stack/drink
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:splash_potion" } } ] at @s run function potions:stack/splash
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:lingering_potion" } } ] at @s run function potions:stack/linger

#loop:
schedule function potions:tests/detect_items 5t
