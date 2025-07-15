execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," Used Mutate!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," Used Mutate!"]

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = subjectCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = subjectLeaderCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = subjectCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = subjectCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = subjectLeaderCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = subjectCD abilityStats

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot17isatk booleans matches 1 run scoreboard players operation slot17 hp += subject abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp += subject abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot19isatk booleans matches 1 run scoreboard players operation slot19 hp += subject abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp += subject abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += subject abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += subject abilityStats

execute if score slot17isatk booleans matches 1.. at @e[name=slot17] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot18isatk booleans matches 1.. at @e[name=slot18] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot19isatk booleans matches 1.. at @e[name=slot19] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot21isatk booleans matches 1.. at @e[name=slot21] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:item_slime ~ ~1 ~ 0.9 0.9 0.9 0.5 200

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run function ch:turnend
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=game2] fire_resistance
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run function ch:turnend
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=game2] fire_resistance
scoreboard players set burn3 burn 1