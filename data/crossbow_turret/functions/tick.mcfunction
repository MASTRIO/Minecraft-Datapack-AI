########################################
#                                      #
#            Tick Function             #
#            -------------             #
#         Runs every game tick         #
#                                      #
########################################

# Make entity a bot
execute as @e[tag=custom_ai.crossbow_turret.bot] run data merge entity @s {NoAI:1b}

## Turret AI
# Aim at nearest Enemy
execute as @e[tag=custom_ai.crossbow_turret.bot] if entity @e[type=#crossbow_turret:turret_enemy,distance=..10,sort=nearest,limit=1] run tag @s add custom_ai.crossbow_turret.events.is_aiming
execute as @e[tag=custom_ai.crossbow_turret.bot,tag=custom_ai.crossbow_turret.events.is_aiming] run tp @s ~ ~ ~ facing entity @e[type=#crossbow_turret:turret_enemy,distance=..10,sort=nearest,limit=1] eyes

# Move Arrow Node
execute as @e[tag=custom_ai.crossbow_turret.nodes.arrow] at @s run tp @s ^ ^ ^1