########################################
#                                      #
#            Tick Function             #
#            -------------             #
#         Runs every game tick         #
#                                      #
########################################

# Make entity a bot
execute as @e[tag=custom_ai.world_miner.bot] run data merge entity @s {NoAI:1b}

## Mine out the entire WORLD
# Mine out the X,Z coords
execute as @e[tag=custom_ai.world_miner.bot] unless block ~ ~-1 ~ minecraft:air run tag @s add custom_ai.world_miner.events.is_mining
execute as @e[tag=custom_ai.world_miner.bot] if block ~ ~-1 ~ minecraft:bedrock run tag @s remove custom_ai.world_miner.events.is_mining
execute as @e[tag=custom_ai.world_miner.bot,tag=custom_ai.world_miner.events.is_mining] at @s run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 minecraft:air
execute as @e[tag=custom_ai.world_miner.bot,tag=custom_ai.world_miner.events.is_mining] at @s run tp @s ~ ~-1 ~
# Warp to new location if chunk is mined
execute as @e[tag=custom_ai.world_miner.bot,tag=custom_ai.world_miner.events.is_mining] if block ~ ~-1 ~ minecraft:bedrock run tag @s remove custom_ai.world_miner.events.is_mining
execute as @e[tag=custom_ai.world_miner.bot] if block ~ ~-1 ~ minecraft:bedrock run tag @s add custom_ai.world_miner.events.is_warping
execute as @e[tag=custom_ai.world_miner.bot,tag=custom_ai.world_miner.events.is_warping] run spreadplayers ~-10 ~10 10 10 false @s