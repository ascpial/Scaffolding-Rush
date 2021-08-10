# normalize values
execute if score WBAddTemp options matches ..-5 run scoreboard players set WBAddTemp options -5
execute if score WBAddTemp options matches 5.. run scoreboard players set WBAddTemp options 5

# update internal values
scoreboard players operation WBAddTemp options *= #10 global
scoreboard players operation WBSize options += WBAddTemp options

# check 
execute unless score WBSize options matches 25..165 run scoreboard players set WBAddTemp options 0
execute if score WBSize options matches ..25 run worldborder set 25 1
execute if score WBSize options matches ..25 run scoreboard players set WBSize options 25
execute if score WBSize options matches 165.. run worldborder set 165 1
execute if score WBSize options matches 165.. run scoreboard players set WBSize options 165

# update world border size
scoreboard players operation WBAddTemp options /= #10 global
execute if score WBAddTemp options matches -5 run worldborder add -50 1
execute if score WBAddTemp options matches -4 run worldborder add -40 1
execute if score WBAddTemp options matches -3 run worldborder add -30 1
execute if score WBAddTemp options matches -2 run worldborder add -20 1
execute if score WBAddTemp options matches -1 run worldborder add -10 1
execute if score WBAddTemp options matches 1 run worldborder add 10 1
execute if score WBAddTemp options matches 2 run worldborder add 20 1
execute if score WBAddTemp options matches 3 run worldborder add 30 1
execute if score WBAddTemp options matches 4 run worldborder add 40 1
execute if score WBAddTemp options matches 5 run worldborder add 50 1

# set the border limits
scoreboard players operation WBbyTwo global = WBSize options
scoreboard players operation WBbyTwo global /= #2 global
scoreboard players set -WBbyTwo global 0
scoreboard players operation -WBbyTwo global -= WBbyTwo global

# check for bases
execute as @e[type=!minecraft:player] if score @s XEntity > WBbyTwo global run function scaffolding_rush:clean_kill
execute as @e[type=!minecraft:player] if score @s XEntity < -WBbyTwo global run function scaffolding_rush:clean_kill
execute as @e[type=!minecraft:player] if score @s ZEntity > WBbyTwo global run function scaffolding_rush:clean_kill
execute as @e[type=!minecraft:player] if score @s ZEntity < -WBbyTwo global run function scaffolding_rush:clean_kill

# reset values
scoreboard players set WBAddTemp options 0
scoreboard players set @a opt_wb_size_add 0
