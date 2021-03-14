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

# TEMP: basic motion system
execute as @e[tag=custom_ai.basic.bot,predicate=basic_ai:walk] at @s run scoreboard players add @s basic_moving 10
execute as @e[tag=custom_ai.basic.bot] if score @s basic_moving matches 1.. run tp @s ^ ^ ^0.1
execute as @e[tag=custom_ai.basic.bot] if score @s basic_moving matches 1.. run scoreboard players remove @s basic_moving 1

execute as @e[tag=custom_ai.basic.bot,predicate=basic_ai:turn_left] at @s run tp @s ^-45 ^ ^
execute as @e[tag=custom_ai.basic.bot,predicate=basic_ai:turn_right] at @s run tp @s ^45 ^ ^