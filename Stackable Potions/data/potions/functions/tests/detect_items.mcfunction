#@type: loop
#	@@loop-type: recursive, 5t
#@retype: runner
#@in: potions:specials/load

execute as @e[ type = minecraft:item, predicate = potions:is_potion ] at @s run function potions:stack

#loop:
schedule function potions:tests/detect_items 5t
