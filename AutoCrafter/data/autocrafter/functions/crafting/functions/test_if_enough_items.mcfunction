# This code needs to be executed as an entity right under the dropper for example the llama


# Reset all values
#function autocrafter:crafting/functions/reset_values $Remove$

# Reset all values
scoreboard players set @s total_number_of_items 0
data remove storage autocrafter:crafting slots_of_this_material


# Item 0
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[0] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[0].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[0].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[0].Slot

# Item 1
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[1] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[1].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[1].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[1].Slot

# Item 2
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[2] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[2].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[2].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[2].Slot

# Item 3
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[3] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[3].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[3].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[3].Slot

# Item 4
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[4] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[4].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[4].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[4].Slot

# Item 5
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[5] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[5].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[5].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[5].Slot

# Item 6
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[6] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[6].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[6].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[6].Slot

# Item 7
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[7] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[7].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[7].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[7].Slot

# Item 8
# Set the value of the item id to the wanted item, so that it knows which item is wanted.
data modify storage autocrafter:crafting item_id set from storage autocrafter:crafting testing_material_id
# If the value of "different_item" is zero, then it means both items are the same. But if it is 1 then it means both items are different.
# Reset the value
scoreboard players set @s different_item 1
# Try to change the value. And if the success is 0 then it was already the wanted item.
execute if block ~ ~1 ~ minecraft:dropper if data block ~ ~1 ~ Items[8] store success score @s different_item run data modify storage autocrafter:crafting item_id set from block ~ ~1 ~ Items[8].id
# Reset the item_count
scoreboard players set @s item_count 0
# If it is the same item (the value of "different_item" is 0) then it gets the number of items that are there and adds it to the material count. It also adds the slots to the list.
execute if score @s different_item matches 0 store result score @s item_count run data get block ~ ~1 ~ Items[8].Count
scoreboard players operation @s total_number_of_items += @s item_count
# Add the slot number to the list "slots_of_this_material"
execute if score @s item_count matches 1.. run data modify storage autocrafter:crafting slots_of_this_material prepend from block ~ ~1 ~ Items[8].Slot

# \------------------------------------------------------------------------------------------------------------------------------------------------------------------------/


# If there are not enough items, than it sets "enough_material" to 0
execute if score @s total_number_of_items < @s count_of_needed_items run scoreboard players set @s enough_material 0


# This is important if there is more than 1 material
#execute if score @s enough_material_1 matches 1 run scoreboard players set @s enough_of_all_material 1 $Remove$


# if there are enough items in the dropper and nothing is in the chest 
#execute if score @s enough_of_all_material matches 1 unless data block ~ ~ ~ Items[0] run function autocrafter:crafting/functions/material_1/set_all_slots_of_material_1 $Remove$


#execute if score @s enough_of_all_material matches 1 unless data block ~ ~ ~ Items[0] run data modify block ~ ~ ~ Items append from storage autocrafter:crafting output_material $Remove$


