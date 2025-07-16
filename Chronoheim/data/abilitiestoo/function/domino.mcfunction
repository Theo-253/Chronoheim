execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run scoreboard players set abilityusep3 booleans 1
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = dominoCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = dominoCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = dominoCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = dominoCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = dominoCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = dominoCD abilityStats

scoreboard players set burn2 burn 1
scoreboard players set abilitynumber2 abilities 30

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run function chtoo:abilitygivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:30,max:30}}}}} run function chtoo:abilitygivetargetsp4