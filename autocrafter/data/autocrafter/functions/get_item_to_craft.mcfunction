# The scoreboard can_craft_item is set to 0 if THERE IS AN ITEM and afterwards in the next step it is set to 1 if the item can be crafted
execute if entity @s[nbt={Items:[{Slot:2b}]}] run scoreboard players set @s can_craft_item 0


# /-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\
# ALL CRAFTABLE ITEMS

execute if entity @s[nbt={Items:[{Slot:2b, id:"minecraft:gold_block"}]}] store success score @s can_craft_item run function autocrafter:crafting/recipes/gold_block
execute if entity @s[nbt={Items:[{Slot:2b, id:"minecraft:iron_block"}]}] store success score @s can_craft_item run function autocrafter:crafting/recipes/iron_block

# $script_command_beginning$ execute if entity @s[nbt={Items:[{Slot:2b, id:"$var_result_item$"}]}] store success score @s can_craft_item run function autocrafter:crafting/recipes/$var_result_item$ $script_command_end$ $script_newline$

# \-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------/
