schedule function autocrafter:_tick 1t


# SETUP
# invisibility for the endermite
effect give @e[type=endermite, name="AutoCrafter Setup"] invisibility 2 1 true

# Give @p another spawn egg
execute as @e[type=endermite, name="AutoCrafter Setup"] at @s run give @p bee_spawn_egg{EntityTag:{id:"endermite", CustomName:'[{"text":"AutoCrafter Setup"}]', NoAI:1b, NoGravity:1b, Silent:1b}, display:{Name:'[{"text":"AutoCrafter Setup","italic":false, "color": "gold"}]',Lore:['[{"text":"Place this somewhere to set an AutoCrafter.","italic":false, "color": "gray"}]']}} 1

# Kill the endermite if there is already a block
execute as @e[type=endermite, name="AutoCrafter Setup"] at @s unless block ~ ~ ~ air run kill @s
execute as @e[type=endermite, name="AutoCrafter Setup"] at @s unless block ~ ~1 ~ air run kill @s

# Set the autocrafter if the endermite is still there
execute as @e[type=endermite, name="AutoCrafter Setup"] at @s run function autocrafter:set_autocrafter


# CHECK TO DESTROY AUTOCRAFTER
# Check if the AutoCrafter has to be destroyed because one of the blocks is missing
execute as @e[type=llama, tag=AutoCrafter] at @s unless block ~ ~ ~ minecraft:chest run function autocrafter:prepare_to_destroy_autocrafter
execute as @e[type=llama, tag=AutoCrafter] at @s unless block ~ ~1 ~ minecraft:dropper run function autocrafter:prepare_to_destroy_autocrafter

# Check if the AutoCrafter has to be destroyed because the user clicked on the barrier
execute as @e[type=llama, tag=AutoCrafter] at @s unless entity @s[nbt={DecorItem:{id:"minecraft:barrier", tag:{display:{Name:'{"text":"Destroy AutoCrafter", "italic":false, "color":"red"}'}}}}] run function autocrafter:prepare_to_destroy_autocrafter


# LLAMA GUI
execute as @e[type=llama, tag=AutoCrafter] at @s run function autocrafter:set_llama_inventory

# Clear the items from the llama gui if in the player inventory
clear @a oak_sign{display:{Name:'{"text":"Place item to craft in the slot above", "italic":false, "color":"gold"}'}}

clear @a red_wool{display:{Name:'{"text":"Can not craft item", "italic":false, "color":"red"}'}}
clear @a green_wool{display:{Name:'{"text":"Can craft item", "italic":false, "color":"green"}'}}
clear @a gray_wool{display:{Name:'{"text":"Insert item", "italic":false, "color":"gray"}'}}

clear @a barrier{display:{Name:'{"text":"Destroy AutoCrafter", "italic":false, "color":"red"}'}}


# OTHER FUNCTIONS
# Remove the names from the dropper and the chest as Item
data modify entity @e[type=minecraft:item, limit=1, nbt={Item:{id:"minecraft:dropper", tag:{display:{Name:'{"text":"AutoCrafter Input"}'}}}}] Item.tag set value {}
data modify entity @e[type=minecraft:item, limit=1, nbt={Item:{id:"minecraft:chest", tag:{display:{Name:'{"text":"AutoCrafter Output"}'}}}}] Item.tag set value {}


# Tp the player tracker to the player
execute as @e[type=llama, tag=AutoCrafter] at @s run execute if entity @p[distance=..6] run tp @e[type=armor_stand, distance=..6.5, tag=AutoCrafter, tag=player_tracker, limit=1] @p
