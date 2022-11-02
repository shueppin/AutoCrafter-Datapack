# Calculate what the new number of items at a specific slot is

function autocrafter:crafting/functions/get_count_of_item_at_slot

scoreboard players operation @s new_number_of_items = @s testing_count
execute store result storage autocrafter:crafting new_item_count int 1 run scoreboard players operation @s new_number_of_items -= @s material_2_count_needed

function autocrafter:crafting/functions/set_new_item_count

scoreboard players operation @s calculating_material_count_needed = @s material_2_count_needed
scoreboard players operation @s calculating_material_count_needed += @s new_number_of_items
scoreboard players operation @s material_2_count_needed -= @s calculating_material_count_needed
