# This writes all slots in which an item is in a dictionary the slot number is used as key and the value is the count of the item: {slot:count}

execute if data block ~ ~1 ~ Items[0] store result score @s testing_slot run data get block ~ ~1 ~ Items[0].Slot
execute if data block ~ ~1 ~ Items[0] store result score @s testing_count run data get block ~ ~1 ~ Items[0].Count
execute if data block ~ ~1 ~ Items[0] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[1] store result score @s testing_slot run data get block ~ ~1 ~ Items[1].Slot
execute if data block ~ ~1 ~ Items[1] store result score @s testing_count run data get block ~ ~1 ~ Items[1].Count
execute if data block ~ ~1 ~ Items[1] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[2] store result score @s testing_slot run data get block ~ ~1 ~ Items[2].Slot
execute if data block ~ ~1 ~ Items[2] store result score @s testing_count run data get block ~ ~1 ~ Items[2].Count
execute if data block ~ ~1 ~ Items[2] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[3] store result score @s testing_slot run data get block ~ ~1 ~ Items[3].Slot
execute if data block ~ ~1 ~ Items[3] store result score @s testing_count run data get block ~ ~1 ~ Items[3].Count
execute if data block ~ ~1 ~ Items[3] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[4] store result score @s testing_slot run data get block ~ ~1 ~ Items[4].Slot
execute if data block ~ ~1 ~ Items[4] store result score @s testing_count run data get block ~ ~1 ~ Items[4].Count
execute if data block ~ ~1 ~ Items[4] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[5] store result score @s testing_slot run data get block ~ ~1 ~ Items[5].Slot
execute if data block ~ ~1 ~ Items[5] store result score @s testing_count run data get block ~ ~1 ~ Items[5].Count
execute if data block ~ ~1 ~ Items[5] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[6] store result score @s testing_slot run data get block ~ ~1 ~ Items[6].Slot
execute if data block ~ ~1 ~ Items[6] store result score @s testing_count run data get block ~ ~1 ~ Items[6].Count
execute if data block ~ ~1 ~ Items[6] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[7] store result score @s testing_slot run data get block ~ ~1 ~ Items[7].Slot
execute if data block ~ ~1 ~ Items[7] store result score @s testing_count run data get block ~ ~1 ~ Items[7].Count
execute if data block ~ ~1 ~ Items[7] run function autocrafter:crafting/functions/write_count_to_storage

execute if data block ~ ~1 ~ Items[8] store result score @s testing_slot run data get block ~ ~1 ~ Items[8].Slot
execute if data block ~ ~1 ~ Items[8] store result score @s testing_count run data get block ~ ~1 ~ Items[8].Count
execute if data block ~ ~1 ~ Items[8] run function autocrafter:crafting/functions/write_count_to_storage