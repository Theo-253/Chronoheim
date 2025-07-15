execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run scoreboard players set abilityusep3 booleans 1
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = boomerCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = boomerCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = boomerCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = boomerCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = boomerCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = boomerCD abilityStats

execute if score slot9isatk booleans matches 1.. at @e[name=slot9] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot10isatk booleans matches 1.. at @e[name=slot10] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot11isatk booleans matches 1.. at @e[name=slot11] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot13isatk booleans matches 1.. at @e[name=slot13] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot14isatk booleans matches 1.. at @e[name=slot14] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot15isatk booleans matches 1.. at @e[name=slot15] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players set slot9 hp 0
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players set slot10 hp 0
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players set slot11 hp 0

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players set slot13 hp 0
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players set slot14 hp 0
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players set slot15 hp 0

scoreboard players set burn2 burn 1
scoreboard players set abilitynumber2 abilities 25
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp4