execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = boomerCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = boomerCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = boomerCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = boomerCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = boomerCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = boomerCD abilityStats

execute if score slot17isatk booleans matches 1.. at @e[name=slot17] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot18isatk booleans matches 1.. at @e[name=slot18] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot19isatk booleans matches 1.. at @e[name=slot19] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot21isatk booleans matches 1.. at @e[name=slot21] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 400

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players set slot17 hp 0
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players set slot18 hp 0
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players set slot19 hp 0

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players set slot21 hp 0
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players set slot23 hp 0
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players set slot23 hp 0

scoreboard players set burn3 burn 1
scoreboard players set abilitynumber3 abilities 25
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:25,max:25}}}}} run function ch:abilitygivetargetsp6