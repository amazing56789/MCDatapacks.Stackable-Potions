#@type: loop
#	@@loop-type: recursive, 5t
#@retype: runner
#@in: potions:specials/load

#more efficient than using a predicate to check if it's any type of potion
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:potion" } } ] at @s if entity @e[ type = minecraft:item, distance = 0.01..0.6 ] run function potions:tests/exists/drink
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:splash_potion" } } ] at @s if entity @e[ type = minecraft:item, distance = 0.01..0.6 ] run function potions:tests/exists/splash
execute as @e[ type = minecraft:item, nbt = { Item : { id : "minecraft:lingering_potion" } } ] at @s if entity @e[ type = minecraft:item, distance = 0.01..0.6 ] run function potions:tests/exists/linger

#loop:
schedule function potions:tests/detect_items 5t