########################################
#                                      #
#            Tick Function             #
#            -------------             #
#         Runs every game tick         #
#                                      #
########################################

# moving
scoreboard players add @e[tag=custom_ai.basic.bot] basic_moving 0

# Make entity a bot
execute as @e[tag=custom_ai.basic.bot] run data merge entity @s {NoAI:1b}

## Basic motion system
# Forward Motion
execute as @e[tag=custom_ai.basic.bot,predicate=basic_ai:walk,predicate=!basic_ai:walk_far] if score @s basic_moving matches 0 at @s run scoreboard players add @s basic_moving 3
execute as @e[tag=custom_ai.basic.bot,predicate=basic_ai:walk,predicate=basic_ai:walk_far] if score @s basic_moving matches 0 at @s run scoreboard players add @s basic_moving 7
execute as @e[tag=custom_ai.basic.bot] if score @s basic_moving matches 1.. run tag @s add custom_ai.basic.events.is_walking
execute as @e[tag=custom_ai.basic.bot,tag=custom_ai.basic.events.is_walking] if score @s basic_moving matches ..0 run tag @s remove custom_ai.basic.events.is_walking
execute as @e[tag=custom_ai.basic.bot,tag=custom_ai.basic.events.is_walking] at @s run tp @s ^ ^ ^0.1 ~ ~
execute as @e[tag=custom_ai.basic.bot,tag=custom_ai.basic.events.is_walking] run scoreboard players remove @s basic_moving 1
# Left / Right Motion
execute as @e[tag=custom_ai.basic.bot,predicate=basic_ai:turn_left] if score @s basic_moving matches 1.. at @s run tp @s ~ ~ ~ ~-45 ~
execute as @e[tag=custom_ai.basic.bot,predicate=basic_ai:turn_right] if score @s basic_moving matches 1.. at @s run tp @s ~ ~ ~ ~45 ~
# Gravity (Thanks alot NoAI)
execute as @e[tag=custom_ai.basic.bot,tag=!custom_ai.basic.events.is_jumping] if block ~ ~-0.5 ~ minecraft:air run tag @s add custom_ai.basic.events.is_falling
execute as @e[tag=custom_ai.basic.bot,tag=custom_ai.basic.events.is_falling] at @s run tp @s ~ ~-0.5 ~
# Jumping
execute as @e[tag=custom_ai.basic.bot] if score @s basic_moving matches 1.. unless block ^ ^ ^0.5 minecraft:air run tag @s add custom_ai.basic.events.is_jumping
execute as @e[tag=custom_ai.basic.bot,tag=custom_ai.basic.events.is_jumping] at @s run tp @s ^ ^1 ^0.5
execute as @e[tag=custom_ai.basic.bot,tag=custom_ai.basic.events.is_jumping] run tag @s remove custom_ai.basic.events.is_jumping