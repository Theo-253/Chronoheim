scoreboard players set burn2 burn 1
scoreboard players set abilitynumber2 abilities 28

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep3 booleans 1

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used The Bell Tolls!"]
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used The Bell Tolls!"]

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot9isatk booleans matches 1.. run scoreboard players operation cooldown slot9 = eidolonCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot10isatk booleans matches 1.. run scoreboard players operation cooldown slot10 = eidolonCD abilityStats
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot11isatk booleans matches 1.. run scoreboard players operation cooldown slot11 = eidolonCD abilityStats







execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run scoreboard players set abilityusep4 booleans 1

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot13isatk booleans matches 1.. run scoreboard players operation cooldown slot13 = eidolonCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot14isatk booleans matches 1.. run scoreboard players operation cooldown slot14 = eidolonCD abilityStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run execute if score slot15isatk booleans matches 1.. run scoreboard players operation cooldown slot15 = eidolonCD abilityStats

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function chtoo:abilitygivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run function chtoo:abilitygivetargetsp4

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:fire_resistance":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=game2] fire_resistance