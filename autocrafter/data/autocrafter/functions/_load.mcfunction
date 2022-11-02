# SCORES
# Scores for crafting
scoreboard objectives add testing_slot dummy
scoreboard objectives add new_number_of_items dummy
scoreboard objectives add testing_count dummy
scoreboard objectives add item_count dummy
scoreboard objectives add calculating_material_count_needed dummy
scoreboard objectives add slot_number_of_item dummy
scoreboard objectives add could_place_item dummy
scoreboard objectives add different_item dummy


# Scores for every material for crafting
scoreboard objectives add material_1_count_needed dummy
scoreboard objectives add material_1_count dummy
scoreboard objectives add enough_material_1 dummy

scoreboard objectives add material_2_count_needed dummy
scoreboard objectives add material_2_count dummy
scoreboard objectives add enough_material_2 dummy

scoreboard objectives add enough_of_all_material dummy


# Other Scores
scoreboard objectives add can_craft_item dummy

scoreboard objectives add can_replace_llama_middle_slot dummy
scoreboard objectives add can_replace_llama_bottom_slot dummy



# Effect for the llama with 2 seconds delay after loading the world because then the llama doesn't get any damage
schedule function autocrafter:effect_for_llama 3s


# Remove the advancement from everyone
advancement revoke @a only autocrafter:started_riding_autocrafter_llama


# Remove the recipe from all players
recipe take @a autocrafter:autocrafter
