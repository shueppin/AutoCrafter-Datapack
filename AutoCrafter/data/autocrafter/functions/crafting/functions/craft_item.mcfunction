# Reset all variables
scoreboard players set @s enough_material 1


# Get the slots and counts of all items in the dropper
# This is mainly used for the function "get_count_of_item_at_slot"
function autocrafter:crafting/functions/get_all_item_slots_and_counts



# Test if there are enough of each materials in the autocrafter

# If there is a material then set the "count_of_needed_items" to the number for the material and set the "testing_material_id" to the item id 
execute if data storage autocrafter:crafting material_1_id store result score @s count_of_needed_items run scoreboard players get @s material_1_count_needed
execute if data storage autocrafter:crafting material_1_id run data modify storage autocrafter:crafting testing_material_id set from storage autocrafter:crafting material_1_id
# Test every slot if there are enough items
execute if data storage autocrafter:crafting material_1_id run function autocrafter:crafting/functions/test_if_enough_items
# Set the list of the slots of the material from the list which the function "test_if_enough_items" created
execute if data storage autocrafter:crafting material_1_id run data modify storage autocrafter:crafting slots_material_1 set from storage autocrafter:crafting slots_of_this_material



# Remove the number of items from the slots

# Set the item id and the count and set the list with the slots which contain this item
execute if data storage autocrafter:crafting material_1_id store result score @s count_of_needed_items run scoreboard players get @s material_1_count_needed
execute if data storage autocrafter:crafting material_1_id run data modify storage autocrafter:crafting testing_material_id set from storage autocrafter:crafting material_1_id
# Set the list "slots_of_this_material" to the list of the material to pass the function which slots contain this material
execute if data storage autocrafter:crafting material_1_id run data modify storage autocrafter:crafting slots_of_this_material set from storage autocrafter:crafting slots_material_1
# If there are enough of all items ("enough_material" is still 1) and there is no item in the chest then remove the specific number of items
execute if data storage autocrafter:crafting material_1_id if score @s enough_material matches 1 unless data block ~ ~ ~ Items[0] run function autocrafter:crafting/functions/remove_items_from_all_slots





# Set the output item
execute if score @s enough_material matches 1 unless data block ~ ~ ~ Items[0] run data modify block ~ ~ ~ Items append from storage autocrafter:crafting output_material
