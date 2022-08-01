scoreboard players set %same potions.all 0 #0 = same, 1 = not same
data modify storage potions:equals tmp set from storage potions:equals org


execute store success score %same potions.all run data modify storage potions:equals tmp.id set from entity @s Item.id

execute store result score %orglen potions.all run data get storage potions:equals org.effects
execute store result score %newlen potions.all run data get storage potions:equals tmp.effects
execute store result score %same potions.all unless score %orglen = %newlen

execute store
