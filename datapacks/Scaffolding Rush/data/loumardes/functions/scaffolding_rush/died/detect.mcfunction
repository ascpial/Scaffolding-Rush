#kill villager
execute if entity @s[type=minecraft:villager] at @s run playsound minecraft:entity.player.hurt_on_fire ambient @a ~ ~ ~
execute if entity @s[type=minecraft:villager] run function loumardes:scaffolding_rush/clean_kill

execute if entity @s[team=red] unless entity @e[type=villager,team=red] run gamemode spectator @s
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run gamemode spectator @s
execute if entity @s[team=yellow] unless entity @e[type=villager,team=yellow] run gamemode spectator @s
execute if entity @s[team=green] unless entity @e[type=villager,team=green] run gamemode spectator @s
execute at @s run playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~

execute if entity @s[type=minecraft:player] run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" died in the lava","color":"gray"}]

tag @s remove has_egg
clear @s

tag @s[gamemode=!spectator] add Respawning

effect give @s[gamemode=!spectator] minecraft:slowness 1 9 true
effect give @s[gamemode=!spectator] minecraft:invisibility 1 1 true
effect give @s[gamemode=!spectator] minecraft:weakness 1 1 true

title @a times 0 10 0
title @s[gamemode=!spectator] title ["",{"text":"Respawning...","color":"red"}]

scoreboard players set @s[gamemode=spectator] killed 0
scoreboard players set @s[gamemode=!spectator] killed 10
execute as @s[gamemode=!spectator] run schedule function loumardes:scaffolding_rush/died/loop_tp 1t

#Recup delay
tag @s[gamemode=!spectator,tag=!has_egg] add VillagerRecup
schedule function loumardes:scaffolding_rush/villager/give/recup_delay 1s
