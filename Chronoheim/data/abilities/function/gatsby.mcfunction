execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = gatsbyCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = gatsbyCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = gatsbyCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = gatsbyCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = gatsbyCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = gatsbyCD abilityStats
scoreboard players set burn burn3 1
scoreboard players set abilitynumber3 abilities 23

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run function ch:abilitygivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:23,max:23}}}}} run function ch:abilitygivetargetsp6