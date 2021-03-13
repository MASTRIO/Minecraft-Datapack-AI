########################################
#                                      #
#            Load Function             #
#            -------------             #
#   Runs when the datapack is loaded   #
#                                      #
########################################

# Debug Scoreboard
scoreboard objectives add Debug dummy
scoreboard players add current_version_max Debug 0
scoreboard players set current_version_max Debug 0
scoreboard players add current_version_min Debug 0
scoreboard players set current_version_min Debug 1

# Announce to chat
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":"<","color":"yellow"},{"text":"BasicAI","color":"yellow","hoverEvent":{"action":"show_text","contents":"A very basic AI, walks around and stuff"}},{"text":">","color":"yellow"},{"text":" v","color":"green"},{"score":{"name":"current_version_max","objective":"Debug"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"current_version_min","objective":"Debug"},"color":"green"},{"text":" Loaded","color":"aqua"}]