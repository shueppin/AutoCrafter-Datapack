# Remove the advancement
advancement revoke @s only autocrafter:autocrafter_recipe

# Remove the knowledge_book
clear @s minecraft:knowledge_book

# Take the recipe from the player, that the player can get the advancement again any later.
recipe take @s autocrafter:autocrafter


# Give the player the spawn_egg
give @s bee_spawn_egg{EntityTag:{id:"endermite", CustomName:'[{"text":"AutoCrafter Setup"}]', NoAI:1b, NoGravity:1b, Silent:1b}, display:{Name:'[{"text":"AutoCrafter Setup","italic":false, "color": "gold"}]',Lore:['[{"text":"Place this somewhere to set an AutoCrafter.","italic":false, "color": "gray"}]']}} 1
