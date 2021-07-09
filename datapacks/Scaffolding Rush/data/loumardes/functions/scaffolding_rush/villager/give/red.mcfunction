tag @a[team=red] remove has_egg
clear @a[team=red] mooshroom_spawn_egg
execute as @e[type=villager,team=red] run function loumardes:scaffolding_rush/clean_kill
execute as @s[nbt=!{SelectedItem:{id:"minecraft:scaffolding"}},nbt=!{SelectedItem:{id:"minecraft:red_concrete_powder"}}] run replaceitem entity @s weapon.mainhand mooshroom_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:red}}
execute as @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg"}]}] run give @s mooshroom_spawn_egg{EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:red}}
tag @s add has_egg
