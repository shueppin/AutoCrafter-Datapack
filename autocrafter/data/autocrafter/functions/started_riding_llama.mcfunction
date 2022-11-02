# Teleport the player to the player tracker armor_stand
tp @s @e[type=armor_stand, tag=player_tracker, tag=AutoCrafter, distance=..6.5, limit=1]
# If there is no armorstand around, then tp the player to 2 blocks above the autocrafter
execute unless entity @e[type=armor_stand, tag=player_tracker, tag=AutoCrafter, distance=..6.5, limit=1] run tp @s ~ ~2 ~


# Revoke the advancement
advancement revoke @s only autocrafter:started_riding_autocrafter_llama

# Tell the player some stats from the AutoCrafter
tellraw @s [{"text": "\nAutoCrafter Help\n", "color": "gold", "bold": true}, {"text": "Press Shift + Rightclick to open the AutoCrafter settings.\n", "color": "white", "bold": false}]
# tellraw text: [{"text": "Timer Help:\n", "color": "white"}, {"text": "Start timer", "color": "blue", "bold": false, "clickEvent": {"action": "suggest_command", "value": "/trigger start_timer"}}, {"text": "Pause timer", "color": "blue", "bold": false, "clickEvent": {"action": "suggest_command", "value": "/trigger pause_timer"}}, {"text": "Reset timer", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "value": "Command: /function timer:reset"}}]
