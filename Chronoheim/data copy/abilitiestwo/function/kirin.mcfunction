execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run scoreboard players set abilityusep3 booleans 1
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = kirinCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = kirinCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = kirinCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = kirinCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = kirinCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = kirinCD abilityStats
scoreboard players set burn2 burn 1
scoreboard players set abilitynumber2 abilities 8

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run function ch:abilitygivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:8,max:8}}}}} run function ch:abilitygivetargetsp3reverse