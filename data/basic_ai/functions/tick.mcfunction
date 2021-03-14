########################################
#                                      #
#            Tick Function             #
#            -------------             #
#         Runs every game tick         #
#                                      #
########################################

# Make entity a bot
data merge entity @e[tag=custom_ai.basic.bot,limit=1,nbt=!{NoAI:1b}] {NoAI:1b}

# TEMP: basic constant motion system
execute as @e[tag=custom_ai.basic.bot] at @s run tp @s ^ ^ ^0.1