execute if score slot17isatk booleans matches 1.. at @e[name=slot17] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot18isatk booleans matches 1.. at @e[name=slot18] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot19isatk booleans matches 1.. at @e[name=slot19] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot21isatk booleans matches 1.. at @e[name=slot21] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score slot23isatk booleans matches 1.. at @e[name=slot23] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 200

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot17isatk booleans matches 1 run scoreboard players operation durationSlot17 wards = thornDuration abilityStats 
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot18isatk booleans matches 1 run scoreboard players operation durationSlot18 wards = thornDuration abilityStats 
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot19isatk booleans matches 1 run scoreboard players operation durationSlot19 wards = thornDuration abilityStats 
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot17isatk booleans matches 1 run scoreboard players set ward slot17 3 
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot18isatk booleans matches 1 run scoreboard players set ward slot18 3 
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot19isatk booleans matches 1 run scoreboard players set ward slot19 3 
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Crown of Thorns!"]
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = thornCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = thornCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = thornCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot18isatk booleans matches 0 run function ch:turnend
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot18isatk booleans matches 1 run function ch:basicattackstartp5
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run effect clear @a[tag=p5] fire_resistance

## P2
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot21isatk booleans matches 1 run scoreboard players operation durationSlot17 wards = thornDuration abilityStats 
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot23isatk booleans matches 1 run scoreboard players operation durationSlot18 wards = thornDuration abilityStats 
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot23isatk booleans matches 1 run scoreboard players operation durationSlot19 wards = thornDuration abilityStats 
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot21isatk booleans matches 1 run scoreboard players set ward slot21 3 
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot23isatk booleans matches 1 run scoreboard players set ward slot23 3 
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot23isatk booleans matches 1 run scoreboard players set ward slot23 3 
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Crown of Thorns!"]
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = thornCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = thornCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = thornCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run scoreboard players set abilityusep6 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot23isatk booleans matches 0 run function ch:turnend
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} if score slot23isatk booleans matches 1 run function ch:basicattackstartp6
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:6,max:6}}}}} run effect clear @a[tag=p6] fire_resistance




scoreboard players set burn3 burn 1
