#@type: runner
#@in: potions:tests/potion_items

scoreboard players set @s potions.all 0 #count

data modify storage potions:equals effects set from entity @s Item.tag.CustomPotionEffects
data modify storage potions:equals id set from entity @s Item.id

execute as @e[ type = minecraft:item, distance = ..1.5, predicate = potions:is_potion ] run function potions:same_potion

execute store result entity @s Item.Count byte 1 run scoreboard players get entity @s potions.all
