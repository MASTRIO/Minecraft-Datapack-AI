########################################
#                                      #
#            Load Function             #
#            -------------             #
#   Runs when the datapack is loaded   #
#                                      #
########################################

# AI version
scoreboard players add basic_cv_max Debug 0
scoreboard players set basic_cv_max Debug 0
scoreboard players add basic_cv_min Debug 0
scoreboard players set basic_cv_min Debug 1

# Announce to chat
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":"<","color":"yellow"},{"text":"Custom AI | Basic","color":"yellow","hoverEvent":{"action":"show_text","contents":"A very basic AI, walks around and stuff"}},{"text":">","color":"yellow"},{"text":" v","color":"green"},{"score":{"name":"basic_cv_max","objective":"Debug"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"basic_cv_min","objective":"Debug"},"color":"green"},{"text":" Loaded","color":"aqua"}]