#@type: runner
#@in: potions:tests/potion_items

scoreboard players set @s potions.count 0

data modify storage potions:equals org.effects set from entity @s Item.tag.CustomPotionEffects
data modify storage potions:equals org.potion set from entity @s Item.tag.Potion

execute as @e[ type = minecraft:item, distance = ..1.5, nbt = { Item : { id : "minecraft:lingering_potion" } } ] run function potions:same_potion

execute store result entity @s Item.Count byte 1 run scoreboard players get @s potions.count
