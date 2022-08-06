execute store result score @s potions.count run data get entity @s Item.Count
scoreboard players operation @e[ type = minecraft:item, limit = 1, sort = nearest ] potions.count += @s potions.count

#kills item:
scoreboard players set @s potions.count -1