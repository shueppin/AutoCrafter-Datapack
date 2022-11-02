# The scoreboard can_craft_item is set to 0 if THERE IS AN ITEM and afterwards in the next step it is set to 1 if the item can be crafted
execute if entity @s[nbt={Items:[{Slot:2b}]}] run scoreboard players set @s can_craft_item 0


# /-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\
# ALL CRAFTABLE ITEMS


# --> Put the line under this comment into this area.


execute if entity @s[nbt={Items:[{Slot:2b, id:"minecraft:gold_block"}]}] store success score @s can_craft_item run function autocrafter:crafting/recipes/gold_block
execute if entity @s[nbt={Items:[{Slot:2b, id:"minecraft:iron_block"}]}] store success score @s can_craft_item run function autocrafter:crafting/recipes/iron_block

# \-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------/
