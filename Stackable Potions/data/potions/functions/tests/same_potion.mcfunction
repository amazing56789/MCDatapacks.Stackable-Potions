#boolean if the potion is the same: 0 = same, 1 = different:
scoreboard players set @s potions.count 0

data modify storage potions:equals tmp set from storage potions:equals org


execute store success score @s potions.count run data modify storage potions:equals tmp.effects set from entity @s Item.tag.CustomPotionEffects
execute if score @s potions.count matches 0 store success score @s potions.count run data modify storage potions:equals tmp.potion set from entity @s Item.tag.Potion


execute if score @s potions.count matches 0 run function potions:add_score