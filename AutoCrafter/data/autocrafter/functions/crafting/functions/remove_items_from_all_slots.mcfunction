# Get the slot in which an item is and then remove the items from this

# TODO: Eventuallly rename "testing_slot" to "slot_number_of_item" and "testing_count" to "item_count" but check for them again

execute if data storage autocrafter:crafting slots_of_this_material[0] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[0]
execute if data storage autocrafter:crafting slots_of_this_material[0] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[1] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[1]
execute if data storage autocrafter:crafting slots_of_this_material[1] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[2] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[2]
execute if data storage autocrafter:crafting slots_of_this_material[2] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[3] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[3]
execute if data storage autocrafter:crafting slots_of_this_material[3] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[4] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[4]
execute if data storage autocrafter:crafting slots_of_this_material[4] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[5] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[5]
execute if data storage autocrafter:crafting slots_of_this_material[5] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[6] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[6]
execute if data storage autocrafter:crafting slots_of_this_material[6] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[7] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[7]
execute if data storage autocrafter:crafting slots_of_this_material[7] run function autocrafter:crafting/functions/calculate_all_new_item_counts

execute if data storage autocrafter:crafting slots_of_this_material[8] store result score @s testing_slot run data get storage autocrafter:crafting slots_of_this_material[8]
execute if data storage autocrafter:crafting slots_of_this_material[8] run function autocrafter:crafting/functions/calculate_all_new_item_counts