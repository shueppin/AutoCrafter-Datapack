# This has to be executed as an armor_stand

# Kill the entities
kill @e[type=armor_stand, tag=AutoCrafter, tag=player_tracker, distance=..6, limit=1]

execute positioned ~ ~2 ~ run kill @e[type=armor_stand, tag=AutoCrafter, distance=..0.9, limit=1, tag=!destroy_autocrafter]

kill @e[type=llama, tag=AutoCrafter, distance=..0.9, limit=1]


# Kill all the items that the llama drops
kill @e[type=item, distance=..1, limit=1, nbt={Item:{id:"minecraft:chest"}}]
kill @e[type=item, distance=..1, limit=1, nbt={Item:{id:"minecraft:leather"}}]

kill @e[type=item, distance=..1, limit=1, nbt={Item:{id:"minecraft:oak_sign", tag:{display:{Name:'{"text":"Place item to craft in the slot above", "italic":false, "color":"gold"}'}}}}]

kill @e[type=item, distance=..1, limit=1, nbt={Item:{id:"minecraft:red_wool", tag:{display:{Name:'{"text":"Can not craft item", "italic":false, "color":"red"}'}}}}]
kill @e[type=item, distance=..1, limit=1, nbt={Item:{id:"minecraft:gray_wool", tag:{display:{Name:'{"text":"Insert item", "italic":false, "color":"gray"}'}}}}]
kill @e[type=item, distance=..1, limit=1, nbt={Item:{id:"minecraft:green_wool", tag:{display:{Name:'{"text":"Can craft item", "italic":false, "color":"green"}'}}}}]

kill @e[type=item, distance=..1, limit=1, nbt={Item:{id:"minecraft:barrier", tag:{display:{Name:'{"text":"Destroy AutoCrafter", "italic":false, "color":"red"}'}}}}]


# Rename the dropper and the chest as block
data modify block ~ ~ ~ CustomName set value ''
data modify block ~ ~1 ~ CustomName set value ''


# Summon crafting_table
summon minecraft:item ~ ~2 ~ {Item:{id:"minecraft:crafting_table", Count:1}}


# Kill the killing armor_stand
kill @s