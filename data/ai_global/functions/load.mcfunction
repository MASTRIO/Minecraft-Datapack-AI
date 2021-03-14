########################################
#                                      #
#        Global Load Function          #
#        --------------------          #
#   Runs when the datapack is loaded   #
#                                      #
########################################

# Debug Scoreboard
scoreboard objectives add Debug dummy
scoreboard players add global_cv_max Debug 0
scoreboard players set global_cv_max Debug 0
scoreboard players add global_cv_min Debug 0
scoreboard players set global_cv_min Debug 1

# Announce to chat
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":"<","color":"yellow"},{"text":"Custom AI | Global","color":"yellow","hoverEvent":{"action":"show_text","contents":"Custom AI using Just a Minecraft Datapack"}},{"text":">","color":"yellow"},{"text":" Datapack","color":"aqua"},{"text":" v","color":"green"},{"score":{"name":"global_cv_max","objective":"Debug"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"global_cv_min","objective":"Debug"},"color":"green"},{"text":" Loaded","color":"aqua"}]