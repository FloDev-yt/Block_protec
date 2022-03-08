# global objectives
scoreboard objectives add g_id dummy
scoreboard objectives add g_check dummy
scoreboard objectives add g_Xcoords dummy
scoreboard objectives add g_Zcoords dummy
# objectives
scoreboard objectives add bp_area dummy
scoreboard players set #-1 bp_area -1
scoreboard objectives add bp_diamond dummy
scoreboard objectives add bp_select dummy
scoreboard objectives add bp_idArea dummy
scoreboard objectives add bp_idAreaSave dummy
scoreboard objectives add bp_idArea2 dummy
scoreboard objectives add bp_idArea2Save dummy
scoreboard objectives add bp_idAreaBook dummy
scoreboard objectives add help_blockProtec trigger
scoreboard objectives add bp_timer dummy
scoreboard objectives add bp_selectPlayer dummy
scoreboard objectives add bp_idUpdate dummy
scoreboard objectives add bp_nbExtUpdate dummy
scoreboard objectives add bp_dropWB minecraft.dropped:minecraft.written_book
scoreboard objectives add bp_egg minecraft.used:minecraft.egg
scoreboard objectives add bp_splash_p minecraft.used:minecraft.splash_potion
scoreboard objectives add bp_lingering_p minecraft.used:minecraft.lingering_potion
scoreboard objectives add bp_leaveGame minecraft.custom:minecraft.leave_game
# container
scoreboard objectives add bp_open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add bp_open_barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add bp_open_furnace minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add bp_open_bfurnace minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add bp_open_smoker minecraft.custom:minecraft.interact_with_smoker
scoreboard objectives add bp_open_brewingstand minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add bp_open_dropper minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add bp_open_dispenser minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add bp_open_hopper minecraft.custom:minecraft.inspect_hopper
scoreboard objectives add bp_open_shulker_box minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add bp_open_trapped_chest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add bp_open_beacon minecraft.custom:minecraft.interact_with_beacon
# score for book
scoreboard objectives add bp_nbMember dummy
scoreboard objectives add bp_nbExt dummy
scoreboard objectives add bp_nbMaxMain dummy
scoreboard objectives add bp_nbMaxExt dummy
# Number for limit
scoreboard objectives add bp_nbMainArea dummy
scoreboard objectives add bp_nbExtArea dummy
scoreboard objectives add bp_maxMainArea dummy
scoreboard objectives add bp_maxExtArea dummy

# Default valut
## limit 
execute unless score .#default bp_maxMainArea matches -1.. run scoreboard players set .#default bp_maxMainArea 5
execute unless score .#default bp_maxExtArea matches -1.. run scoreboard players set .#default bp_maxExtArea 7
## level cost
execute unless score .#level_2 bp_diamond matches 1.. run scoreboard players set .#level_2 bp_diamond 5
execute unless score .#level_3 bp_diamond matches 1.. run scoreboard players set .#level_3 bp_diamond 26
execute unless score .#level_4 bp_diamond matches 1.. run scoreboard players set .#level_4 bp_diamond 64
execute unless score .#level_5 bp_diamond matches 1.. run scoreboard players set .#level_5 bp_diamond 128

# Team
team add bp_safeZone
team modify bp_safeZone friendlyFire false
team modify bp_safeZone color green
team add bp_rightClick

# Gamerule
gamerule doFireTick false
gamerule mobGriefing false
gamerule commandBlockOutput false

# schedule function
schedule function block_protec:main_20t 20t
schedule function block_protec:main_2t 2t

# find admin for give a message
tag @a[gamemode=creative] add adminMsg
## Option for serveur with admin
#tag @a[tag=admin] add adminMsg
# if not admin 
execute unless entity @a[tag=adminMsg] run tag @a add adminMsg
tellraw @a[tag=adminMsg] ["",{"text":"[","color":"aqua"},{"text":"Block protec","bold":true,"color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://github.com/FloDev-yt/Block_protec"},"hoverEvent":{"action":"show_text","contents":["Lien vers le site du Datapack"]}},{"text":"]","color":"aqua"},{"text":" reloaded","color":"dark_green"}]
tag @a[tag=adminMsg] remove adminMsg

