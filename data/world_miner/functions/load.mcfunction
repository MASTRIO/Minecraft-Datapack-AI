########################################
#                                      #
#            Load Function             #
#            -------------             #
#   Runs when the datapack is loaded   #
#                                      #
########################################

# AI version
scoreboard players add wm_cv_max Debug 0
scoreboard players set wm_cv_max Debug 0
scoreboard players add wm_cv_min Debug 0
scoreboard players set wm_cv_min Debug 1

# Announce to chat
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":"<","color":"yellow"},{"text":"Custom AI | World Miner","color":"yellow","hoverEvent":{"action":"show_text","contents":"It will mine out the entire world run for your life"}},{"text":">","color":"yellow"},{"text":" v","color":"green"},{"score":{"name":"wm_cv_max","objective":"Debug"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"wm_cv_min","objective":"Debug"},"color":"green"},{"text":" Loaded","color":"aqua"}]