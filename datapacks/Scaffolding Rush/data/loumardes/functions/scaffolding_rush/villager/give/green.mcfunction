tag @a[team=green] remove has_egg
clear @a[team=green slime_spawn_egg
execute as @e[type=villager,team=green] run function loumardes:scaffolding_rush/clean_kill
execute as @s[nbt=!{SelectedItem:{id:"minecraft:scaffolding"}},nbt=!{SelectedItem:{id:"minecraft:lime_concrete_powder"}}] run replaceitem entity @s weapon.mainhand slime_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:green}}
execute as @s[nbt=!{Inventory:[{id:"minecraft:slime_spawn_egg"}]}] run give @s slime_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:green}}
tag @s add has_egg
