# Reset scoreboards
scoreboard players set @s enough_of_all_material 0

# Reset scoreboard for every material
scoreboard players set @s material_1_count 0
scoreboard players set @s enough_material_1 0

scoreboard players set @s material_2_count 0
scoreboard players set @s enough_material_2 0


# Reset storage
data remove storage autocrafter:crafting slots
data remove storage autocrafter:crafting new_item_count
data remove storage autocrafter:crafting result_item

data remove storage autocrafter:crafting slots_material_1
data remove storage autocrafter:crafting slots_material_2
data remove storage autocrafter:crafting item_id


data merge storage autocrafter:crafting {slots:{}, slots_material_1:[], slots_material_2:[], new_item_count:0, result_item:{}, item_id: ""}