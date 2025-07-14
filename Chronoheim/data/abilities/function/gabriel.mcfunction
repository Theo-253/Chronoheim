execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run scoreboard players set abilityusep3 booleans 1
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Divine Retribution!"]
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Divine Retribution!"]

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = gabrielCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = gabrielCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = gabrielCD abilityStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = gabrielCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = gabrielCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = gabrielCD abilityStats
scoreboard players set burn burn2 1
scoreboard players set abilitynumber2 abilities 22

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run function ch:abilitygivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:22,max:22}}}}} run function ch:abilitygivetargetsp4