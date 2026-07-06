execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run scoreboard players set abilityusep5 booleans 1
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run scoreboard players set abilityusep6 booleans 1

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot17isatk booleans matches 1.. run scoreboard players operation cooldown slot17 = barleyCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot18isatk booleans matches 1.. run scoreboard players operation cooldown slot18 = barleyCD abilityStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot19isatk booleans matches 1.. run scoreboard players operation cooldown slot19 = barleyCD abilityStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot21isatk booleans matches 1.. run scoreboard players operation cooldown slot21 = barleyCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot22isatk booleans matches 1.. run scoreboard players operation cooldown slot22 = barleyCD abilityStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run execute if score slot23isatk booleans matches 1.. run scoreboard players operation cooldown slot23 = barleyCD abilityStats
scoreboard players set burn3 burn 1
scoreboard players set abilitynumber3 abilities 36
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run function chthree:abilitygivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:36,max:36}}}}} run function chthree:abilitygivetargetsp5reverse
