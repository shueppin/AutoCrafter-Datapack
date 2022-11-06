# ALL CRAFTABLE ITEMS
# This sets the materials and counts needed


execute as @s if entity @s[nbt={Items:[{Slot:2b, id:"minecraft:gold_block"}]}] store success score @s can_craft_item run function autocrafter:crafting/recipes/gold_block
execute as @s if entity @s[nbt={Items:[{Slot:2b, id:"minecraft:iron_block"}]}] store success score @s can_craft_item run function autocrafter:crafting/recipes/iron_block

