# Calculate what the new number of items at a specific slot is

# TODO: Put the function "get_count_of_item_at_slot" into this script and eventually put the function "set_new_item_count" into this too

# Returns "testing_count" with the number of items at "testing_slot"
function autocrafter:crafting/functions/get_count_of_item_at_slot

# Set "new_number_of_items" to the actual number and then subtract the number of items needed and save this in the storage for the function "set_new_item_count"
scoreboard players operation @s new_number_of_items = @s testing_count
execute store result storage autocrafter:crafting new_item_count int 1 run scoreboard players operation @s new_number_of_items -= @s count_of_needed_items

function autocrafter:crafting/functions/set_new_item_count

# This is to set "count_of_needed_items" to the actual count of items that are needed (now some already got removed from the originsl count)
scoreboard players operation @s calculating_material_count_needed = @s count_of_needed_items
scoreboard players operation @s calculating_material_count_needed += @s new_number_of_items
scoreboard players operation @s count_of_needed_items -= @s calculating_material_count_needed
