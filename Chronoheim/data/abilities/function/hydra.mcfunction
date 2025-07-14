execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run scoreboard players set abilityusep3 booleans 1
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used More Heads!"]
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used More Heads!"]

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = hydraCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = hydraCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = hydraCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = hydraCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = hydraCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = hydraCD abilityStats

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot9isatk booleans matches 1 run scoreboard players operation atk slot9 *= hydra abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot10isatk booleans matches 1 run scoreboard players operation atk slot10 *= hydra abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot11isatk booleans matches 1 run scoreboard players operation atk slot11 *= hydra abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot13isatk booleans matches 1 run scoreboard players operation atk slot13 *= hydra abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot14isatk booleans matches 1 run scoreboard players operation atk slot14 *= hydra abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} if score slot15isatk booleans matches 1 run scoreboard players operation atk slot15 *= hydra abilityStats

execute if score slot9isatk booleans matches 1.. at @e[name=slot9] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot10isatk booleans matches 1.. at @e[name=slot10] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot11isatk booleans matches 1.. at @e[name=slot11] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot13isatk booleans matches 1.. at @e[name=slot13] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot14isatk booleans matches 1.. at @e[name=slot14] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot15isatk booleans matches 1.. at @e[name=slot15] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 200

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run function ch:turnend
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run effect clear @a[tag=game2] fire_resistance
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run function ch:turnend
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:14,max:14}}}}} run effect clear @a[tag=game2] fire_resistance
scoreboard players set burn burn2 1