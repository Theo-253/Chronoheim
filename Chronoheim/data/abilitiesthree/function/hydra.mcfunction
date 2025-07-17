scoreboard players set burn3 burn 1
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used More Heads!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used More Heads!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = hydraCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = hydraCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = hydraCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = hydraCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot22isatk booleans matches 1.. run scoreboard players operation cooldown slot22 = hydraCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = hydraCD abilityStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot17isatk booleans matches 1 run scoreboard players operation atk slot17 *= hydra abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot18isatk booleans matches 1 run scoreboard players operation atk slot18 *= hydra abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot19isatk booleans matches 1 run scoreboard players operation atk slot19 *= hydra abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot21isatk booleans matches 1 run scoreboard players operation atk slot21 *= hydra abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot22isatk booleans matches 1 run scoreboard players operation atk slot22 *= hydra abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot23isatk booleans matches 1 run scoreboard players operation atk slot23 *= hydra abilityStats

execute if score slot17isatk booleans matches 1.. at @e[name=slot17] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot18isatk booleans matches 1.. at @e[name=slot18] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot19isatk booleans matches 1.. at @e[name=slot19] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot21isatk booleans matches 1.. at @e[name=slot21] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot22isatk booleans matches 1.. at @e[name=slot22] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run function chthree:turnend
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run effect clear @a[tag=game2] fire_resistance
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run function chthree:turnend
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run effect clear @a[tag=game2] fire_resistance
