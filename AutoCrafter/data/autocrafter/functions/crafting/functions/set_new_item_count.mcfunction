# Set the new number of items at the slot (modify the item count)

# TODO: i guess the first line can be removed

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[0].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[0].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[1].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[1].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[2].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[2].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[3].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[3].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[4].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[4].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[5].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[5].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[6].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[6].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[7].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[7].Count set from storage autocrafter:crafting new_item_count

execute store result score @s slot_number_of_item run data get block ~ ~1 ~ Items[8].Slot
execute if score @s testing_slot = @s slot_number_of_item run data modify block ~ ~1 ~ Items[8].Count set from storage autocrafter:crafting new_item_count
