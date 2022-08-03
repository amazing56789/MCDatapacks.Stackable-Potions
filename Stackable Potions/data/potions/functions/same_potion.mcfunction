scoreboard players set @s potions.count 0 #boolean if the potion is the same: 0 = same, 1 = different
data modify storage potions:equals tmp set from storage potions:equals org


execute store success score @s potions.count run data modify storage potions:equals tmp.effects set from entity @s Item.tag.CustomPotionEffects
execute if score @s potions.count matches 0 store success score @s potions.count run data modify storage potions:equals tmp.potion set from entity @s Item.tag.Potion

scoreboard players operation @e[ type = minecraft:item, limit = 1, sort = nearest ] potions.count += @s potions.count
