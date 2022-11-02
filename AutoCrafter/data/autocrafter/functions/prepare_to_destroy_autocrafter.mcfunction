summon armor_stand ~ ~ ~ {Marker:true, Invisible:true, NoGravity:true, Tags:["AutoCrafter", "destroy_autocrafter"]}

execute as @e[type=armor_stand, distance=..1, tag=destroy_autocrafter] at @s run function autocrafter:destroy_autocrafter