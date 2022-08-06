#@type: runner
#@in: potions:tests/potion_items

execute store result score @s potions.count run data get entity @s Item.Count

data modify storage potions:equals org.effects set from entity @s Item.tag.CustomPotionEffects
data modify storage potions:equals org.potion set from entity @s Item.tag.Potion

execute as @e[ type = minecraft:item, distance = 0.01..0.6, nbt = { Item : { id : "minecraft:lingering_potion" } } ] run function potions:tests/same_potion

kill @e[ type = minecraft:item, distance = 0.01..0.6, scores = { potions.count = -1 }]
execute store result entity @s Item.Count byte 1 run scoreboard players get @s potions.count

#makes nearby items not include this item for the next tick (item takes a tick to be killed):
execute unless score @s potions.count matches 1 run scoreboard players set @s potions.count -2