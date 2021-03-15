########################################
#                                      #
#            Load Function             #
#            -------------             #
#   Runs when the datapack is loaded   #
#                                      #
########################################

# AI version
scoreboard players add ct_cv_max Debug 0
scoreboard players set ct_cv_max Debug 0
scoreboard players add ct_cv_min Debug 0
scoreboard players set ct_cv_min Debug 1

# Announce to chat
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":"<","color":"yellow"},{"text":"Custom AI | Crossbow Turret","color":"yellow","hoverEvent":{"action":"show_text","contents":"It's a turret that's also a crossbow, pog"}},{"text":">","color":"yellow"},{"text":" v","color":"green"},{"score":{"name":"ct_cv_max","objective":"Debug"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"ct_cv_min","objective":"Debug"},"color":"green"},{"text":" Loaded","color":"aqua"}]

# Scedules the shoot function
schedule clear crossbow_turret:shoot
schedule function crossbow_turret:shoot 5s