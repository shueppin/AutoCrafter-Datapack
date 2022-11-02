# THIS NEEDS TO BE EXECUTED AS A LLAMA

# The writing above the AutoCrafter
summon minecraft:armor_stand ~ ~2 ~ {CustomName:'{"text":"AutoCrafter"}', CustomNameVisible:true, Marker:true, Invisible:true, NoGravity:true, Tags:["AutoCrafter"]}

# The player tracker
summon minecraft:armor_stand ~ ~ ~ {Marker:true, Invisible:true, NoGravity:true, Tags:["AutoCrafter", "player_tracker"]}

# The hitbox llama
summon minecraft:llama ~ ~ ~ {ChestedHorse:true, Tame:true, CustomName:'{"text":"AutoCrafter Configure"}', Tags:["AutoCrafter"], Silent:true, NoAI:true, Strength:1, Health:52}
# , ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:false}]
effect give @e[type=llama, tag=AutoCrafter] resistance 999999 255 true
effect give @e[type=llama, tag=AutoCrafter] regeneration 999999 255 true


# The blocks for input and output
setblock ~ ~1 ~ minecraft:dropper[facing=down]{CustomName:'{"text":"AutoCrafter Input"}'} destroy
setblock ~ ~ ~ minecraft:chest[facing=north]{CustomName:'{"text":"AutoCrafter Output"}'} destroy


# Reset the DecorItem with a barrier
execute as @e[type=llama, tag=AutoCrafter] at @s run data modify entity @s DecorItem set value {id:'minecraft:barrier', tag:{display:{Name:'{"text":"Destroy AutoCrafter", "italic":false, "color":"red"}'}}, Count:1b}


# Clear 1 spawn egg from the player
clear @p bee_spawn_egg{display:{Name:'[{"text":"AutoCrafter Setup","italic":false, "color": "gold"}]',Lore:['[{"text":"Place this somewhere to set an AutoCrafter.","italic":false, "color": "gray"}]']}} 1

# Kill the endermite
kill @s
