title @a times 0 20 0
title @a title {"text":"Here we go !","color":"gold"}
execute as @a at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1000 2 1

#Bossbar
bossbar set minecraft:filling_lava players @a
bossbar set minecraft:filling_lava visible true
execute store result bossbar filling_lava max run scoreboard players get LavaSpeedTics options
