#########################################################
#                                                       #
#                     Shoot Function                    #
#                     --------------                    #
#    Runs when the crossbow turret attempts to shoot    #
#                                                       #
#########################################################

# Remove aiming tag
execute as @e[tag=custom_ai.crossbow_turret.bot,tag=custom_ai.crossbow_turret.events.is_aiming] run tag @s remove custom_ai.crossbow_turret.events.is_aiming

# Fire arrow
execute as @e[tag=custom_ai.crossbow_turret.bot,tag=!custom_ai.crossbow_turret.events.is_aiming] run tag @s add custom_ai.crossbow_turret.events.is_shooting

execute as @e[tag=custom_ai.crossbow_turret.bot,tag=custom_ai.crossbow_turret.events.is_shooting] run summon minecraft:arrow ~ ~1 ~ {Tags:[custom_ai.crossbow_turret.nodes.arrow]}
execute as @e[tag=custom_ai.crossbow_turret.nodes.arrow] at @s run tp @s @e[tag=custom_ai.crossbow_turret.bot,tag=custom_ai.crossbow_turret.events.is_shooting,sort=nearest,limit=1]
execute as @e[tag=custom_ai.crossbow_turret.nodes.arrow] at @s run tp @s ^ ^ ^0.5

execute as @e[tag=custom_ai.crossbow_turret.bot,tag=custom_ai.crossbow_turret.events.is_shooting] run tag @s remove custom_ai.crossbow_turret.events.is_shooting

# Re-scedules the shoot function
schedule function crossbow_turret:shoot 5s