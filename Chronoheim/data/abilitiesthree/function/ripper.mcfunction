execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = ripperCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = ripperCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = ripperCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = ripperCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = ripperCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = ripperCD abilityStats
scoreboard players set burn3 burn 1
scoreboard players set abilitynumber3 abilities 29

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run function chthree:abilitygivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:29,max:29}}}}} run function chthree:abilitygivetargetsp6