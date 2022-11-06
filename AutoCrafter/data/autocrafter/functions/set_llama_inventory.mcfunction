# This has to be executed as the llama
# This is to find out which block to set in the bottom slot
scoreboard players set @s can_craft_item -1

# This is to find out if you can replace the item in the slot
scoreboard players set @s can_replace_llama_middle_slot 0
scoreboard players set @s can_replace_llama_bottom_slot 0

# If there is no item in the slot, then set can_replace... to 1
execute unless entity @s[nbt={Items:[{Slot:3b}]}] run scoreboard players set @s can_replace_llama_middle_slot 1
execute unless entity @s[nbt={Items:[{Slot:4b}]}] run scoreboard players set @s can_replace_llama_bottom_slot 1


# If there is a specific item in the slot, then set can_replace... to 1
execute if entity @s[nbt={Items:[{Slot:3b, id:"minecraft:oak_sign", tag:{display:{Name:'{"text":"Place item to craft in the slot above", "italic":false, "color":"gold"}'}}}]}] run scoreboard players set @s can_replace_llama_middle_slot 1

execute if entity @s[nbt={Items:[{Slot:4b, id:"minecraft:red_wool", tag:{display:{Name:'{"text":"Can not craft item", "italic":false, "color":"red"}'}}}]}] run scoreboard players set @s can_replace_llama_bottom_slot 1
execute if entity @s[nbt={Items:[{Slot:4b, id:"minecraft:green_wool", tag:{display:{Name:'{"text":"Can craft item", "italic":false, "color":"green"}'}}}]}] run scoreboard players set @s can_replace_llama_bottom_slot 1
execute if entity @s[nbt={Items:[{Slot:4b, id:"minecraft:gray_wool", tag:{display:{Name:'{"text":"Insert item", "italic":false, "color":"gray"}'}}}]}] run scoreboard players set @s can_replace_llama_bottom_slot 1


# This is to set the crafting ingredients for the selected recipe
# The scoreboard can_craft_item is set to 0 if THERE IS AN ITEM and afterwards in the next step it is set to 1 if the item can be crafted
execute as @s if entity @s[nbt={Items:[{Slot:2b}]}] run scoreboard players set @s can_craft_item 0

# Reset the storage "output_material", so that the success for "can_craft_item" will be one
data remove storage autocrafter:crafting output_material

# Check for every item if it's possible to craft it in this autocrafter and if yes then set the materials
execute as @s at @s run function autocrafter:get_item_to_craft

# Run the function which crafts the items
execute if score @s can_craft_item matches 1 run function autocrafter:crafting/functions/craft_item


# Place the blocks in the bottom slot
execute if score @s can_craft_item matches 0 if score @s can_replace_llama_bottom_slot matches 1 run item replace entity @s horse.2 with red_wool{display:{Name:'{"text":"Can not craft item", "italic":false, "color":"red"}'}}
execute if score @s can_craft_item matches 1 if score @s can_replace_llama_bottom_slot matches 1 run item replace entity @s horse.2 with green_wool{display:{Name:'{"text":"Can craft item", "italic":false, "color":"green"}'}}
execute if score @s can_craft_item matches -1 if score @s can_replace_llama_bottom_slot matches 1 run item replace entity @s horse.2 with gray_wool{display:{Name:'{"text":"Insert item", "italic":false, "color":"gray"}'}}


# Set the other items in the llama's inventory
execute if score @s can_replace_llama_middle_slot matches 1 run item replace entity @s horse.1 with oak_sign{display:{Name:'{"text":"Place item to craft in the slot above", "italic":false, "color":"gold"}', Lore:['{"text":"The block in the bottom slot will","color":"gray","italic":false}', '{"text":"show if the item can be crafted.","color":"gray","italic":false}']}}
data modify entity @s DecorItem set value {id:'minecraft:barrier', tag:{display:{Name:'{"text":"Destroy AutoCrafter", "italic":false, "color":"red"}'}}, Count:1b}
