# 
# Replace all 999 with the number of items needed
# Replace all 111 with the number of result items
# Replace all "minecraft:barrier" with "minecraft:[needed item]" 
# Replace "knowledge_book" with the result item
#


# This code needs to be executed as an entity right under the dropper for example the llama


# Reset all values
function autocrafter:crafting/functions/reset_values

# Get the slot and count of all items in the dropper
function autocrafter:crafting/functions/get_all_item_slots_and_counts



# /------------------------------------------------------------------------------------------------------------------------------------------------------------------------\ 
# MATERIAL 1
# Set number of needed items
scoreboard players set @s material_1_count_needed 999


scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:0b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.0
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 0

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:1b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.1
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 1

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:2b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.2
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 2

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:3b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.3
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 3

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:4b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.4
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 4

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:5b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.5
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 5

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:6b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.6
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 6

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:7b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.7
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 7

scoreboard players set @s temp_count 0
execute if block ~ ~1 ~ minecraft:dropper{Items:[{id:"minecraft:barrier", Slot:8b}]} store result score @s temp_count run data get storage autocrafter:crafting slots.8
scoreboard players operation @s material_1_count += @s temp_count
execute if score @s temp_count matches 1.. run data modify storage autocrafter:crafting slots_material_1 prepend value 8
# \------------------------------------------------------------------------------------------------------------------------------------------------------------------------/



execute if score @s material_1_count >= @s material_1_count_needed run scoreboard players set @s enough_material_1 1


execute if score @s enough_material_1 matches 1 run scoreboard players set @s enough_of_all_material 1


# if there are enough items in the dropper and nothing is in the chest 
execute if score @s enough_of_all_material matches 1 unless data block ~ ~ ~ Items[0] run function autocrafter:crafting/functions/material_1/set_all_slots_of_material_1


execute if score @s enough_of_all_material matches 1 unless data block ~ ~ ~ Items[0] run data modify block ~ ~ ~ Items append value {id:"minecraft:knowledge_book", Count:111b}
