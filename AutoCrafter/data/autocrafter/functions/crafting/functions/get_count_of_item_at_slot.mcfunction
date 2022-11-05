# Sets "testing_count" to the number which is stored in the dictinary with the key "testing_slot"
# This functions requires the execution of "get_all_item_slots_and_counts" at the beginning 

execute if score @s testing_slot matches 0 store result score @s testing_count run data get storage autocrafter:crafting slots.0
execute if score @s testing_slot matches 1 store result score @s testing_count run data get storage autocrafter:crafting slots.1
execute if score @s testing_slot matches 2 store result score @s testing_count run data get storage autocrafter:crafting slots.2
execute if score @s testing_slot matches 3 store result score @s testing_count run data get storage autocrafter:crafting slots.3
execute if score @s testing_slot matches 4 store result score @s testing_count run data get storage autocrafter:crafting slots.4
execute if score @s testing_slot matches 5 store result score @s testing_count run data get storage autocrafter:crafting slots.5
execute if score @s testing_slot matches 6 store result score @s testing_count run data get storage autocrafter:crafting slots.6
execute if score @s testing_slot matches 7 store result score @s testing_count run data get storage autocrafter:crafting slots.7
execute if score @s testing_slot matches 8 store result score @s testing_count run data get storage autocrafter:crafting slots.8
