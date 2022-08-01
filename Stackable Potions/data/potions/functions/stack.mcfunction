#@type: runner
#@in: potions:tests/potion_items

scoreboard players set %count potions.all 0

data modify storage potions:equals org.effects set from entity @s Item.tag.CustomPotionEffects
data modify storage potions:equals org.id set from entity @s Item.id

execute as @e[ type = minecraft:item, distance = ..1.5, predicate = potions:is_potion ] run function potions:same_potion

execute store result entity @s Item.Count byte 1 run scoreboard players get entity %count potions.all
